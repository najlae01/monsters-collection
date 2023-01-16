FROM ethereum/solc:0.7.3

WORKDIR /app
COPY . .

RUN solc --bin --abi --optimize -o build/ Aliens.sol