FROM python:3.9-alpine
COPY requirements.txt /
RUN pip install -r requirements.txt && echo "Install cz version $(cz version)"
CMD ["cz", "version"]
