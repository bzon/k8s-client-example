FROM alpine

COPY ./k8s-client-example /k8s-client-example

RUN chmod +x /k8s-client-example

ENTRYPOINT /k8s-client-example
