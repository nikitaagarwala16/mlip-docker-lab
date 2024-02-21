FROM python:3.11.7

# TODO [1]: Set WORKDIR to /app
WORKDIR /app

# TODO [2.1]: Copy the requirements.txt file to the WORKDIR
COPY requirements.txt /app/

# TODO [2.2]: Install the requirements
RUN pip3 install -r requirements.txt

# TODO [3]: Copy the server to the WORKDIR
COPY . /app/

# TODO [4]: Set the command to run the app
CMD ["python3", "server.py"]