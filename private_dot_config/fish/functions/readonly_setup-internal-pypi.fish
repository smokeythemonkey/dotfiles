function setup-internal-pypi --description="Setup Python tools with new Codeartifact auth token"
    set -e PIP_EXTRA_INDEX_URL
    set -e TWINE_PASSWORD
    set -e TWINE_REPOSITORY_URL
    set -e TWINE_REPOSITORY_URL
    set -e INDEX_PASSWORD
    set -e UV_EXTRA_INDEX_URL
    set -e UV_INDEX

    set -Ux INDEX_USERNAME aws
    set -Ux INDEX_PASSWORD $CODEARTIFACT_AUTH_TOKEN

    set -Ux UV_INDEX "https://aws:$CODEARTIFACT_AUTH_TOKEN@aimpower-345335739971.d.codeartifact.eu-central-1.amazonaws.com/pypi/internal-packages/simple/"
    set -Ux UV_DEFAULT_INDEX "https://pypi.org/simple"
    set -Ux UV_NATIVE_TLS true

    echo Successfully setup aimpower internal-packages pypi index and repo
end
