FROM public.ecr.aws/lambda/python:3.7
COPY . ${LAMBDA_TASK_ROOT}
RUN echo ${LAMBDA_TASK_ROOT}
RUN ls -lsa ${LAMBDA_TASK_ROOT}

COPY requirements.txt  .
RUN  pip3 install -r requirements.txt --target "${LAMBDA_TASK_ROOT}"

CMD ["app.handler"]