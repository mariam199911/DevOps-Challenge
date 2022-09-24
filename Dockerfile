FROM python:3.9 
EXPOSE 8081
ADD hello.py .
CMD [“python”, “./hello.py”] 
