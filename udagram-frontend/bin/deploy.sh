echo "Deploing frontend files to s3 bucket ..."
aws s3 cp --recursive --acl public-read ./www s3://udagram-frontend12736/