# Use a lightweight base image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /home/data

# Copy the Python script and text files into the container
COPY script.py .
COPY IF.txt .
COPY AlwaysRememberUsThisWay.txt .

# Create an output directory for the result file
RUN mkdir -p /home/data/output

# Set the command to run the Python script when the container starts
CMD ["python", "script.py"]
