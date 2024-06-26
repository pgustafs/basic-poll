FROM registry.access.redhat.com/ubi9/ubi-minimal
LABEL io.openshift.tags django,basic-poll
LABEL io.k8s.description Django Basic Poll application

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN microdnf -y install python3 \
&& microdnf -y install python3-pip \
&& microdnf clean all

WORKDIR /opt/app-root/src 

COPY . .

RUN pip3 install --upgrade pip \
  && pip3 install -r requirements.txt \
  && pip3 cache purge \
  && chmod +x start-server.sh

# This is primarily a reminder that we need access to port 8000
EXPOSE 8000

CMD ["gunicorn", "base.wsgi:application", "--bind", "0.0.0.0:8000"]
