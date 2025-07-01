FROM n8nio/n8n:latest
EXPOSE 5678
USER root
RUN apk add --no-cache tini
USER node
ENTRYPOINT ["tini", "--", "/docker-entrypoint.sh"]
CMD ["n8n"]
