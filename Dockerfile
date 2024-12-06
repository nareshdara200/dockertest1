FROM nginx:latest
LABEL "OWNER"="nareshdara200@gmail.com" "BATCH"="B55"
RUN apt update && apt install -y curl unzip jq
ENV AWS_ACCESS_KEY="awsaccesskey"
ENV AWS_SECRET_KEY="awssecretkey"
ENV AWS_REGION="ap-south-1"
COPY index.html /usr/share/nginx/html/
COPY scorekeeper.js /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/
//COPY error.html /usr/share/nginx/html/
//COPY ngnix_default.config /etc/nginx/sites-enabled/default
CMD ["nginx", "-g", "daemon off;"]
