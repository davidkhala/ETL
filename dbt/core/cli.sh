set -e
initSilently() {
  # see by `$ dbt init -h`
  local projectName=$1
  dbt init $projectName --skip-profile-setup
  echo ./${projectName}/
}
initBQ() {

  if [ ! -f dbt_project.yml ]; then
    echo we assume we are in project root, but no dbt_project.yml found
    exit 1
  fi

  curl -o profile_template.yml https://raw.githubusercontent.com/davidkhala/ETL/main/dbt/core/profile_template/gcp-data-davidkhala.yml
  dbt init
}
$@
