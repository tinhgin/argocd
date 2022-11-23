FROM alpine:3.17.0

ARG VERSION=v2.5.2
RUN apk add --no-cache curl &&  \
    curl -sSL -o argocd-linux-amd64 https://github.com/argoproj/argo-cd/releases/download/$VERSION/argocd-linux-amd64 &&  \
    install -m 555 argocd-linux-amd64 /usr/local/bin/argocd &&  \
    rm argocd-linux-amd64

#ENTRYPOINT ["argocd"]
