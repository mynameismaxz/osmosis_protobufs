#!/bin/bash

PROTO_PATH=./protobuf
OUT_DIR=./src/proto

FILES=`find protobuf/osmosis -type f -name "*.proto"`

# when running files as the input, I was getting this error, so I instead created a for loop
# osmosis/gamm/v1beta1/tx.proto:9:9: "osmosis.gamm.v1beta1.Msg" is already defined in file "osmosis/gamm/pool-models/balancer/tx.proto".
# FILES=protobuf/osmosis/gamm/v1beta1/tx.proto

mkdir -p ${OUT_DIR}


# --ts_proto_opt="esModuleInterop=true,forceLong=long,useOptionals=true,outputTypeRegistry=true,outputSchema=true" \

for x in ${FILES}
do
protoc \
    --plugin="./node_modules/.bin/protoc-gen-ts_proto" \
    --ts_proto_out="${OUT_DIR}" \
    --proto_path="${PROTO_PATH}" \
    --ts_proto_opt="esModuleInterop=true,forceLong=long,useOptionals=true" \
    ${x}    
done
