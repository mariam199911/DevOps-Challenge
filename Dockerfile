FROM python
FROM redis

RUN pip install -r requirements.txt

EXPOSE 8081
ADD hello.py .
CMD [“export $(cat .env | xargs)“]
CMD [“python”, “./hello.py”] 
