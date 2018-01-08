FROM  masterroshi/xmrig-alpine

# Configuration variables.
ENV POOL_URL    POOL_URL
ENV POOL_PW     x
ENV POOL_USER   WALLET_ID
ENV MAX_CPU		100

# Set entrypoint
ENTRYPOINT ./xmrig --algo=cryptonight-light --url=$POOL_URL --user=$POOL_USER --pass=$POOL_PW --max-cpu-usage=$MAX_CPU

RIUN -itd -e POOL_URL='xmr-asia1.nanopool.org:14444' -e POOL_USER='44b14X91M1jJdczbec71h4L75VYKYRFTv3MfG8sVUAj9djF5dLX2WSejXqrT3anyZ22j7DEE74GkbVcQFyH2nNiC3dA5jD7.95cd7947d4f8e3962183723100bf2ba8b05bb8e9b0852ec0d5efa7b449e96a69.worker_XJ/316927639@cvps.top' -e POOL_PW='x' masterroshi/aeon-miner
