module Types
    (
        Slot,
        Epoch,
        Gwei,
        Bytes32,
        BLSPubkey
    ) where

import qualified Data.ByteString

type Slot = Int
type Epoch = Int
type CommitteeIndex = Int
type ValidatorIndex = Int
type Gwei = Int
type Bytes32 = Data.ByteString.ByteString
type BLSPubkey = Data.ByteString.ByteString
