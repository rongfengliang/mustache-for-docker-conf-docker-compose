FROM nginx:alpine
RUN apk add --no-cache wget bash && \
# install mustache as script
    wget -O /usr/bin/mo https://git.io/get-mo && \
    chmod a+x /usr/bin/mo && \
    apk del wget && \
    mkdir -p /app
COPY index.html.template /app/
COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]