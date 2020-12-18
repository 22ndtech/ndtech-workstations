# Install kubectl configuration file
mkdir ~/.kube
cp -r /openssl-certs/* ~/.kube/
chmod 711 /root/.kube/config

git config --global user.name "$GIT_USER_NAME"
git config --global user.email "$GIT_USER_EMAIL"


if [ ! -z "$GIT_REPOSITORY_NAME" ]
then
  if [ ! -z "$GITHUB_ORGANIZATION" ]
  then
    if [ ! -d "/work/$GITHUB_ORGANIZATION" ]
    then
      echo folder "/work/${GITHUB_ORGANIZATION} doesn't exists... creating"
      mkdir /work/$GITHUB_ORGANIZATION
    fi
    cd /work/$GITHUB_ORGANIZATION
  fi

  if [ ! -d "./$GIT_REPOSITORY_NAME" ]
  then
    echo "folder ./${GIT_REPOSITORY_NAME} does not exist cloning"
    REPOSITORY_URL="https://${GITHUB_USER}:${GITHUB_TOKEN}@github.com/${GITHUB_ORGANIZATION}/${GIT_REPOSITORY_NAME}.git"
    git clone ${REPOSITORY_URL}
  fi

  cd ./$GIT_REPOSITORY_NAME

fi

code --user-data-dir "/vscode-user-data" .
code_pids=$(pidof code)
array_of_code_pids=($code_pids)

min=${array_of_code_pids[0]}
max=${array_of_code_pids[0]}

for i in ${array_of_code_pids[*]}; do

  # Update max if applicable
  if [[ "$i" -gt "$max" ]]; then
    max="$i"
  fi

  # Update min if applicable
  if [[ "$i" -lt "$min" ]]; then
    min="$i"
  fi
done

 while ps -p $min > /dev/null
 do
    sleep 5
 done
