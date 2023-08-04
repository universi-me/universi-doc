FROM python:3

RUN pip install mkdocs
RUN pip install mkdocs-material

EXPOSE 8000

WORKDIR /opt/universi-doc

COPY . /opt/universi-doc

ENTRYPOINT ["mkdocs"]

CMD ["serve", "--dev-addr=0.0.0.0:8000"]