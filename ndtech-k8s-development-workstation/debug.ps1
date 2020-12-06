docker run -it `
-e DISPLAY=${Env:ipv4}:0 `
-e GITHUB_USER=$ENV:GITHUB_USER `
-e GITHUB_TOKEN=$ENV:GITHUB_TOKEN `
-e GITHUB_ORGANIZATION="22ndtech" `
-e GIT_USER_NAME="$ENV:GIT_USER_NAME" `
-e GIT_USER_EMAIL="$ENV:GIT_USER_EMAIL" `
-e DIGITAL_OCEAN_INITIAL_TOKEN="$Env:DIGITAL_OCEAN_INITIAL_TOKEN" `
-v c:\data\cached-src:/work `
-v ${PWD}/scripts:/work/scripts `
-v ${Env:CERTS_PATH}:/openssl-certs:ro `
--rm --entrypoint /bin/bash 22ndtech/ndtech-k8s-development-workstation