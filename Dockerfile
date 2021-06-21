
from nginx:1.21.0

COPY data/index.html /usr/share/nginx/html/index.html
# COPY docker-entrypoint.sh /

# ENTRYPOINT ["/docker-entrypoint.sh"]

EXPOSE 80

STOPSIGNAL SIGQUIT

CMD ["nginx", "-g", "daemon off;"]
