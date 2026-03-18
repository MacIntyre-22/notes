FROM python:3.12-alpine
RUN pip install mkdocs-material
WORKDIR /docs
COPY . .
RUN mkdocs build
FROM nginx:alpine
COPY --from=builder /docs/site /usr/share/nginx/html