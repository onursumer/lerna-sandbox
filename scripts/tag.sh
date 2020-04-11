LAST_PUBLISH_TAG=$(git describe --tags --match "lerna@postpublish*" --abbrev=0);
LAST_TAG_VERSION=${LAST_PUBLISH_TAG##*.};
NEW_TAG_VERSION=$((LAST_TAG_VERSION + 1));
NEW_TAG="${LAST_PUBLISH_TAG%.*}.${NEW_TAG_VERSION}";

# git tag -a $NEW_TAG -m "auto generated post lerna publish";
