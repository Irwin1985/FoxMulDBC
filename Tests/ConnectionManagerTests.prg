Define Class ConnectionManagerTests As FxuTestCase Of FxuTestCase.prg

	#If .F.
		Local This As ConnectionManagerTests Of ConnectionManagerTests.prg
	#Endif
	icTestPrefix = "Test"
	oConManager  = .Null.
	cProcAct = ""
&& ======================================================================== &&
&& Function Setup
&& ======================================================================== &&
	Function Setup
		This.cProcAct = Set("Procedure")
		Set Path To "Src" additive
		Set Procedure To "ConnectionManager.prg" Additive
		This.oConManager = CreateObject("ConnectionManager")
	Endfunc
&& ======================================================================== &&
&& Function TearDown
&& ======================================================================== &&
	Function TearDown
		Local lcProcAct As String
		lcProcAct = This.cProcAct
		This.oConManager = .Null.
		Clear Class ConnectionManager
		Release Procedure ConnectionManager
		If not Empty(lcProcAct)
			Set Procedure To (lcProcAct)
		EndIf
	Endfunc
&& ======================================================================== &&
&& Function TestObject
&& ======================================================================== &&
	Function TestObject
		If This.AssertNotNull(This.oConManager, "Test Failed")
			This.MessageOut("Object created Ok")
		EndIf
	EndFunc	
&& ======================================================================== &&
&& Function TestAccessConnectionTypeObject
&& ======================================================================== &&
	Function TestAccessConnectionTypeObject
		This.oConManager.ConnectionType.MYSQL = 2
		This.MessageOut(Transform(This.oConManager.ConnectionType.MYSQL))
	EndFunc	
&& ======================================================================== &&
&& Function TestAssignConnectionTypeObject
&& ======================================================================== &&
	Function TestAssignConnectionTypeObject
		This.oConManager.ConnectionType = 1
		This.MessageOut(Transform(This.oConManager.ConnectionType))
	EndFunc	
Enddefine