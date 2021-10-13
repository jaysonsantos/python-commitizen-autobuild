FROM python:3.10-alpine
COPY requirements.txt /
RUN apk add -U git openssh && pip install -r requirements.txt && echo "Install cz version $(cz version)"
CMD ["cz", "version"]
