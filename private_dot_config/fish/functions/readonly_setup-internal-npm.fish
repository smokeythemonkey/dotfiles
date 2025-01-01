function setup-internal-npm --description="Setup npm, with new Codeartifact auth token"
    set -Ux INTERNAL_REGISTRY_URL aimpower-345335739971.d.codeartifact.eu-central-1.amazonaws.com/npm/internal-packages/
    npm config set @aimpower:registry=https://$INTERNAL_REGISTRY_URL
    npm config set //$INTERNAL_REGISTRY_URL:_authToken=$CODEARTIFACT_AUTH_TOKEN
end
