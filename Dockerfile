FROM mcr.microsoft.com/mssql-tools

RUN apt-get update && apt-get install -y libicu55 unzip
ADD sqlpackage-linux.zip sqlpackage-linux.zip
RUN mkdir sqlpackage && unzip sqlpackage-linux.zip -d ./sqlpackage
RUN chmod a+x ./sqlpackage/sqlpackage