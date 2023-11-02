FROM ubuntu:focal
# Below tells system to use UTF-8 mode (not always enabled by default)
ENV LANG=C.UTF-8

RUN : \
	&& virtualenv /.venv -p python3 \
	&& .venv/bin/pip install -r requirements.txt \
	&& .venv/bin/pip install -r requirementsdev.txt \
	&& : 
