FROM default-route-openshift-image-registry.apps-crc.testing/openvpn/aspnet:latest
 
RUN apt-get update \
 && apt-get install -y openvpn \
 && rm -rf /var/lib/apt/lists/*
 
COPY ./vpn /etc/openvpn
RUN chmod 777 /etc/openvpn
 
WORKDIR /app
COPY ./ .
COPY ./startup.sh .
 
CMD sh ./startup.sh
