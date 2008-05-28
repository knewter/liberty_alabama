function redirect_to_rollback_link(content_id, version_number){
  location.href='/wiki/' + content_id + '/rollback?version_number=' + version_number;
}
