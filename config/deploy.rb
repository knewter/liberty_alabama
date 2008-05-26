default_run_options[:pty] = true

set :application, "liberty_alabama"
set :repository,  "git://github.com/knewter/liberty_alabama.git"

set :deploy_to, "/home/deploy/#{application}"
set :user, "deploy"

set :scm, :git

role :app, "209.20.72.204"
role :web, "209.20.72.204"
role :db,  "209.20.72.204", :primary => true

namespace :deploy do
  task :restart do
    slicehost:apache_reload
  end
end

namespace :slicehost do
  desc "Setup Environment"
  task :setup_env do
    update_apt_get
    install_dev_tools
    install_git
    install_rails_stack
    install_apache
    install_passenger
    config_passenger
    config_vhost
  end
  
  desc "Update apt-get sources"
  task :update_apt_get do
    sudo "apt-get update"
  end
  
  desc "Install Development Tools"
  task :install_dev_tools do
    sudo "apt-get install build-essential -y"
  end
  
  desc "Install Git"
  task :install_git do
    sudo "apt-get install git-core git-svn -y"
  end
  
  desc "Install Subversion"
  task :install_subversion do
    sudo "apt-get install subversion -y"
  end
  
  desc "Install MySQL"
  task :install_mysql do
    sudo "apt-get install mysql-server libmysql-ruby -y"
  end
  
  desc "Install PostgreSQL"
  task :install_postgres do
    sudo "apt-get install postgresql libpgsql-ruby -y"
  end
  
  desc "Install SQLite3"
  task :install_sqlite3 do
    sudo "apt-get install sqlite3 libsqlite3-ruby -y"
  end
  
  desc "Install Ruby, Gems, and Rails"
  task :install_rails_stack do
    [
      "sudo apt-get install ruby ruby1.8-dev irb ri rdoc libopenssl-ruby1.8 -y",
      "mkdir -p src",
      "cd src",
      "wget http://rubyforge.org/frs/download.php/29548/rubygems-1.0.1.tgz",
      "tar xvzf rubygems-1.0.1.tgz",
      "cd rubygems-1.0.1/ && sudo ruby setup.rb",
      "sudo ln -s /usr/bin/gem1.8 /usr/bin/gem",
      "sudo gem install rails --no-ri --no-rdoc"
    ].each {|cmd| run cmd}
  end
  
  desc "Install Apache"
  task :install_apache do
    sudo "apt-get install apache2 apache2.2-common apache2-mpm-prefork 
          apache2-utils libexpat1 apache2-prefork-dev libapr1-dev -y"
    sudo "chown :sudo /var/www"
    sudo "chmod g+w /var/www"
  end
  
  desc "Install Passenger"
  task :install_passenger do
    run "sudo gem install passenger --no-ri --no-rdoc"
    input = ''
    run "sudo passenger-install-apache2-module" do |ch,stream,out|
      next if out.chomp == input.chomp || out.chomp == ''
      print out
      ch.send_data(input = $stdin.gets) if out =~ /(Enter|ENTER)/
    end
  end
  
  desc "Configure Passenger"
  task :config_passenger do
    passenger_config =<<-EOF
LoadModule passenger_module /usr/lib/ruby/gems/1.8/gems/passenger-1.0.5/ext/apache2/mod_passenger.so
RailsSpawnServer /usr/lib/ruby/gems/1.8/gems/passenger-1.0.5/bin/passenger-spawn-server
RailsRuby /usr/bin/ruby1.8    
    EOF
    put passenger_config, "src/passenger"
    sudo "mv src/passenger /etc/apache2/conf.d/passenger"
  end
  
  desc "Configure VHost"
  task :config_vhost do
    vhost_config =<<-EOF
<VirtualHost *:80>
  ServerName libertyalabama.com
  ServerAlias www.libertyalabama.com
  DocumentRoot #{deploy_to}/current/public
</VirtualHost>
    EOF
    put vhost_config, "src/vhost_config"
    sudo "mv src/vhost_config /etc/apache2/sites-available/#{application}"
    sudo "a2ensite #{application}"
  end
  
  desc "Reload Apache"
  task :apache_reload do
    sudo "/etc/init.d/apache2 reload"
  end

  desc "install rmagick"
  task :install_rmagick do
    sudo "apt-get install libmagick9-dev -y"
    sudo "gem install rmagick"
  end

  desc "install mysql source"
  task :install_mysql_source do
    sudo "apt-get install libmysql-ruby libmysqlclient-dev -y"
  end

  desc "install required gems"
  task :install_required_gems do
    gems = %w(
      hpricot
      mime-types    
      htmlentities
      RedCloth
      mysql
    )
    sudo "gem install #{gems.join(" ")}"
  end

  desc "git pull"
  task :git_pull do
    run "cd #{deploy_to}/current; git pull origin master"
  end
end

desc "symlink database.yml"
task :symlink_database_yml do
  run "ln -s #{deploy_to}/current/config/database.yml.production #{deploy_to}/current/config/database.yml"
end

desc "update git submodules"
task :update_submodules do
  run "cd #{deploy_to}/current; git submodule init; git submodule update;"
end

desc "Symlink asset files"
task :symlink_asset_files do
  %w(
    photos
    homepage_features
    assets
  ).each{|dir| run "ln -s #{deploy_to}/shared/#{dir} #{deploy_to}/current/public/" }
end

task :after_deploy do
  update_submodules
  symlink_database_yml
  symlink_asset_files
end
