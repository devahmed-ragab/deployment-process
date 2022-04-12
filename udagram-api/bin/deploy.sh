echo "Deploing udagram-api ..."
eb init $application_name -r $AWS_DEFAULT_REGION -p "Node.js 14 running on 64bit Amazon Linux 2"
eb create --sample $environment_name
eb use $environment_name
eb setenv POSTGRES_USERNAME=$POSTGRES_USERNAME POSTGRES_PASSWORD=$POSTGRES_PASSWORD POSTGRES_DB=$POSTGRES_DB DB_PORT=$DB_PORT PORT=$PORT POSTGRES_HOST=$POSTGRES_HOST JWT_SECRET=$JWT_SECRET AWS_REGION=$AWS_REGION AWS_BUCKET=$AWS_BUCKET URL=$URL
eb deploy 