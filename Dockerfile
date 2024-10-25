#Used official python image from the docker hub
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the current wording directory contents into the the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# Make port 5000 available to the world outside this container
EXPOSE 5000

# RUN app.py when the container launches
CMD ['python',"app.py"]