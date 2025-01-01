function get-codeartifact-token --description="Get new Codeartifact token and configure PDM/Pipenv"
    set -e CODEARTIFACT_AUTH_TOKEN

    if not set -Ux CODEARTIFACT_AUTH_TOKEN (aws codeartifact get-authorization-token --profile brainsuite-prod --domain aimpower --domain-owner 345335739971 --query authorizationToken --output text)
        echo Could not retrieve token, probably not logged in or permissions issue
        return 1
    end

    echo Successfully retrieved new CODEARTIFACT_AUTH_TOKEN, token is valid for 8 hours
end
