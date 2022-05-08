FROM harbor.silvenia.eu/dockerhub/alpine/helm:3.8.2

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]