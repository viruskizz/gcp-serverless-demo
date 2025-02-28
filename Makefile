NAME=gcp-serverless-demo
BACKEND_SERVICE=expressjs
REGION=asia-southeast1
$(NAME): all

all: deploy-backend

deploy-backend:
	gcloud run deploy ${BACKEND_SERVICE} --source ${BACKEND_SERVICE} --region ${REGION}