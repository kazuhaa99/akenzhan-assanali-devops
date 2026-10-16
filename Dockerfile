FROM python:3.12-slim

WORKDIR /app

COPY app/ /app/
COPY Akenzhan_Assanali_info.txt /app/

RUN useradd -m appuser && chown -R appuser /app

USER appuser

ENV STUDENT_NAME=Assanali \
    STUDENT_SURNAME=Akenzhan \
    STUDENT_GROUP=IT2-2313 \
    STUDENT_ID=38330

EXPOSE 8080

CMD ["python", "-u", "app.py"]
