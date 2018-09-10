FROM fsharp:netcore

RUN apt-get update \ 
  && apt-get install wget unzip

RUN mkdir /usr/local/bin/fake \
    && cd /usr/local/bin/fake \
    && wget -q -O ./fake.zip 'https://github.com/fsharp/FAKE/releases/download/5.6.1/fake-dotnetcore-linux-x64.zip' \
    && unzip ./fake.zip \
    && chmod +x /usr/local/bin/fake/fake

#ENTRYPOINT ["/usr/local/bin/fake/fake", "run"]
