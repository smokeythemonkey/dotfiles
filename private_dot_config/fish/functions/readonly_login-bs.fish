function login-bs --description="Calls get-codeartifact-token and setup-internal-pypi"
    login-aws

    if not get-codeartifact-token
        echo Failed to retrieve new token, exiting...
        return 1
    end

    setup-internal-npm

    echo Brainsuite internal-packages have been setup
end
