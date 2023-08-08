FROM ubuntu:latest

RUN apt update

RUN apt install -y python3 python3-pip
RUN python3 -m pip install --user --upgrade pip

RUN pip3 install --user mkdocs
RUN pip3 install --user mkdocs-material

EXPOSE 8000

WORKDIR /opt/universi-doc

COPY . /opt/universi-doc

ENTRYPOINT ["python3", "-m", "mkdocs", "serve", "--dev-addr=0.0.0.0:8000"]