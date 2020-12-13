#include "FoxPro.h"
*====================================================================
* Class AbstractConnection
*====================================================================
Define Class AbstractConnection As Custom
    hidden Handle
    hidden InternalCall
*====================================================================
* Function Init
*====================================================================
    Function Init
        This.InternalCall = True
        This.Handle = 0
    EndFunc
*====================================================================
* Function Handle_Assign
*====================================================================
    Function Handle_Assign
        lParameters vNewVal As Integer
        If This.InternalCall
            This.InternalCall = False
            This.Handle = m.vNewVal
        Endif
    EndFunc
*====================================================================
* Function Reconnection
*====================================================================
    Function Reconnection
        messagebox("reconnection")
    EndFunc
EndDefine