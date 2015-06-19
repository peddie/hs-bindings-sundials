{-# OPTIONS_GHC -fno-warn-unused-imports #-}
#include <bindings.dsl.h>
#include "/usr/include/cvode/cvode.h"
module Numeric.Sundials.Cvode where
import Numeric.Sundials.SundialsNvector
import Foreign.Ptr
#strict_import

type C'_IO_FILE = CFile
#callback CVRhsFn , CDouble -> Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> Ptr () -> IO CInt
#callback CVRootFn , CDouble -> Ptr <struct _generic_N_Vector> -> Ptr CDouble -> Ptr () -> IO CInt
#callback CVEwtFn , Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> Ptr () -> IO CInt
#callback CVErrHandlerFn , CInt -> CString -> CString -> CString -> Ptr () -> IO ()
#ccall CVodeCreate , CInt -> CInt -> IO (Ptr ())
#ccall CVodeSetErrHandlerFn , Ptr () -> <CVErrHandlerFn> -> Ptr () -> IO CInt
#ccall CVodeSetErrFile , Ptr () -> Ptr <struct _IO_FILE> -> IO CInt
#ccall CVodeSetUserData , Ptr () -> Ptr () -> IO CInt
#ccall CVodeSetMaxOrd , Ptr () -> CInt -> IO CInt
#ccall CVodeSetMaxNumSteps , Ptr () -> CLong -> IO CInt
#ccall CVodeSetMaxHnilWarns , Ptr () -> CInt -> IO CInt
#ccall CVodeSetStabLimDet , Ptr () -> CInt -> IO CInt
#ccall CVodeSetInitStep , Ptr () -> CDouble -> IO CInt
#ccall CVodeSetMinStep , Ptr () -> CDouble -> IO CInt
#ccall CVodeSetMaxStep , Ptr () -> CDouble -> IO CInt
#ccall CVodeSetStopTime , Ptr () -> CDouble -> IO CInt
#ccall CVodeSetMaxErrTestFails , Ptr () -> CInt -> IO CInt
#ccall CVodeSetMaxNonlinIters , Ptr () -> CInt -> IO CInt
#ccall CVodeSetMaxConvFails , Ptr () -> CInt -> IO CInt
#ccall CVodeSetNonlinConvCoef , Ptr () -> CDouble -> IO CInt
#ccall CVodeSetIterType , Ptr () -> CInt -> IO CInt
#ccall CVodeSetRootDirection , Ptr () -> Ptr CInt -> IO CInt
#ccall CVodeSetNoInactiveRootWarn , Ptr () -> IO CInt
#ccall CVodeInit , Ptr () -> <CVRhsFn> -> CDouble -> Ptr <struct _generic_N_Vector> -> IO CInt
#ccall CVodeReInit , Ptr () -> CDouble -> Ptr <struct _generic_N_Vector> -> IO CInt
#ccall CVodeSStolerances , Ptr () -> CDouble -> CDouble -> IO CInt
#ccall CVodeSVtolerances , Ptr () -> CDouble -> Ptr <struct _generic_N_Vector> -> IO CInt
#ccall CVodeWFtolerances , Ptr () -> <CVEwtFn> -> IO CInt
#ccall CVodeRootInit , Ptr () -> CInt -> <CVRootFn> -> IO CInt
#ccall CVode , Ptr () -> CDouble -> Ptr <struct _generic_N_Vector> -> Ptr CDouble -> CInt -> IO CInt
#ccall CVodeGetDky , Ptr () -> CDouble -> CInt -> Ptr <struct _generic_N_Vector> -> IO CInt
#ccall CVodeGetWorkSpace , Ptr () -> Ptr CLong -> Ptr CLong -> IO CInt
#ccall CVodeGetNumSteps , Ptr () -> Ptr CLong -> IO CInt
#ccall CVodeGetNumRhsEvals , Ptr () -> Ptr CLong -> IO CInt
#ccall CVodeGetNumLinSolvSetups , Ptr () -> Ptr CLong -> IO CInt
#ccall CVodeGetNumErrTestFails , Ptr () -> Ptr CLong -> IO CInt
#ccall CVodeGetLastOrder , Ptr () -> Ptr CInt -> IO CInt
#ccall CVodeGetCurrentOrder , Ptr () -> Ptr CInt -> IO CInt
#ccall CVodeGetNumStabLimOrderReds , Ptr () -> Ptr CLong -> IO CInt
#ccall CVodeGetActualInitStep , Ptr () -> Ptr CDouble -> IO CInt
#ccall CVodeGetLastStep , Ptr () -> Ptr CDouble -> IO CInt
#ccall CVodeGetCurrentStep , Ptr () -> Ptr CDouble -> IO CInt
#ccall CVodeGetCurrentTime , Ptr () -> Ptr CDouble -> IO CInt
#ccall CVodeGetTolScaleFactor , Ptr () -> Ptr CDouble -> IO CInt
#ccall CVodeGetErrWeights , Ptr () -> Ptr <struct _generic_N_Vector> -> IO CInt
#ccall CVodeGetEstLocalErrors , Ptr () -> Ptr <struct _generic_N_Vector> -> IO CInt
#ccall CVodeGetNumGEvals , Ptr () -> Ptr CLong -> IO CInt
#ccall CVodeGetRootInfo , Ptr () -> Ptr CInt -> IO CInt
#ccall CVodeGetIntegratorStats , Ptr () -> Ptr CLong -> Ptr CLong -> Ptr CLong -> Ptr CLong -> Ptr CInt -> Ptr CInt -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO CInt
#ccall CVodeGetNumNonlinSolvIters , Ptr () -> Ptr CLong -> IO CInt
#ccall CVodeGetNumNonlinSolvConvFails , Ptr () -> Ptr CLong -> IO CInt
#ccall CVodeGetNonlinSolvStats , Ptr () -> Ptr CLong -> Ptr CLong -> IO CInt
#ccall CVodeGetReturnFlagName , CLong -> IO CString
#ccall CVodeFree , Ptr (Ptr ()) -> IO ()
