ENV=$1
KS_COMPONENT=$2
IMAGE_NAME=$3
CONFIG_ORG=$4
CONFIG_REPO=$5
COMMIT=$6
git config --global user.email "ci@ci.com"
git config --global user.name "CI System"
git remote set-url origin git@github.com:$CONFIG_ORG/$CONFIG_REPO
ks param set $KS_COMPONENT image $IMAGE_NAME:$COMMIT --env $ENV
git commit -am "update image for $ENV for app commit $COMMIT"
git push
