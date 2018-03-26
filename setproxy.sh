#/bin/bash
#PROXY and CORPORATE_NETWORK are environment variables set in my bashrc
ssid=$(iwgetid -r)
if [[ "$ssid" == "$CORPORATE_NETWORK" ]];
then
    export http_proxy="$PROXY"
    export https_proxy="$PROXY"
    export ftp_proxy="$PROXY"
    echo "Proxy set!!"
else
    if [[ "$http_proxy" ]];
    then 
        unset http_proxy;
    fi
    if [[ "$https_proxy" ]];
    then 
        unset https_proxy;
    fi
    if [[ "$ftp_proxy" ]];
    then 
        unset ftp_proxy;
    fi
    echo "No proxy set!!";
fi
