FROM ubuntu:kinetic

RUN apt update

RUN sudo apt-get install -y dotnet-sdk-7.0 git

RUN git clone git@github.com:YarnSpinnerTool/YarnSpinner-Console.git

RUN ./dotnet/dotnet --version