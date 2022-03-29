# protobufs

Typescript Protobuf Messages for Osmosis

# usage

```
npm install @pyramation/osmosis-protobufs
```

## Example

```
import { MsgJoinPool } from '@pyramation/osmosis-protobufs';
const msg = MsgJoinPool.fromPartial({
  poolId: '606',
  sender: 'osmo1f4vxvvvvvvvvvv3luuddddddddddcccccccccc',
  shareOutAmount: '101010101',
  tokenInMaxs: [
    coin(
      10248,
      'ibc/27394FB092D2ECCD56123C74F36E4C1F926001CEADA9CA97EA622B25F41E5EB2'
    ),
    coin(
      64837969,
      'ibc/B9E0A1A524E98BB407D3CED8720EFEFD186002F90C1B1B7964811DD0CCC12228'
    )
  ]
});
```

## API

Current exports the following messages:

- `MsgExitPool`
- `MsgExitPoolResponse`
- `MsgExitSwapExternAmountOut`
- `MsgExitSwapExternAmountOutResponse`
- `MsgExitSwapShareAmountIn`
- `MsgExitSwapShareAmountInResponse`
- `MsgJoinPool`
- `MsgJoinPoolResponse`
- `MsgJoinSwapExternAmountIn`
- `MsgJoinSwapExternAmountInResponse`
- `MsgJoinSwapShareAmountOut`
- `MsgJoinSwapShareAmountOutResponse`
- `MsgSwapExactAmountIn`
- `MsgSwapExactAmountInResponse`
- `MsgSwapExactAmountOut`
- `MsgSwapExactAmountOutResponse`
- `SwapAmountInRoute`
- `SwapAmountOutRoute`

# building

```
./bin/run-proto.sh
```

## mac

http://google.github.io/proto-lens/installing-protoc.html

```
brew install protobuf
```

## protobufs

To get the build to work, you have to properly point to the protobuf files, including the ones included by osmosis, cosmos SDK, etc. 

To make this self-contained (for now), I've gone ahead and loaded all the protobufs locally into the `./protobuf` folder. 

### manually installing protobufs

```
go get -u github.com/gogo/protobuf
```

### protobufs from other repos

We quite the gogo protobuf here since the one referenced seems to not exist in google's repo

```
git@github.com:regen-network/protobuf.git
```
