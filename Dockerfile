FROM ubuntu:kinetic

RUN apt-get update

RUN apt-get install -y dotnet-sdk-7.0 git

RUN git clone https://github.com/YarnSpinnerTool/YarnSpinner-Console.git

RUN dotnet --version