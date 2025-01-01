function login-aws --description="Logs into all aws profiles"
    aws sso logout
    aws sso login --profile default

    echo Logged into all profiles
end
