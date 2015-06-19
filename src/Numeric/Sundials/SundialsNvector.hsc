{-# OPTIONS_GHC -fno-warn-unused-imports #-}
#include <bindings.dsl.h>
#include "/usr/include/sundials/sundials_nvector.h"
module Numeric.Sundials.SundialsNvector where
import Foreign.Ptr
#strict_import

{- typedef struct _generic_N_Vector_Ops * N_Vector_Ops; -}
-- #opaque_t struct _generic_N_Vector_Ops
-- #synonym_t N_Vector_Ops , <struct _generic_N_Vector_Ops>
type C'N_Vector_Ops = Ptr C'_generic_N_Vector_Ops
{- typedef struct _generic_N_Vector * N_Vector; -}
-- #opaque_t struct _generic_N_Vector
-- #synonym_t N_Vector , <struct _generic_N_Vector>
type C'N_Vector = Ptr C'_generic_N_Vector
{- typedef N_Vector * N_Vector_S; -}
-- #synonym_t N_Vector_S , <struct _generic_N_Vector>
type C'N_Vector_S = Ptr C'N_Vector
{- struct _generic_N_Vector_Ops {
    N_Vector (* nvclone)(N_Vector);
    N_Vector (* nvcloneempty)(N_Vector);
    void (* nvdestroy)(N_Vector);
    void (* nvspace)(N_Vector, long int *, long int *);
    realtype * (* nvgetarraypointer)(N_Vector);
    void (* nvsetarraypointer)(realtype *, N_Vector);
    void (* nvlinearsum)(realtype,
                         N_Vector,
                         realtype,
                         N_Vector,
                         N_Vector);
    void (* nvconst)(realtype, N_Vector);
    void (* nvprod)(N_Vector, N_Vector, N_Vector);
    void (* nvdiv)(N_Vector, N_Vector, N_Vector);
    void (* nvscale)(realtype, N_Vector, N_Vector);
    void (* nvabs)(N_Vector, N_Vector);
    void (* nvinv)(N_Vector, N_Vector);
    void (* nvaddconst)(N_Vector, realtype, N_Vector);
    realtype (* nvdotprod)(N_Vector, N_Vector);
    realtype (* nvmaxnorm)(N_Vector);
    realtype (* nvwrmsnorm)(N_Vector, N_Vector);
    realtype (* nvwrmsnormmask)(N_Vector, N_Vector, N_Vector);
    realtype (* nvmin)(N_Vector);
    realtype (* nvwl2norm)(N_Vector, N_Vector);
    realtype (* nvl1norm)(N_Vector);
    void (* nvcompare)(realtype, N_Vector, N_Vector);
    int (* nvinvtest)(N_Vector, N_Vector);
    int (* nvconstrmask)(N_Vector, N_Vector, N_Vector);
    realtype (* nvminquotient)(N_Vector, N_Vector);
}; -}
#starttype struct _generic_N_Vector_Ops
#field nvclone , FunPtr (Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector>)
#field nvcloneempty , FunPtr (Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector>)
#field nvdestroy , FunPtr (Ptr <struct _generic_N_Vector> -> IO ())
#field nvspace , FunPtr (Ptr <struct _generic_N_Vector> -> Ptr CLong -> Ptr CLong -> IO ())
#field nvgetarraypointer , FunPtr (Ptr <struct _generic_N_Vector> -> Ptr CDouble)
#field nvsetarraypointer , FunPtr (Ptr CDouble -> Ptr <struct _generic_N_Vector> -> IO ())
#field nvlinearsum , FunPtr (CDouble -> Ptr <struct _generic_N_Vector> -> CDouble -> Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> IO ())
#field nvconst , FunPtr (CDouble -> Ptr <struct _generic_N_Vector> -> IO ())
#field nvprod , FunPtr (Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> IO ())
#field nvdiv , FunPtr (Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> IO ())
#field nvscale , FunPtr (CDouble -> Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> IO ())
#field nvabs , FunPtr (Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> IO ())
#field nvinv , FunPtr (Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> IO ())
#field nvaddconst , FunPtr (Ptr <struct _generic_N_Vector> -> CDouble -> Ptr <struct _generic_N_Vector> -> IO ())
#field nvdotprod , FunPtr (Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> CDouble)
#field nvmaxnorm , FunPtr (Ptr <struct _generic_N_Vector> -> CDouble)
#field nvwrmsnorm , FunPtr (Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> CDouble)
#field nvwrmsnormmask , FunPtr (Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> CDouble)
#field nvmin , FunPtr (Ptr <struct _generic_N_Vector> -> CDouble)
#field nvwl2norm , FunPtr (Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> CDouble)
#field nvl1norm , FunPtr (Ptr <struct _generic_N_Vector> -> CDouble)
#field nvcompare , FunPtr (CDouble -> Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> IO ())
#field nvinvtest , FunPtr (Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> CInt)
#field nvconstrmask , FunPtr (Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> CInt)
#field nvminquotient , FunPtr (Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> CDouble)
#stoptype
{- struct _generic_N_Vector {
    void * content; struct _generic_N_Vector_Ops * ops;
}; -}
#starttype struct _generic_N_Vector
#field content , Ptr ()
#field ops , Ptr <struct _generic_N_Vector_Ops>
#stoptype
#ccall N_VClone , Ptr <struct _generic_N_Vector> -> IO (Ptr <struct _generic_N_Vector>)
#ccall N_VCloneEmpty , Ptr <struct _generic_N_Vector> -> IO (Ptr <struct _generic_N_Vector>)
#ccall N_VDestroy , Ptr <struct _generic_N_Vector> -> IO ()
#ccall N_VSpace , Ptr <struct _generic_N_Vector> -> Ptr CLong -> Ptr CLong -> IO ()
#ccall N_VGetArrayPointer , Ptr <struct _generic_N_Vector> -> IO (Ptr CDouble)
#ccall N_VSetArrayPointer , Ptr CDouble -> Ptr <struct _generic_N_Vector> -> IO ()
#ccall N_VLinearSum , CDouble -> Ptr <struct _generic_N_Vector> -> CDouble -> Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> IO ()
#ccall N_VConst , CDouble -> Ptr <struct _generic_N_Vector> -> IO ()
#ccall N_VProd , Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> IO ()
#ccall N_VDiv , Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> IO ()
#ccall N_VScale , CDouble -> Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> IO ()
#ccall N_VAbs , Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> IO ()
#ccall N_VInv , Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> IO ()
#ccall N_VAddConst , Ptr <struct _generic_N_Vector> -> CDouble -> Ptr <struct _generic_N_Vector> -> IO ()
#ccall N_VDotProd , Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> IO CDouble
#ccall N_VMaxNorm , Ptr <struct _generic_N_Vector> -> IO CDouble
#ccall N_VWrmsNorm , Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> IO CDouble
#ccall N_VWrmsNormMask , Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> IO CDouble
#ccall N_VMin , Ptr <struct _generic_N_Vector> -> IO CDouble
#ccall N_VWL2Norm , Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> IO CDouble
#ccall N_VL1Norm , Ptr <struct _generic_N_Vector> -> IO CDouble
#ccall N_VCompare , CDouble -> Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> IO ()
#ccall N_VInvTest , Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> IO CInt
#ccall N_VConstrMask , Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> IO CInt
#ccall N_VMinQuotient , Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> IO CDouble
#ccall N_VCloneEmptyVectorArray , CInt -> Ptr <struct _generic_N_Vector> -> IO (Ptr (Ptr <struct _generic_N_Vector>))
#ccall N_VCloneVectorArray , CInt -> Ptr <struct _generic_N_Vector> -> IO (Ptr (Ptr <struct _generic_N_Vector>))
#ccall N_VDestroyVectorArray , Ptr (Ptr <struct _generic_N_Vector>) -> CInt -> IO ()
