{-# OPTIONS_GHC -fno-warn-unused-imports #-}
#include <bindings.dsl.h>
#include "/usr/include/nvector/nvector_serial.h"
module Numeric.Sundials.NvectorSerial where
import Numeric.Sundials.SundialsNvector
import Foreign.Ptr
#strict_import

{- struct _N_VectorContent_Serial {
    long int length; int own_data; realtype * data;
}; -}
#starttype struct _N_VectorContent_Serial
#field length , CLong
#field own_data , CInt
#field data , Ptr CDouble
#stoptype
{- typedef struct _N_VectorContent_Serial * N_VectorContent_Serial; -}
-- #opaque_t struct _N_VectorContent_Serial
#synonym_t N_VectorContent_Serial , Ptr <struct _N_VectorContent_Serial>
#ccall N_VNew_Serial , CLong -> IO (Ptr <struct _generic_N_Vector>)
#ccall N_VNewEmpty_Serial , CLong -> IO (Ptr <struct _generic_N_Vector>)
#ccall N_VMake_Serial , CLong -> Ptr CDouble -> IO (Ptr <struct _generic_N_Vector>)
#ccall N_VCloneVectorArray_Serial , CInt -> Ptr (Ptr <struct _generic_N_Vector>) -> IO (Ptr (Ptr <struct _generic_N_Vector>))
#ccall N_VCloneVectorArrayEmpty_Serial , CInt -> Ptr <struct _generic_N_Vector> -> IO (Ptr (Ptr <struct _generic_N_Vector>))
#ccall N_VDestroyVectorArray_Serial , Ptr (Ptr <struct _generic_N_Vector>) -> CInt -> IO ()
#ccall N_VPrint_Serial , Ptr <struct _generic_N_Vector> -> IO ()
#ccall N_VCloneEmpty_Serial , Ptr <struct _generic_N_Vector> -> IO (Ptr <struct _generic_N_Vector>)
#ccall N_VClone_Serial , Ptr <struct _generic_N_Vector> -> IO (Ptr <struct _generic_N_Vector>)
#ccall N_VDestroy_Serial , Ptr <struct _generic_N_Vector> -> IO ()
#ccall N_VSpace_Serial , Ptr <struct _generic_N_Vector> -> Ptr CLong -> Ptr CLong -> IO ()
#ccall N_VGetArrayPointer_Serial , Ptr <struct _generic_N_Vector> -> IO (Ptr CDouble)
#ccall N_VSetArrayPointer_Serial , Ptr CDouble -> Ptr <struct _generic_N_Vector> -> IO ()
#ccall N_VLinearSum_Serial , CDouble -> Ptr <struct _generic_N_Vector> -> CDouble -> Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> IO ()
#ccall N_VConst_Serial , CDouble -> Ptr <struct _generic_N_Vector> -> IO ()
#ccall N_VProd_Serial , Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> IO ()
#ccall N_VDiv_Serial , Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> IO ()
#ccall N_VScale_Serial , CDouble -> Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> IO ()
#ccall N_VAbs_Serial , Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> IO ()
#ccall N_VInv_Serial , Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> IO ()
#ccall N_VAddConst_Serial , Ptr <struct _generic_N_Vector> -> CDouble -> Ptr <struct _generic_N_Vector> -> IO ()
#ccall N_VDotProd_Serial , Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> IO CDouble
#ccall N_VMaxNorm_Serial , Ptr <struct _generic_N_Vector> -> IO CDouble
#ccall N_VWrmsNorm_Serial , Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> IO CDouble
#ccall N_VWrmsNormMask_Serial , Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> IO CDouble
#ccall N_VMin_Serial , Ptr <struct _generic_N_Vector> -> IO CDouble
#ccall N_VWL2Norm_Serial , Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> IO CDouble
#ccall N_VL1Norm_Serial , Ptr <struct _generic_N_Vector> -> IO CDouble
#ccall N_VCompare_Serial , CDouble -> Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> IO ()
#ccall N_VInvTest_Serial , Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> IO CInt
#ccall N_VConstrMask_Serial , Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> IO CInt
#ccall N_VMinQuotient_Serial , Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> IO CDouble
