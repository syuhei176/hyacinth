module Validator
    (
      isActiveValidator,
      Validator(..)
    ) where

import qualified Types

data Validator = Validator {
  pubkey::Types.BLSPubkey,
  withdrawalCredentials::Types.Bytes32,
  effectiveBalance::Types.Gwei,
  slashed::Bool,
  activationEligibilityEpoch::Types.Epoch,
  activationEpoch::Types.Epoch,
  exitEpoch::Types.Epoch,
  withdrawableEpoch::Types.Epoch
}

isActiveValidator :: Validator -> Types.Epoch -> Bool
isActiveValidator validator epoch =
  activationEpoch validator <= epoch && epoch < exitEpoch validator
