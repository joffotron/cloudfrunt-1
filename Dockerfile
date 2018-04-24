FROM python:2.7-alpine3.7

RUN apk --update add git
RUN pip install boto3 netaddr dnspython

RUN mkdir /cloudfrunt/
WORKDIR /cloudfrunt/
RUN git clone https://github.com/darkoperator/dnsrecon.git

COPY cloudfrunt.py /cloudfrunt/
ENTRYPOINT ["python", "cloudfrunt.py"] 
