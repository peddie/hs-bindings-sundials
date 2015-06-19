{-# OPTIONS_GHC -fno-warn-unused-imports #-}
#include <bindings.dsl.h>
#include "/usr/include/idas/idas.h"
module Numeric.Sundials.Idas where
import Numeric.Sundials.SundialsNvector
import Foreign.Ptr
#strict_import

type C'_IO_FILE = CFile
#callback IDAResFn , CDouble -> Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> Ptr () -> IO CInt
#callback IDARootFn , CDouble -> Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> Ptr CDouble -> Ptr () -> IO CInt
#callback IDAEwtFn , Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> Ptr () -> IO CInt
#callback IDAErrHandlerFn , CInt -> CString -> CString -> CString -> Ptr () -> IO ()
#callback IDAQuadRhsFn , CDouble -> Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> Ptr () -> IO CInt
#callback IDASensResFn , CInt -> CDouble -> Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> Ptr (Ptr (<struct _generic_N_Vector>)) -> Ptr (Ptr (<struct _generic_N_Vector>)) -> Ptr (Ptr (<struct _generic_N_Vector>)) -> Ptr () -> Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> IO CInt
#callback IDAQuadSensRhsFn , CInt -> CDouble -> Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> Ptr (Ptr (<struct _generic_N_Vector>)) -> Ptr (Ptr (<struct _generic_N_Vector>)) -> Ptr <struct _generic_N_Vector> -> Ptr (Ptr (<struct _generic_N_Vector>)) -> Ptr () -> Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> IO CInt
#callback IDAResFnB , CDouble -> Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> Ptr () -> IO CInt
#callback IDAResFnBS , CDouble -> Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> Ptr (Ptr (<struct _generic_N_Vector>)) -> Ptr (Ptr (<struct _generic_N_Vector>)) -> Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> Ptr () -> IO CInt
#callback IDAQuadRhsFnB , CDouble -> Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> Ptr () -> IO CInt
#callback IDAQuadRhsFnBS , CDouble -> Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> Ptr (Ptr (<struct _generic_N_Vector>)) -> Ptr (Ptr (<struct _generic_N_Vector>)) -> Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> Ptr () -> IO CInt
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
#ccall IDASetQuadErrCon , Ptr () -> CInt -> IO CInt
#ccall IDAQuadInit , Ptr () -> <IDAQuadRhsFn> -> Ptr <struct _generic_N_Vector> -> IO CInt
#ccall IDAQuadReInit , Ptr () -> Ptr <struct _generic_N_Vector> -> IO CInt
#ccall IDAQuadSStolerances , Ptr () -> CDouble -> CDouble -> IO CInt
#ccall IDAQuadSVtolerances , Ptr () -> CDouble -> Ptr <struct _generic_N_Vector> -> IO CInt
#ccall IDASetSensDQMethod , Ptr () -> CInt -> CDouble -> IO CInt
#ccall IDASetSensParams , Ptr () -> Ptr CDouble -> Ptr CDouble -> Ptr CInt -> IO CInt
#ccall IDASetSensErrCon , Ptr () -> CInt -> IO CInt
#ccall IDASetSensMaxNonlinIters , Ptr () -> CInt -> IO CInt
#ccall IDASensInit , Ptr () -> CInt -> CInt -> <IDASensResFn> -> Ptr (Ptr (<struct _generic_N_Vector>)) -> Ptr (Ptr (<struct _generic_N_Vector>)) -> IO CInt
#ccall IDASensReInit , Ptr () -> CInt -> Ptr (Ptr (<struct _generic_N_Vector>)) -> Ptr (Ptr (<struct _generic_N_Vector>)) -> IO CInt
#ccall IDASensToggleOff , Ptr () -> IO CInt
#ccall IDASensSStolerances , Ptr () -> CDouble -> Ptr CDouble -> IO CInt
#ccall IDASensSVtolerances , Ptr () -> CDouble -> Ptr (Ptr (<struct _generic_N_Vector>)) -> IO CInt
#ccall IDASensEEtolerances , Ptr () -> IO CInt
#ccall IDAQuadSensInit , Ptr () -> <IDAQuadSensRhsFn> -> Ptr (Ptr (<struct _generic_N_Vector>)) -> IO CInt
#ccall IDAQuadSensReInit , Ptr () -> Ptr (Ptr (<struct _generic_N_Vector>)) -> IO CInt
#ccall IDAQuadSensSStolerances , Ptr () -> CDouble -> Ptr CDouble -> IO CInt
#ccall IDAQuadSensSVtolerances , Ptr () -> CDouble -> Ptr (Ptr (<struct _generic_N_Vector>)) -> IO CInt
#ccall IDAQuadSensEEtolerances , Ptr () -> IO CInt
#ccall IDASetQuadSensErrCon , Ptr () -> CInt -> IO CInt
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
#ccall IDAGetQuad , Ptr () -> Ptr CDouble -> Ptr <struct _generic_N_Vector> -> IO CInt
#ccall IDAGetQuadDky , Ptr () -> CDouble -> CInt -> Ptr <struct _generic_N_Vector> -> IO CInt
#ccall IDAGetQuadNumRhsEvals , Ptr () -> Ptr CLong -> IO CInt
#ccall IDAGetQuadNumErrTestFails , Ptr () -> Ptr CLong -> IO CInt
#ccall IDAGetQuadErrWeights , Ptr () -> Ptr <struct _generic_N_Vector> -> IO CInt
#ccall IDAGetQuadStats , Ptr () -> Ptr CLong -> Ptr CLong -> IO CInt
#ccall IDAGetSens , Ptr () -> Ptr CDouble -> Ptr (Ptr (<struct _generic_N_Vector>)) -> IO CInt
#ccall IDAGetSens1 , Ptr () -> Ptr CDouble -> CInt -> Ptr <struct _generic_N_Vector> -> IO CInt
#ccall IDAGetSensDky , Ptr () -> CDouble -> CInt -> Ptr (Ptr (<struct _generic_N_Vector>)) -> IO CInt
#ccall IDAGetSensDky1 , Ptr () -> CDouble -> CInt -> CInt -> Ptr <struct _generic_N_Vector> -> IO CInt
#ccall IDAGetSensConsistentIC , Ptr () -> Ptr (Ptr (<struct _generic_N_Vector>)) -> Ptr (Ptr (<struct _generic_N_Vector>)) -> IO CInt
#ccall IDAGetSensNumResEvals , Ptr () -> Ptr CLong -> IO CInt
#ccall IDAGetNumResEvalsSens , Ptr () -> Ptr CLong -> IO CInt
#ccall IDAGetSensNumErrTestFails , Ptr () -> Ptr CLong -> IO CInt
#ccall IDAGetSensNumLinSolvSetups , Ptr () -> Ptr CLong -> IO CInt
#ccall IDAGetSensErrWeights , Ptr () -> Ptr <struct _generic_N_Vector> -> IO CInt
#ccall IDAGetSensStats , Ptr () -> Ptr CLong -> Ptr CLong -> Ptr CLong -> Ptr CLong -> IO CInt
#ccall IDAGetSensNumNonlinSolvIters , Ptr () -> Ptr CLong -> IO CInt
#ccall IDAGetSensNumNonlinSolvConvFails , Ptr () -> Ptr CLong -> IO CInt
#ccall IDAGetSensNonlinSolvStats , Ptr () -> Ptr CLong -> Ptr CLong -> IO CInt
#ccall IDAGetQuadSensNumRhsEvals , Ptr () -> Ptr CLong -> IO CInt
#ccall IDAGetQuadSensNumErrTestFails , Ptr () -> Ptr CLong -> IO CInt
#ccall IDAGetQuadSensErrWeights , Ptr () -> Ptr (Ptr (<struct _generic_N_Vector>)) -> IO CInt
#ccall IDAGetQuadSensStats , Ptr () -> Ptr CLong -> Ptr CLong -> IO CInt
#ccall IDAGetQuadSens , Ptr () -> Ptr CDouble -> Ptr (Ptr (<struct _generic_N_Vector>)) -> IO CInt
#ccall IDAGetQuadSens1 , Ptr () -> Ptr CDouble -> CInt -> Ptr <struct _generic_N_Vector> -> IO CInt
#ccall IDAGetQuadSensDky , Ptr () -> CDouble -> CInt -> Ptr (Ptr (<struct _generic_N_Vector>)) -> IO CInt
#ccall IDAGetQuadSensDky1 , Ptr () -> CDouble -> CInt -> CInt -> Ptr <struct _generic_N_Vector> -> IO CInt
#ccall IDAGetReturnFlagName , CLong -> IO CString
#ccall IDAFree , Ptr (Ptr ()) -> IO ()
#ccall IDAQuadFree , Ptr () -> IO ()
#ccall IDASensFree , Ptr () -> IO ()
#ccall IDAQuadSensFree , Ptr () -> IO ()
#ccall IDAAdjInit , Ptr () -> CLong -> CInt -> IO CInt
#ccall IDAAdjReInit , Ptr () -> IO CInt
#ccall IDAAdjFree , Ptr () -> IO ()
#ccall IDACreateB , Ptr () -> Ptr CInt -> IO CInt
#ccall IDAInitB , Ptr () -> CInt -> <IDAResFnB> -> CDouble -> Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> IO CInt
#ccall IDAInitBS , Ptr () -> CInt -> <IDAResFnBS> -> CDouble -> Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> IO CInt
#ccall IDAReInitB , Ptr () -> CInt -> CDouble -> Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> IO CInt
#ccall IDASStolerancesB , Ptr () -> CInt -> CDouble -> CDouble -> IO CInt
#ccall IDASVtolerancesB , Ptr () -> CInt -> CDouble -> Ptr <struct _generic_N_Vector> -> IO CInt
#ccall IDAQuadInitB , Ptr () -> CInt -> <IDAQuadRhsFnB> -> Ptr <struct _generic_N_Vector> -> IO CInt
#ccall IDAQuadInitBS , Ptr () -> CInt -> <IDAQuadRhsFnBS> -> Ptr <struct _generic_N_Vector> -> IO CInt
#ccall IDAQuadReInitB , Ptr () -> CInt -> Ptr <struct _generic_N_Vector> -> IO CInt
#ccall IDAQuadSStolerancesB , Ptr () -> CInt -> CDouble -> CDouble -> IO CInt
#ccall IDAQuadSVtolerancesB , Ptr () -> CInt -> CDouble -> Ptr <struct _generic_N_Vector> -> IO CInt
#ccall IDACalcICB , Ptr () -> CInt -> CDouble -> Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> IO CInt
#ccall IDACalcICBS , Ptr () -> CInt -> CDouble -> Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> Ptr (Ptr (<struct _generic_N_Vector>)) -> Ptr (Ptr (<struct _generic_N_Vector>)) -> IO CInt
#ccall IDASolveF , Ptr () -> CDouble -> Ptr CDouble -> Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> CInt -> Ptr CInt -> IO CInt
#ccall IDASolveB , Ptr () -> CDouble -> CInt -> IO CInt
#ccall IDASetAdjNoSensi , Ptr () -> IO CInt
#ccall IDASetUserDataB , Ptr () -> CInt -> Ptr () -> IO CInt
#ccall IDASetMaxOrdB , Ptr () -> CInt -> CInt -> IO CInt
#ccall IDASetMaxNumStepsB , Ptr () -> CInt -> CLong -> IO CInt
#ccall IDASetInitStepB , Ptr () -> CInt -> CDouble -> IO CInt
#ccall IDASetMaxStepB , Ptr () -> CInt -> CDouble -> IO CInt
#ccall IDASetSuppressAlgB , Ptr () -> CInt -> CInt -> IO CInt
#ccall IDASetIdB , Ptr () -> CInt -> Ptr <struct _generic_N_Vector> -> IO CInt
#ccall IDASetConstraintsB , Ptr () -> CInt -> Ptr <struct _generic_N_Vector> -> IO CInt
#ccall IDASetQuadErrConB , Ptr () -> CInt -> CInt -> IO CInt
#ccall IDAGetB , Ptr () -> CInt -> Ptr CDouble -> Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> IO CInt
#ccall IDAGetQuadB , Ptr () -> CInt -> Ptr CDouble -> Ptr <struct _generic_N_Vector> -> IO CInt
#ccall IDAGetAdjIDABmem , Ptr () -> CInt -> IO (Ptr ())
#ccall IDAGetConsistentICB , Ptr () -> CInt -> Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> IO CInt
#ccall IDAGetAdjY , Ptr () -> CDouble -> Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> IO CInt
{- typedef struct {
            void * my_addr;
            void * next_addr;
            realtype t0;
            realtype t1;
            long int nstep;
            int order;
            realtype step;
        } IDAadjCheckPointRec; -}
#starttype IDAadjCheckPointRec
#field my_addr , Ptr ()
#field next_addr , Ptr ()
#field t0 , CDouble
#field t1 , CDouble
#field nstep , CLong
#field order , CInt
#field step , CDouble
#stoptype
#ccall IDAGetAdjCheckPointsInfo , Ptr () -> Ptr <IDAadjCheckPointRec> -> IO CInt
#ccall IDAGetAdjDataPointHermite , Ptr () -> CInt -> Ptr CDouble -> Ptr <struct _generic_N_Vector> -> Ptr <struct _generic_N_Vector> -> IO CInt
#ccall IDAGetAdjDataPointPolynomial , Ptr () -> CInt -> Ptr CDouble -> Ptr CInt -> Ptr <struct _generic_N_Vector> -> IO CInt
#ccall IDAGetAdjCurrentCheckPoint , Ptr () -> Ptr (Ptr ()) -> IO CInt
