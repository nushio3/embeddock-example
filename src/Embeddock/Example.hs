{- | To use embeddock, place the following preprocessor pragma at the
 beginning of your source code.

 > OPTIONS_GHC -F -pgmF embeddock -optF $EMBED$

 You can specify the embed string by @-optF@. The default embed
 string is "$" . Expressions in parenthesis that immediately follow
 the embed strings are treated as embed expression. Embed
 expressions are evaluated in the context of the module. The result
 should be of type string.

 Please look at the source code of this module for an usecase of
 @embeddock@.

 At the moment, embeddock is not compatible with one-liner comment "--"
 due to the backend lexer.
-}

{-# OPTIONS_GHC -F -pgmF embeddock #-}



module Embeddock.Example where

import Data.Time
import System.IO.Unsafe

{- | An answer to the life, the universe and everything. The answer
is #{show answer} .-}

answer :: Integer
answer = 6*7



{- | The time this file was processed. The current time was
 #{show now}. Please refer to the Source to see how these
documents were generated. -}

now :: UTCTime
now = unsafePerformIO $ getCurrentTime