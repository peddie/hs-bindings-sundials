{-# OPTIONS_GHC -fno-warn-unused-imports #-}
#include <bindings.dsl.h>
#include "/usr/include/sundials/sundials_types.h"
module Numeric.Sundials.SundialsTypes where
import Foreign.Ptr
#strict_import

{- typedef double realtype; -}
#synonym_t realtype , CDouble
