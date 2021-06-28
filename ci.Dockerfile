FROM python:3.8

LABEL "author"="Zsolt Toth"
LABEL "description"="Docker file for running pipenv isntall and tests in Docker on GitHub"
LABEL "based_on"="https://pythonspeed.com/articles/pipenv-docker/"

WORKDIR /usr/src/app

COPY . .

RUN pip install pipenv
RUN pipenv lock --keep-outdated --requirements > requirements.txt
RUN pip install -r requirements.txt

# TODO: #3
RUN python -m unittest discover --start-directory tests/ --pattern "*.py"
#ENTRYPOINT [ "/bin/bash" ]
#CMD [ "python", "-m unittest", "--start-directory tests/", "--pattern \"*.py\"" ]




