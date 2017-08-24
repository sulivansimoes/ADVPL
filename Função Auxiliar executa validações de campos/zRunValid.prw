/*/ {Protheus.doc} zRunValid
	Summary : Fun��o generica para executar valida��es de um campo.
	@Author : S�livan Sim�es Silva / E-mail: sulivansimoes@gmail.com
	@Since  : 24/08/2017  
	@Param  : cCampo, caracter, nome do campo que pussui as valida��es a serem executadas.
	@Example: u_zRunValid("D1_COD")
	
	@Obs	: http://tdn.totvs.com/pages/releaseview.action;jsessionid=36186E9238E8FE6BF89AF00C298D89FD?pageId=6815033
/*/

user function zRunValid(cCampo)
	
	Local aArea:= GetArea()
	Local cVldPad := ""
	Local cVldUsr := ""
	Local xReadOld:= __ReadVar
	
	//Pega Valida��es de Campo 	
    	cVldPad := GetSx3Cache(cCampo,"X3_VALID")                                                          
	cVldUsr := GetSx3Cache(cCampo,"X3_VLDUSER")
	
	__ReadVar := cCampo
	if(!empty(cVldPad)) 
		&(cVldPad)
	endif
	if(!empty(cVldUsr))
	    &(cVldUsr)
	endif
	__ReadVar := xReadOld
  
	restArea(aArea)
	
return                                     