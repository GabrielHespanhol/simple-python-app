FROM python:3.13-slim

WORKDIR /app

COPY requirements.txt /app
COPY static/ /app/static
COPY templates/ /app/templates
COPY app.py /app
COPY Docker/entrypoint.sh /app

RUN pip install --no-cache-dir -r requirements.txt
RUN chmod +x entrypoint.sh && chown -R nobody:nogroup /app

USER nobody

EXPOSE 5000

ENV HOSTNAME="python-app"
ENV FLASK_DEBUG=0

ENTRYPOINT ["/app/entrypoint.sh"]