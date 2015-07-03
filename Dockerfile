FROM alpine
RUN apk update && apk add gcc git libffi-dev musl-dev openssl-dev py-pip python-dev
RUN pip install git+https://github.com/openstack/python-openstackclient.git
ENTRYPOINT ["openstack"]
