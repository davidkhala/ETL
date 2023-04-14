init(){
  local projectName=$1
  dbt init $projectName --no-input
}
$@
