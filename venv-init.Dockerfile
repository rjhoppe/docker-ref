FROM ubuntu:focal
# Below tells system to use UTF-8 mode (not always enabled by default)
ENV LANG=C.UTF-8

COPY requirements.txt requirements-dev.txt /app/ \

RUN : \
	&& python3 -m venv /app/.venv \
	&& /app/.venv/bin/pip install -r /app/requirements.txt \
	&& /app/.venv/bin/pip install -r /app/requirements-dev.txt \
	&& : 
