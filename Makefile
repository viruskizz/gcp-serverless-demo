NAME=gcp-serverless-demo
BACKEND_SERVICE=expressjs
FRONTEND_SERVICE=nextjs
REGION=asia-southeast1

$(NAME): all

all: deploy-frontend deploy-backend

deploy-frontend:
	gcloud run deploy ${FRONTEND_SERVICE} \
		--source ${FRONTEND_SERVICE} \
		--region ${REGION} \
		--no-allow-unauthenticated

deploy-backend:
	gcloud run deploy ${BACKEND_SERVICE} \
		--source ${BACKEND_SERVICE} \
		--region ${REGION} \
		--no-allow-unauthenticated

