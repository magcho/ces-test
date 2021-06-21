FROM NGINX:1.21.0
COPY data/index.html /usr/share/nginx/index.html
COPY ./docker-entrypoint.sh /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]

EXPOSE 80

STOPSIGNAL SIGQUIT

CMD ["nginx", "-g", "daemon off;"]
