# Use the Ubuntu base image
FROM ubuntu

# Set the working directory inside the container
WORKDIR /app

# Copy a script.sh file to the container
COPY script.sh .

# Make the script.sh executable
RUN chmod +x script.sh

# Run the script.sh when the container starts
CMD [ "./script.sh" ]