FROM mcr.microsoft.com/dotnet/sdk
 
RUN apt-get update \
 && apt-get install -y openvpn \
 && rm -rf /var/lib/apt/lists/*
 
COPY ./vpn /etc/openvpn
 
WORKDIR /app
COPY ./ .
COPY ./startup.sh .
 
CMD sh ./startup.sh
