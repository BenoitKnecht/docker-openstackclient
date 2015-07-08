FROM alpine
RUN apk --update add libffi openssl py-pip python

RUN apk add gcc git libffi-dev musl-dev openssl-dev python-dev
RUN pip install git+https://github.com/openstack/python-openstackclient.git
RUN apk del gcc git libffi-dev musl-dev openssl-dev python-dev

ENV OS_IDENTITY_API_VERSION=3

ENTRYPOINT ["openstack"]
