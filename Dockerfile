# Pull base image
FROM python:3.8

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set work directory
WORKDIR /code/BookStore

# Install dependencies
COPY requirements.txt /code/BookStore/
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Copy project
COPY . /code/BookStore/

# Expose port 8000
EXPOSE 8000

# Command to run the application
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
