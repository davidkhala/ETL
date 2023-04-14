initSilently() {
  # see by `$ dbt init -h`
  local projectName=$1
  dbt init $projectName --skip-profile-setup
  
}
$@
