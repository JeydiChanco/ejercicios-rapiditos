!classDefinition: #AlejandroElEncargado category: 'PrimerClase'!
DenotativeObject subclass: #AlejandroElEncargado
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PrimerClase'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'AlejandroElEncargado class' category: 'PrimerClase'!
AlejandroElEncargado class
	instanceVariableNames: ''!

!AlejandroElEncargado class methodsFor: 'as yet unclassified' stamp: 'JC 10/4/2020 17:13:34'!
hola
	"statements: que hace alejandro cuando le digo hola"
	^'Hola!!'! !

!AlejandroElEncargado class methodsFor: 'as yet unclassified' stamp: 'JC 10/4/2020 17:18:40'!
saludoCon: unSaludo
	
	^unSaludo, 'Sergio'	! !


!classDefinition: #GuardiaDeSkyrim category: 'PrimerClase'!
DenotativeObject subclass: #GuardiaDeSkyrim
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PrimerClase'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'GuardiaDeSkyrim class' category: 'PrimerClase'!
GuardiaDeSkyrim class
	instanceVariableNames: 'cantidadDeVecesQueHablaronConmigo'!

!GuardiaDeSkyrim class methodsFor: 'as yet unclassified' stamp: 'JC 10/4/2020 22:37:27'!
contestar: cantidadDeConversaciones
	"Devuelve un mensaje segun cantidadDeConversaciones, que indica la cantidad de veces que se habló con alguien."
	
	^self elegirFrase: cantidadDeConversaciones 
	! !

!GuardiaDeSkyrim class methodsFor: 'as yet unclassified' stamp: 'JC 10/4/2020 21:41:47'!
conversar
	"Incrementa el valor de recordarQueConveraronConmigo y devuelve un mensaje segun ese numero incrementado"
		
	^self contestar: 	self recordarQueConversaronConmigo! !

!GuardiaDeSkyrim class methodsFor: 'as yet unclassified' stamp: 'JC 10/4/2020 22:35:00'!
elegirFrase: cantidadDeConversaciones
	"Elige una frase de respuestasPosibles segun el valor cantidadDeConversaciones, que indica la catidad de veces que se habló con alguien. Cuando cantidadDeConversaciones el mayor a la cantidad de frases que hay en respuestasPosibles se devuelve la ultima frase"
	
	|respuestasPosibles|
	respuestasPosibles := #('frase 1' 'frase 2' 'frase3' 'frase 4' 'frase 5').
	^respuestasPosibles at: (cantidadDeConversaciones min: (respuestasPosibles size))! !

!GuardiaDeSkyrim class methodsFor: 'as yet unclassified' stamp: 'JC 10/4/2020 22:48:15'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	cantidadDeVecesQueHablaronConmigo := 1.! !

!GuardiaDeSkyrim class methodsFor: 'as yet unclassified' stamp: 'JC 10/4/2020 22:36:16'!
recordarQueConversaronConmigo
	"Incrementa el valor de cantidadDeVecesQueHablaronConmigo en 1 y devuelve dicho valor incrementado"
		
	cantidadDeVecesQueHablaronConmigo := cantidadDeVecesQueHablaronConmigo + 1.
	^cantidadDeVecesQueHablaronConmigo! !

GuardiaDeSkyrim initializeAfterFileIn!