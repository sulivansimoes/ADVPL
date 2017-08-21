/*/ {Protheus.doc} zTrigger
	Summary : Fun��o auxiliar para uso de function RunTrigger()
	@Author : S�livan Sim�es Silva / E-mail: sulivansimoes@gmail.com
	@Since  : 21/08/2017  
	@Param  : cCampo, caracter, nome do campo que pussui os gatilhos a serem disparados.
	@Example: u_zTrigger("D1_COD")
	
	@Obs	: http://tdn.totvs.com/pages/releaseview.action?pageId=6815032
/*/
User function zTrigger(cCampo)  

	Local aArea:= GetArea()
	Local nLin := n
	
  	dbSelectArea("SX7")
	dbSetOrder(1)           
	if( ExistTrigger(cCampo) )  
		if(SX7->(dbSeek(cCampo)))
			while(! SX7->(eof()).AND.ALLTRIM(SX7->X7_CAMPO)==cCampo)
    				//Dispara Gatilhos de Campo	
				RunTrigger(2,nLin,nil, ,SX7->X7_CAMPO)	 	  	            
				SX7->(dbSkip())	
			enddo		
		endif   
	endif
	
	SX7->(dbCloseArea())
	restArea(aArea)
return  