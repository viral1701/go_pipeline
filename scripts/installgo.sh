if [ ! -d "/etc/go" ]; then
    echo "Go Not Found In Path Downloading...."
    curl "https://dl.google.com/go/go1.11.1.linux-amd64.tar.gz" | tar xvz;
    sudo cp -R ./go /etc/;
    export PATH=$PATH:/etc/go/bin
    else
        echo "Adding Go Path"
        export PATH=$PATH:/etc/go/bin
fi