FROM gitpod/workspace-full

RUN curl https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - && \
    sudo apt-get update && \
    sudo apt-get -y install libpulse0 build-essential libkrb5-dev gcc make && \
    sudo apt-get clean && \
    sudo apt-get -y autoremove && \
    sudo apt-get -y clean && \
    rm -rf /var/lib/apt/lists/*;

USER gitpod
