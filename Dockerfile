# Use the official Python image as a base image
FROM python:3.9

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port the bot runs on
EXPOSE 8080

# Define environment variable(s)
ENV TOKEN $TOKEN
ENV GUILD_ID $GUILD_ID
ENV SHEET_ID $SHEET_ID
ENV REPLY_SHEET $REPLY_SHEET
ENV APIKEY $APIKEY

# Run the bot
CMD ["python", "bot.py"]
