{-# OPTIONS_GHC -fno-warn-unused-imports #-}
#include <bindings.dsl.h>
#include "/usr/include/cvodes/cvodes.h"
module Numeric.Sundials.Cvodes where
import Numeric.Sundials.SundialsNvector
import Foreign.Ptr
#strict_import

type C'_IO_FILE = CFile
#callback CVRhsFn , CDouble -> Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> Ptr () -> IO CInt
#callback CVRootFn , CDouble -> Ptr <struct _generic_N_Vector> -> Ptr CDouble -> Ptr () -> IO CInt
#callback CVEwtFn , Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> Ptr () -> IO CInt
#callback CVErrHandlerFn , CInt -> CString -> CString -> CString -> Ptr () -> IO ()
#callback CVQuadRhsFn , CDouble -> Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> Ptr () -> IO CInt
#callback CVSensRhsFn , CInt -> CDouble -> Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> Ptr (Ptr (<struct _generic_N_Vector>)) -> Ptr (Ptr (<struct _generic_N_Vector>)) -> Ptr () -> Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> IO CInt
#callback CVSensRhs1Fn , CInt -> CDouble -> Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> CInt -> Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> Ptr () -> Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> IO CInt
#callback CVQuadSensRhsFn , CInt -> CDouble -> Ptr <struct _generic_N_Vector> -> Ptr (Ptr (<struct _generic_N_Vector>)) -> Ptr <struct _generic_N_Vector> -> Ptr (Ptr (<struct _generic_N_Vector>)) -> Ptr () -> Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> IO CInt
#callback CVRhsFnB , CDouble -> Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> Ptr () -> IO CInt
#callback CVRhsFnBS , CDouble -> Ptr <struct _generic_N_Vector> -> Ptr (Ptr (<struct _generic_N_Vector>)) -> Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> Ptr () -> IO CInt
#callback CVQuadRhsFnB , CDouble -> Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> Ptr () -> IO CInt
#callback CVQuadRhsFnBS , CDouble -> Ptr <struct _generic_N_Vector> -> Ptr (Ptr (<struct _generic_N_Vector>)) -> Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> Ptr () -> IO CInt
#ccall CVodeCreate , CInt -> CInt -> IO (Ptr ())
#ccall CVodeInit , Ptr () -> <CVRhsFn> -> CDouble -> Ptr <struct _generic_N_Vector> -> IO CInt
#ccall CVodeReInit , Ptr () -> CDouble -> Ptr <struct _generic_N_Vector> -> IO CInt
#ccall CVodeSStolerances , Ptr () -> CDouble -> CDouble -> IO CInt
#ccall CVodeSVtolerances , Ptr () -> CDouble -> Ptr <struct _generic_N_Vector> -> IO CInt
#ccall CVodeWFtolerances , Ptr () -> <CVEwtFn> -> IO CInt
#ccall CVodeQuadInit , Ptr () -> <CVQuadRhsFn> -> Ptr <struct _generic_N_Vector> -> IO CInt
#ccall CVodeQuadReInit , Ptr () -> Ptr <struct _generic_N_Vector> -> IO CInt
#ccall CVodeQuadSStolerances , Ptr () -> CDouble -> CDouble -> IO CInt
#ccall CVodeQuadSVtolerances , Ptr () -> CDouble -> Ptr <struct _generic_N_Vector> -> IO CInt
#ccall CVodeSensInit , Ptr () -> CInt -> CInt -> <CVSensRhsFn> -> Ptr (Ptr (<struct _generic_N_Vector>)) -> IO CInt
#ccall CVodeSensInit1 , Ptr () -> CInt -> CInt -> <CVSensRhs1Fn> -> Ptr (Ptr (<struct _generic_N_Vector>)) -> IO CInt
#ccall CVodeSensReInit , Ptr () -> CInt -> Ptr (Ptr (<struct _generic_N_Vector>)) -> IO CInt
#ccall CVodeSensSStolerances , Ptr () -> CDouble -> Ptr CDouble -> IO CInt
#ccall CVodeSensSVtolerances , Ptr () -> CDouble -> Ptr (Ptr (<struct _generic_N_Vector>)) -> IO CInt
#ccall CVodeSensEEtolerances , Ptr () -> IO CInt
#ccall CVodeQuadSensInit , Ptr () -> <CVQuadSensRhsFn> -> Ptr (Ptr (<struct _generic_N_Vector>)) -> IO CInt
#ccall CVodeQuadSensReInit , Ptr () -> Ptr (Ptr (<struct _generic_N_Vector>)) -> IO CInt
#ccall CVodeQuadSensSStolerances , Ptr () -> CDouble -> Ptr CDouble -> IO CInt
#ccall CVodeQuadSensSVtolerances , Ptr () -> CDouble -> Ptr (Ptr (<struct _generic_N_Vector>)) -> IO CInt
#ccall CVodeQuadSensEEtolerances , Ptr () -> IO CInt
#ccall CVodeRootInit , Ptr () -> CInt -> <CVRootFn> -> IO CInt
#ccall CVodeFree , Ptr (Ptr ()) -> IO ()
#ccall CVodeQuadFree , Ptr () -> IO ()
#ccall CVodeSensFree , Ptr () -> IO ()
#ccall CVodeQuadSensFree , Ptr () -> IO ()
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
#ccall CVodeSetQuadErrCon , Ptr () -> CInt -> IO CInt
#ccall CVodeSetSensDQMethod , Ptr () -> CInt -> CDouble -> IO CInt
#ccall CVodeSetSensErrCon , Ptr () -> CInt -> IO CInt
#ccall CVodeSetSensMaxNonlinIters , Ptr () -> CInt -> IO CInt
#ccall CVodeSetSensParams , Ptr () -> Ptr CDouble -> Ptr CDouble -> Ptr CInt -> IO CInt
#ccall CVodeSetQuadSensErrCon , Ptr () -> CInt -> IO CInt
#ccall CVodeSensToggleOff , Ptr () -> IO CInt
#ccall CVode , Ptr () -> CDouble -> Ptr <struct _generic_N_Vector> -> Ptr CDouble -> CInt -> IO CInt
#ccall CVodeGetDky , Ptr () -> CDouble -> CInt -> Ptr <struct _generic_N_Vector> -> IO CInt
#ccall CVodeGetQuad , Ptr () -> Ptr CDouble -> Ptr <struct _generic_N_Vector> -> IO CInt
#ccall CVodeGetQuadDky , Ptr () -> CDouble -> CInt -> Ptr <struct _generic_N_Vector> -> IO CInt
#ccall CVodeGetSens , Ptr () -> Ptr CDouble -> Ptr (Ptr (<struct _generic_N_Vector>)) -> IO CInt
#ccall CVodeGetSens1 , Ptr () -> Ptr CDouble -> CInt -> Ptr <struct _generic_N_Vector> -> IO CInt
#ccall CVodeGetSensDky , Ptr () -> CDouble -> CInt -> Ptr (Ptr (<struct _generic_N_Vector>)) -> IO CInt
#ccall CVodeGetSensDky1 , Ptr () -> CDouble -> CInt -> CInt -> Ptr <struct _generic_N_Vector> -> IO CInt
#ccall CVodeGetQuadSens , Ptr () -> Ptr CDouble -> Ptr (Ptr (<struct _generic_N_Vector>)) -> IO CInt
#ccall CVodeGetQuadSens1 , Ptr () -> Ptr CDouble -> CInt -> Ptr <struct _generic_N_Vector> -> IO CInt
#ccall CVodeGetQuadSensDky , Ptr () -> CDouble -> CInt -> Ptr (Ptr (<struct _generic_N_Vector>)) -> IO CInt
#ccall CVodeGetQuadSensDky1 , Ptr () -> CDouble -> CInt -> CInt -> Ptr <struct _generic_N_Vector> -> IO CInt
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
#ccall CVodeGetQuadNumRhsEvals , Ptr () -> Ptr CLong -> IO CInt
#ccall CVodeGetQuadNumErrTestFails , Ptr () -> Ptr CLong -> IO CInt
#ccall CVodeGetQuadErrWeights , Ptr () -> Ptr <struct _generic_N_Vector> -> IO CInt
#ccall CVodeGetQuadStats , Ptr () -> Ptr CLong -> Ptr CLong -> IO CInt
#ccall CVodeGetSensNumRhsEvals , Ptr () -> Ptr CLong -> IO CInt
#ccall CVodeGetNumRhsEvalsSens , Ptr () -> Ptr CLong -> IO CInt
#ccall CVodeGetSensNumErrTestFails , Ptr () -> Ptr CLong -> IO CInt
#ccall CVodeGetSensNumLinSolvSetups , Ptr () -> Ptr CLong -> IO CInt
#ccall CVodeGetSensErrWeights , Ptr () -> Ptr (Ptr (<struct _generic_N_Vector>)) -> IO CInt
#ccall CVodeGetSensStats , Ptr () -> Ptr CLong -> Ptr CLong -> Ptr CLong -> Ptr CLong -> IO CInt
#ccall CVodeGetSensNumNonlinSolvIters , Ptr () -> Ptr CLong -> IO CInt
#ccall CVodeGetSensNumNonlinSolvConvFails , Ptr () -> Ptr CLong -> IO CInt
#ccall CVodeGetStgrSensNumNonlinSolvIters , Ptr () -> Ptr CLong -> IO CInt
#ccall CVodeGetStgrSensNumNonlinSolvConvFails , Ptr () -> Ptr CLong -> IO CInt
#ccall CVodeGetSensNonlinSolvStats , Ptr () -> Ptr CLong -> Ptr CLong -> IO CInt
#ccall CVodeGetQuadSensNumRhsEvals , Ptr () -> Ptr CLong -> IO CInt
#ccall CVodeGetQuadSensNumErrTestFails , Ptr () -> Ptr CLong -> IO CInt
#ccall CVodeGetQuadSensErrWeights , Ptr () -> Ptr (Ptr (<struct _generic_N_Vector>)) -> IO CInt
#ccall CVodeGetQuadSensStats , Ptr () -> Ptr CLong -> Ptr CLong -> IO CInt
#ccall CVodeAdjInit , Ptr () -> CLong -> CInt -> IO CInt
#ccall CVodeAdjReInit , Ptr () -> IO CInt
#ccall CVodeAdjFree , Ptr () -> IO ()
#ccall CVodeCreateB , Ptr () -> CInt -> CInt -> Ptr CInt -> IO CInt
#ccall CVodeInitB , Ptr () -> CInt -> <CVRhsFnB> -> CDouble -> Ptr <struct _generic_N_Vector> -> IO CInt
#ccall CVodeInitBS , Ptr () -> CInt -> <CVRhsFnBS> -> CDouble -> Ptr <struct _generic_N_Vector> -> IO CInt
#ccall CVodeReInitB , Ptr () -> CInt -> CDouble -> Ptr <struct _generic_N_Vector> -> IO CInt
#ccall CVodeSStolerancesB , Ptr () -> CInt -> CDouble -> CDouble -> IO CInt
#ccall CVodeSVtolerancesB , Ptr () -> CInt -> CDouble -> Ptr <struct _generic_N_Vector> -> IO CInt
#ccall CVodeQuadInitB , Ptr () -> CInt -> <CVQuadRhsFnB> -> Ptr <struct _generic_N_Vector> -> IO CInt
#ccall CVodeQuadInitBS , Ptr () -> CInt -> <CVQuadRhsFnBS> -> Ptr <struct _generic_N_Vector> -> IO CInt
#ccall CVodeQuadReInitB , Ptr () -> CInt -> Ptr <struct _generic_N_Vector> -> IO CInt
#ccall CVodeQuadSStolerancesB , Ptr () -> CInt -> CDouble -> CDouble -> IO CInt
#ccall CVodeQuadSVtolerancesB , Ptr () -> CInt -> CDouble -> Ptr <struct _generic_N_Vector> -> IO CInt
#ccall CVodeF , Ptr () -> CDouble -> Ptr <struct _generic_N_Vector> -> Ptr CDouble -> CInt -> Ptr CInt -> IO CInt
#ccall CVodeB , Ptr () -> CDouble -> CInt -> IO CInt
#ccall CVodeSetAdjNoSensi , Ptr () -> IO CInt
#ccall CVodeSetIterTypeB , Ptr () -> CInt -> CInt -> IO CInt
#ccall CVodeSetUserDataB , Ptr () -> CInt -> Ptr () -> IO CInt
#ccall CVodeSetMaxOrdB , Ptr () -> CInt -> CInt -> IO CInt
#ccall CVodeSetMaxNumStepsB , Ptr () -> CInt -> CLong -> IO CInt
#ccall CVodeSetStabLimDetB , Ptr () -> CInt -> CInt -> IO CInt
#ccall CVodeSetInitStepB , Ptr () -> CInt -> CDouble -> IO CInt
#ccall CVodeSetMinStepB , Ptr () -> CInt -> CDouble -> IO CInt
#ccall CVodeSetMaxStepB , Ptr () -> CInt -> CDouble -> IO CInt
#ccall CVodeSetQuadErrConB , Ptr () -> CInt -> CInt -> IO CInt
#ccall CVodeGetB , Ptr () -> CInt -> Ptr CDouble -> Ptr <struct _generic_N_Vector> -> IO CInt
#ccall CVodeGetQuadB , Ptr () -> CInt -> Ptr CDouble -> Ptr <struct _generic_N_Vector> -> IO CInt
#ccall CVodeGetAdjCVodeBmem , Ptr () -> CInt -> IO (Ptr ())
#ccall CVodeGetAdjY , Ptr () -> CDouble -> Ptr <struct _generic_N_Vector> -> IO CInt
{- typedef struct {
            void * my_addr;
            void * next_addr;
            realtype t0;
            realtype t1;
            long int nstep;
            int order;
            realtype step;
        } CVadjCheckPointRec; -}
#starttype CVadjCheckPointRec
#field my_addr , Ptr ()
#field next_addr , Ptr ()
#field t0 , CDouble
#field t1 , CDouble
#field nstep , CLong
#field order , CInt
#field step , CDouble
#stoptype
#ccall CVodeGetAdjCheckPointsInfo , Ptr () -> Ptr <CVadjCheckPointRec> -> IO CInt
#ccall CVodeGetAdjDataPointHermite , Ptr () -> CInt -> Ptr CDouble -> Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> IO CInt
#ccall CVodeGetAdjDataPointPolynomial , Ptr () -> CInt -> Ptr CDouble -> Ptr CInt -> Ptr <struct _generic_N_Vector> -> IO CInt
#ccall CVodeGetAdjCurrentCheckPoint , Ptr () -> Ptr (Ptr ()) -> IO CInt
