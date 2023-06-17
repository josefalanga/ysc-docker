FROM ubuntu:latest

RUN apt update

RUN apt install -y git libc6 libgcc1 libgcc-s1 libgssapi-krb5-2 libicu liblttng-ust1 libssl1.0.0 libssl1.1 libssl3 libstdc++6 libunwind8 zlib1g

RUN wget https://dotnet.microsoft.com/download/dotnet/scripts/v1/dotnet-install.sh && chmod +x dotnet-install.sh && ./dotnet-install.sh

RUN git clone git@github.com:YarnSpinnerTool/YarnSpinner-Console.git

RUN ./dotnet/dotnet --version