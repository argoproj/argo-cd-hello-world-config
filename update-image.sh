ENV=$1
KS_COMPONENT=$2
IMAGE_NAME=$3
COMMIT=$4
git config --global user.email "ci@ci.com"
git config --global user.name "CI System"
ks param set $KS_COMPONENT image $IMAGE_NAME:$COMMIT --env $ENV
git commit -am "update image for $ENV for app commit $COMMIT"
git push
