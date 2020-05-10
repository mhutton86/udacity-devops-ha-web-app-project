# Import shared environment variables.
. .env

# Empty the contents of an S3 bucket
echo "Emptying content from S3 bucket '${BUCKET_NAME}'"
aws s3 rm "s3://${BUCKET_NAME}" --recursive
