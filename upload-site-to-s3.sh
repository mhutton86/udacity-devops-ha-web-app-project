# Import shared environment variables.
. .env

# Parameters
TARGET_ZIP_PATH="site-files.zip"
TMP_ARCHIVE_FILE="$(mktemp -u -p /tmp --suffix=.zip file-XXXXXXXX)"

# Archive the site files into a temporary location
echo "Creating archive of site files at: ${TMP_ARCHIVE_FILE}"
pushd site-files
zip -r "${TMP_ARCHIVE_FILE}" ./*
popd

# Copy the site archive into S3
echo "Copying file '${TMP_ARCHIVE_FILE}' to S3 bucket location '${BUCKET_NAME}/${TARGET_ZIP_PATH}'"
aws s3 cp "${TMP_ARCHIVE_FILE}" "s3://${BUCKET_NAME}/${TARGET_ZIP_PATH}"
