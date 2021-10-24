FROM public.ecr.aws/lambda/python:3.7

COPY . /app
WORKDIR /app

RUN pip install -r requirements.txt

ENV FLASK_ENV production
EXPOSE 8080
ENTRYPOINT ["python"]
CMD ["app.py"]