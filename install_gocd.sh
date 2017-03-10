 docker pull gocd/gocd-server:16.9.0
      docker pull gocd/gocd-agent
      #https://hub.docker.com/r/microsoft/mssql-server-linux/
      #https://hub.docker.com/r/gocd/gocd-server/
      docker run --restart=always -v /etc/ssl/certs:/etc/ssl/certs:ro --name gocdserver -i -t -d -p 8153:8153 -p 8154:8154 gocd/gocd-server:16.9.0
      #admin password P@$$w0rd
      #docker exec -it gocdserver /bin/bash
      #cat /var/lib/go-server/db/config.git/cruise-config.xml
      docker exec gocdserver bash -c "echo 'admin:ayg7sGDCaUMtCKwztHozfApAA10=' > /gocd.pwd"
      docker exec gocdserver bash -c "git config --global http.sslverify false"

      #https://hub.docker.com/r/gocd/gocd-agent/
      docker run --restart=always --name gocd-agent1 -it -d -e GO_SERVER=192.168.33.10 gocd/gocd-agent
      docker run --restart=always --name gocd-agent2 -it -d -e GO_SERVER=192.168.33.10 gocd/gocd-agent
