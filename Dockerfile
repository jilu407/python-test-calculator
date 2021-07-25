FROM python:3.6-slim

MAINTAINER varunkumar032@gmail.com

COPY . /python-test-calculator

WORKDIR /python-test-calculator

RUN pip install --no-cache-dir -r requirements.txt

#CMD pytest  -v  --junitxml=reports/result.xml
RUN ["pytest", "-s", "-v", "--junitxml=reports/result.xml", || "true" ] && 

CMD tail -f /dev/null
