FROM ubuntu:kinetic

RUN apt-get update

RUN apt-get install -y dotnet-sdk-7.0 git tree

RUN git clone https://github.com/YarnSpinnerTool/YarnSpinner-Console.git /ysc-repo

WORKDIR /ysc-repo 

RUN git checkout $(git describe --tags $(git rev-list --tags --max-count=1))

RUN dotnet publish -c Release --self-contained true -p:PublishSingleFile=true -p:IncludeNativeLibrariesForSelfExtract=true -p:PublishTrimmed=True

RUN cp src/YarnSpinner.Console/bin/Release/netcoreapp6.0/linux-x64/publish/ysc /usr/local/bin/

RUN ysc --help