set -eo pipefail
ds-px-runtime() {
	# for private only, not for public images
	account=$1
	apikey=$2

	ACCESS_TOKEN=$(curl -s -X POST \
		--header "Content-Type: application/x-www-form-urlencoded" \
		--header "Accept: application/json" \
		--data-urlencode "grant_type=urn:ibm:params:oauth:grant-type:apikey" \
		--data-urlencode "apikey=$apikey" \
		"https://iam.cloud.ibm.com/identity/token" | jq -r '.access_token')
	result=$(curl -s -X GET \
		-H "accept: application/json" \
		-H "Account: $account" \
		-H "Authorization: Bearer $ACCESS_TOKEN" \
		--url "https://icr.io/api/v1/images?includeIBM=false&includePrivate=true&includeManifestLists=true&vulnerabilities=true&repository=ds-px-runtime")
	
	echo $result
	echo $result | jq '. |= sort_by(.Created) | .[length -1] | .RepoDigests[0]' | cut -d@ -f2 | tr -d '"'
}

$@
