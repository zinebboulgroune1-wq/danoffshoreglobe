FROM python:3.12-slim

WORKDIR /app
COPY . .

# Railway sets PORT automatically; default to 8080 for local runs.
ENV PORT=8080
EXPOSE 8080

CMD ["sh", "-c", "python -m http.server ${PORT} --bind 0.0.0.0"]
