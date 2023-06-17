FROM ubuntu:kinetic

RUN apt-get update

RUN apt-get install -y dotnet-sdk-7.0 git

RUN git clone https://github.com/YarnSpinnerTool/YarnSpinner-Console.git /ysc-repo

WORKDIR /ysc-repo 

RUN dotnet publish -c Release --self-contained true -p:PublishSingleFile=true -p:IncludeNativeLibrariesForSelfExtract=true -p:PublishTrimmed=True