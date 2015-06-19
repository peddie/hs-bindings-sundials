{-# OPTIONS_GHC -fno-warn-unused-imports #-}
#include <bindings.dsl.h>
#include "/usr/include/ida/ida.h"
module Numeric.Sundials.Ida where
import Numeric.Sundials.SundialsNvector
import Foreign.Ptr
#strict_import

type C'_IO_FILE = CFile
#callback IDAResFn , CDouble -> Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> Ptr () -> IO CInt
#callback IDARootFn , CDouble -> Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> Ptr CDouble -> Ptr () -> IO CInt
#callback IDAEwtFn , Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> Ptr () -> IO CInt
#callback IDAErrHandlerFn , CInt -> CString -> CString -> CString -> Ptr () -> IO ()
#ccall IDACreate , IO (Ptr ())
#ccall IDASetErrHandlerFn , Ptr () -> <IDAErrHandlerFn> -> Ptr () -> IO CInt
#ccall IDASetErrFile , Ptr () -> Ptr <struct _IO_FILE> -> IO CInt
#ccall IDASetUserData , Ptr () -> Ptr () -> IO CInt
#ccall IDASetMaxOrd , Ptr () -> CInt -> IO CInt
#ccall IDASetMaxNumSteps , Ptr () -> CLong -> IO CInt
#ccall IDASetInitStep , Ptr () -> CDouble -> IO CInt
#ccall IDASetMaxStep , Ptr () -> CDouble -> IO CInt
#ccall IDASetStopTime , Ptr () -> CDouble -> IO CInt
#ccall IDASetNonlinConvCoef , Ptr () -> CDouble -> IO CInt
#ccall IDASetMaxErrTestFails , Ptr () -> CInt -> IO CInt
#ccall IDASetMaxNonlinIters , Ptr () -> CInt -> IO CInt
#ccall IDASetMaxConvFails , Ptr () -> CInt -> IO CInt
#ccall IDASetSuppressAlg , Ptr () -> CInt -> IO CInt
#ccall IDASetId , Ptr () -> Ptr <struct _generic_N_Vector> -> IO CInt
#ccall IDASetConstraints , Ptr () -> Ptr <struct _generic_N_Vector> -> IO CInt
#ccall IDASetRootDirection , Ptr () -> Ptr CInt -> IO CInt
#ccall IDASetNoInactiveRootWarn , Ptr () -> IO CInt
#ccall IDAInit , Ptr () -> <IDAResFn> -> CDouble -> Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> IO CInt
#ccall IDAReInit , Ptr () -> CDouble -> Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> IO CInt
#ccall IDASStolerances , Ptr () -> CDouble -> CDouble -> IO CInt
#ccall IDASVtolerances , Ptr () -> CDouble -> Ptr <struct _generic_N_Vector> -> IO CInt
#ccall IDAWFtolerances , Ptr () -> <IDAEwtFn> -> IO CInt
#ccall IDASetNonlinConvCoefIC , Ptr () -> CDouble -> IO CInt
#ccall IDASetMaxNumStepsIC , Ptr () -> CInt -> IO CInt
#ccall IDASetMaxNumJacsIC , Ptr () -> CInt -> IO CInt
#ccall IDASetMaxNumItersIC , Ptr () -> CInt -> IO CInt
#ccall IDASetLineSearchOffIC , Ptr () -> CInt -> IO CInt
#ccall IDASetStepToleranceIC , Ptr () -> CDouble -> IO CInt
#ccall IDARootInit , Ptr () -> CInt -> <IDARootFn> -> IO CInt
#ccall IDACalcIC , Ptr () -> CInt -> CDouble -> IO CInt
#ccall IDASolve , Ptr () -> CDouble -> Ptr CDouble -> Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> CInt -> IO CInt
#ccall IDAGetDky , Ptr () -> CDouble -> CInt -> Ptr <struct _generic_N_Vector> -> IO CInt
#ccall IDAGetWorkSpace , Ptr () -> Ptr CLong -> Ptr CLong -> IO CInt
#ccall IDAGetNumSteps , Ptr () -> Ptr CLong -> IO CInt
#ccall IDAGetNumResEvals , Ptr () -> Ptr CLong -> IO CInt
#ccall IDAGetNumLinSolvSetups , Ptr () -> Ptr CLong -> IO CInt
#ccall IDAGetNumErrTestFails , Ptr () -> Ptr CLong -> IO CInt
#ccall IDAGetNumBacktrackOps , Ptr () -> Ptr CLong -> IO CInt
#ccall IDAGetConsistentIC , Ptr () -> Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> IO CInt
#ccall IDAGetLastOrder , Ptr () -> Ptr CInt -> IO CInt
#ccall IDAGetCurrentOrder , Ptr () -> Ptr CInt -> IO CInt
#ccall IDAGetActualInitStep , Ptr () -> Ptr CDouble -> IO CInt
#ccall IDAGetLastStep , Ptr () -> Ptr CDouble -> IO CInt
#ccall IDAGetCurrentStep , Ptr () -> Ptr CDouble -> IO CInt
#ccall IDAGetCurrentTime , Ptr () -> Ptr CDouble -> IO CInt
#ccall IDAGetTolScaleFactor , Ptr () -> Ptr CDouble -> IO CInt
#ccall IDAGetErrWeights , Ptr () -> Ptr <struct _generic_N_Vector> -> IO CInt
#ccall IDAGetEstLocalErrors , Ptr () -> Ptr <struct _generic_N_Vector> -> IO CInt
#ccall IDAGetNumGEvals , Ptr () -> Ptr CLong -> IO CInt
#ccall IDAGetRootInfo , Ptr () -> Ptr CInt -> IO CInt
#ccall IDAGetIntegratorStats , Ptr () -> Ptr CLong -> Ptr CLong -> Ptr CLong -> Ptr CLong -> Ptr CInt -> Ptr CInt -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO CInt
#ccall IDAGetNumNonlinSolvIters , Ptr () -> Ptr CLong -> IO CInt
#ccall IDAGetNumNonlinSolvConvFails , Ptr () -> Ptr CLong -> IO CInt
#ccall IDAGetNonlinSolvStats , Ptr () -> Ptr CLong -> Ptr CLong -> IO CInt
#ccall IDAGetReturnFlagName , CLong -> IO CString
#ccall IDAFree , Ptr (Ptr ()) -> IO ()
