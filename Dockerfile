# pulls this version of python with slim(lightweight image(smaller size, faster download))
FROM python:3.10-slim 

# we set a directory inside the container there all future commands will run inside the /app
WORKDIR /app

# copy the requirement file form local machine to containers /app
COPY requirements.txt .

# installing all the python depenencies inside the requiremnt listed --> EXAMPLE : flask, requests, numpy
RUN pip install -r requirements.txt

# copy all the project file form local machine to the container /app
COPY . .

# run the pyhon app.py
CMD ["python","app.py"]
