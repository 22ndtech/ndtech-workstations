if [ ! -z "$GIT_REPOSITORY_NAME" ]
then
  git config --global user.name "$GIT_USER_NAME"
  git config --global user.email "$GIT_USER_EMAIL"

  if [ ! -z "$GITHUB_ORGANIZATION" ]
  then
    echo "github organization ${GITHUB_ORGANIZATION} exists"
    if [ ! -d "/work/$GITHUB_ORGANIZATION" ]
    then
      echo folder "/work/${GITHUB_ORGANIZATION} doesn't exists... creating"
      mkdir /work/$GITHUB_ORGANIZATION
    fi
    cd /work/$GITHUB_ORGANIZATION
  fi

  echo "in folder ${PWD}"
  ls
  if [ ! -d "./$GIT_REPOSITORY_NAME" ]
  then
    echo "folder ./${GIT_REPOSITORY_NAME} does not exist"
    REPOSITORY_URL="https://${GITHUB_USER}:${GITHUB_TOKEN}@github.com/${GITHUB_ORGANIZATION}/${GIT_REPOSITORY_NAME}.git"
    git clone ${REPOSITORY_URL}
  fi

  cd ./$GIT_REPOSITORY_NAME

fi