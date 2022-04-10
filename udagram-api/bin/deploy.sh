echo "Deploing udagram-api ..."
eb init udagram-api -r us-east-1 -p "Node.js 14 running on 64bit Amazon Linux 2"
eb create --sample udagram-api-env
eb use udagram-api-env
eb setenv  POSTGRES_USERNAME=postgres POSTGRES_PASSWORD=postgres POSTGRES_DB=udagram DB_PORT=5432 PORT=8080 POSTGRES_HOST=udagram.cwdvj1bzsca1.us-east-1.rds.amazonaws.com AWS_REGION=us-east-1f JWT_SECRET=ascvcjvdhbckcehbvhyfsscd URL=udagram.us-east-1.elasticbeanstalk.com
eb deploy 