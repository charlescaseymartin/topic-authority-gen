FROM --platform=linux/amd64 python:3.10-alpine
RUN apk add --no-cache --upgrade bash curl jq
WORKDIR /scraper
COPY . .
RUN pip install -r ./requirements.txt
CMD ["python", "./main.py", "-k", "./data/keywords"]
