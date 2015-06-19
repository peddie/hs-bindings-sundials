{-# OPTIONS_GHC -fno-warn-unused-imports #-}
#include <bindings.dsl.h>
#include "/usr/include/kinsol/kinsol.h"
module Numeric.Sundials.Kinsol where
import Numeric.Sundials.SundialsNvector
import Foreign.Ptr
#strict_import

type C'_IO_FILE = CFile
#callback KINSysFn , Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> Ptr () -> IO CInt
#callback KINErrHandlerFn , CInt -> CString -> CString -> CString -> Ptr () -> IO ()
#callback KINInfoHandlerFn , CString -> CString -> CString -> Ptr () -> IO ()
#ccall KINCreate , IO (Ptr ())
#ccall KINSetErrHandlerFn , Ptr () -> <KINErrHandlerFn> -> Ptr () -> IO CInt
#ccall KINSetErrFile , Ptr () -> Ptr <struct _IO_FILE> -> IO CInt
#ccall KINSetInfoHandlerFn , Ptr () -> <KINInfoHandlerFn> -> Ptr () -> IO CInt
#ccall KINSetInfoFile , Ptr () -> Ptr <struct _IO_FILE> -> IO CInt
#ccall KINSetUserData , Ptr () -> Ptr () -> IO CInt
#ccall KINSetPrintLevel , Ptr () -> CInt -> IO CInt
#ccall KINSetNumMaxIters , Ptr () -> CLong -> IO CInt
#ccall KINSetNoInitSetup , Ptr () -> CInt -> IO CInt
#ccall KINSetNoResMon , Ptr () -> CInt -> IO CInt
#ccall KINSetMaxSetupCalls , Ptr () -> CLong -> IO CInt
#ccall KINSetMaxSubSetupCalls , Ptr () -> CLong -> IO CInt
#ccall KINSetEtaForm , Ptr () -> CInt -> IO CInt
#ccall KINSetEtaConstValue , Ptr () -> CDouble -> IO CInt
#ccall KINSetEtaParams , Ptr () -> CDouble -> CDouble -> IO CInt
#ccall KINSetResMonParams , Ptr () -> CDouble -> CDouble -> IO CInt
#ccall KINSetResMonConstValue , Ptr () -> CDouble -> IO CInt
#ccall KINSetNoMinEps , Ptr () -> CInt -> IO CInt
#ccall KINSetMaxNewtonStep , Ptr () -> CDouble -> IO CInt
#ccall KINSetMaxBetaFails , Ptr () -> CLong -> IO CInt
#ccall KINSetRelErrFunc , Ptr () -> CDouble -> IO CInt
#ccall KINSetFuncNormTol , Ptr () -> CDouble -> IO CInt
#ccall KINSetScaledStepTol , Ptr () -> CDouble -> IO CInt
#ccall KINSetConstraints , Ptr () -> Ptr <struct _generic_N_Vector> -> IO CInt
#ccall KINSetSysFunc , Ptr () -> <KINSysFn> -> IO CInt
#ccall KINInit , Ptr () -> <KINSysFn> -> Ptr <struct _generic_N_Vector> -> IO CInt
#ccall KINSol , Ptr () -> Ptr <struct _generic_N_Vector> -> CInt -> Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> IO CInt
#ccall KINGetWorkSpace , Ptr () -> Ptr CLong -> Ptr CLong -> IO CInt
#ccall KINGetNumNonlinSolvIters , Ptr () -> Ptr CLong -> IO CInt
#ccall KINGetNumFuncEvals , Ptr () -> Ptr CLong -> IO CInt
#ccall KINGetNumBetaCondFails , Ptr () -> Ptr CLong -> IO CInt
#ccall KINGetNumBacktrackOps , Ptr () -> Ptr CLong -> IO CInt
#ccall KINGetFuncNorm , Ptr () -> Ptr CDouble -> IO CInt
#ccall KINGetStepLength , Ptr () -> Ptr CDouble -> IO CInt
#ccall KINGetReturnFlagName , CLong -> IO CString
#ccall KINFree , Ptr (Ptr ()) -> IO ()
