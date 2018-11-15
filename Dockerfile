# Eve 

FROM python:3.7
ARG BUILD_DATE
ARG VCS_REF
ARG VERSION
LABEL org.label-schema.build-date=$BUILD_DATE \
    org.label-schema.name="Docker Eve" \
    org.label-schema.description="Docker image for Python Eve" \
    org.label-schema.url="https://github.com/alekspankov/docker-eve-python" \
    org.label-schema.vcs-ref=$VCS_REF \
    org.label-schema.vcs-url="https://github.com/alekspankov/docker-eve-python" \
    org.label-schema.vendor="Alexander Pankov" \
    org.label-schema.version=$VERSION \
    org.label-schema.schema-version="1.0"
LABEL maintainer="Alexander Pankov <ap@wdevs.ru>"

WORKDIR /usr/src/app
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY ./app/* ./

CMD ["python", "./app/app.py"]
