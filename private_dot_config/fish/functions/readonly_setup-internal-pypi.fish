function setup-internal-pypi --description="Setup Python tools with new Codeartifact auth token"
    set -e PIP_EXTRA_INDEX_URL
    set -e PDM_PUBLISH_PASSWORD
    set -e TWINE_PASSWORD
    set -e INDEX_PASSWORD

    set -Ux TWINE_REPOSITORY_URL "https://aimpower-345335739971.d.codeartifact.eu-central-1.amazonaws.com/pypi/internal-packages/"
    set -Ux TWINE_USERNAME aws
    set -Ux TWINE_PASSWORD $CODEARTIFACT_AUTH_TOKEN

    set -Ux INDEX_USERNAME aws
    set -Ux INDEX_PASSWORD $CODEARTIFACT_AUTH_TOKEN


    echo Successfully setup aimpower internal-packages pypi index and repo
end
