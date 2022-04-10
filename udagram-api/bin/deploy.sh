cd ./udagram-api/www || exit 
echo "Deploing udagram-api ..."
eb init udagram-api -r us-east-1 -p node.js
eb create --sample udagram-api-env
eb use udagram-api-env
eb setenv udagram-api-env POSTGRES_USERNAME=postgres POSTGRES_PASSWORD=postgres POSTGRES_DB=udagram DB_PORT=5432 PORT=8080 POSTGRES_HOST=udagram.cwdvj1bzsca1.us-east-1.rds.amazonaws.com AWS_REGION=us-east-1f JWT_SECRET=ascvcjvdhbckcehbvhyfsscd URL=udagram.us-east-1.elasticbeanstalk.com
eb deploy 