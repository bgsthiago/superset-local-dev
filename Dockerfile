FROM apache/superset

USER root
COPY requirements.txt .
RUN pip install -r requirements.txt
ADD https://databricks-bi-artifacts.s3.us-east-2.amazonaws.com/simbaspark-drivers/odbc/2.6.22/SimbaSparkODBC-2.6.22.1037-Debian-64bit.zip .
RUN unzip SimbaSparkODBC-2.6.22.1037-Debian-64bit.zip
RUN ls
RUN apt install -f ./simbaspark_2.6.22.1037-2_amd64.deb 