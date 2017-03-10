  
  
      sudo apt-get install -y golang -y --allow-unauthenticated
      sudo apt-get install make -y --allow-unauthenticated
      echo "export GOPATH=/usr/local/go" >> /etc/environment
      echo "export PATH=$PATH:/usr/local/go/bin" >> /etc/environment
      source /etc/environment
      go get github.com/cfpb/rhobot
