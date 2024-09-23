# Use an official Python runtime as a parent image 

FROM python:3.8-slim 

  

# Set environment variables 

ENV PYTHONDONTWRITEBYTECODE 1 

ENV PYTHONUNBUFFERED 1 

  

# Set work directory 

WORKDIR /app 

  

# Install dependencies 

COPY requirements.txt /app/ 

RUN pip install --no-cache-dir -r requirements.txt 

  

# Copy the Django project 

COPY . /app/ 

  

# Run the application 

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"] 