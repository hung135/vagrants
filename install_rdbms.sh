#this will be last and most of the time we won't need and requires 4gb of ram to run
      docker run  --restart=always --name postgres -e POSTGRES_PASSWORD=ubuntu -p 5432:5432 -d postgres:latest   
      #docker run --restart=always --name mssql -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD=ubuntu' -p 1433:1433 -d microsoft/mssql-server-linux
      #docker pull microsoft/mssql-server-linu
