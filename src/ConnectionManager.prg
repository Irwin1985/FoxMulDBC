#Include "FoxPro.h"
*====================================================================
* Class ConnectionManager
*====================================================================
Define Class ConnectionManager As Custom
    ConnectionType = .Null.
    Hidden InternalCall
*====================================================================
* Function Init
*====================================================================
    Function Init
        With This
            .InternalCall   = True
            .ConnectionType = CreateObject("ConnectionType")
        EndWith
    EndFunc
*====================================================================
* Function Destroy
*====================================================================
    Function Destroy
        With This
            .InternalCall   = True
            .ConnectionType = .Null.
        EndWith
        Clear Class ConnectionType
    EndFunc
*====================================================================
* Function ConnectionType_Assign
*====================================================================
    Function ConnectionType_Assign
        lParameters vNewVal As Variant
        If This.InternalCall
            This.InternalCall = False
            This.ConnectionType = m.vNewVal
        Endif
    EndFunc
*====================================================================
* Function CreateConnection
*====================================================================
    Function CreateConnection As Connection
        lParameters toConnectionType As ConnectionType
        Local
        Try
        Catch
        Endtry
    EndFunc
EndDefine
*====================================================================
* Class ConnectionType
*====================================================================
Define Class ConnectionType As Custom
    MYSQL       = 1
    MARIADB     = 2
    FIREBIRD    = 3
    POSTGRESQL  = 4
    SQLSERVER   = 5
    SQLITE      = 6
    Function MYSQL_Assign
        lParameters vNewVal As Variant
        Return .Null.
    EndFunc
    Function MARIADB_Assign
        lParameters vNewVal As Variant
        Return .Null.
    EndFunc
    Function FIREBIRD_Assign
        lParameters vNewVal As Variant
        Return .Null.
    EndFunc
    Function POSTGRESQL_Assign
        lParameters vNewVal As Variant
        Return .Null.
    EndFunc
    Function SQLSERVER_Assign
        lParameters vNewVal As Variant
        Return .Null.
    EndFunc
    Function SQLITE_Assign
        lParameters vNewVal As Variant
        Return .Null.
    EndFunc
EndDefine