Class {
	#name : 'IMModel',
	#superclass : 'CMAbstractModel',
	#instVars : [
		'cells',
		'agents',
		'woods',
		'fishes'
	],
	#classInstVars : [
		'numberOfRows',
		'numberOfColumns',
		'numberOfAgents',
		'numberOfWoods',
		'numberOfFishes'
	],
	#category : 'Iriela-Model',
	#package : 'Iriela-Model'
}

{ #category : 'as yet unclassified' }
IMModel class >> aboutThisModel [

	^ ''
]

{ #category : 'initialization' }
IMModel class >> initializeParameters [ 
	super initializeParameters . 
	numberOfRows := 5.
	numberOfColumns := 5.
	numberOfAgents := 5.
	numberOfWoods := 2.
	numberOfFishes := 2
]

{ #category : 'accessing' }
IMModel class >> numberOfAgents [

	^ numberOfAgents
]

{ #category : 'accessing' }
IMModel class >> numberOfAgents: anObject [

	numberOfAgents := anObject
]

{ #category : 'accessing' }
IMModel class >> numberOfColumns [

	^ numberOfColumns
]

{ #category : 'accessing' }
IMModel class >> numberOfColumns: anObject [

	numberOfColumns := anObject
]

{ #category : 'accessing' }
IMModel class >> numberOfFishes [

	^ numberOfFishes
]

{ #category : 'accessing' }
IMModel class >> numberOfFishes: anObject [

	numberOfFishes := anObject
]

{ #category : 'accessing' }
IMModel class >> numberOfRows [

	^ numberOfRows
]

{ #category : 'accessing' }
IMModel class >> numberOfRows: anObject [

	numberOfRows := anObject
]

{ #category : 'accessing' }
IMModel class >> numberOfWoods [

	^ numberOfWoods
]

{ #category : 'accessing' }
IMModel class >> numberOfWoods: anObject [

	numberOfWoods := anObject
]

{ #category : 'as yet unclassified' }
IMModel class >> prefix [

	^ 'IM'
]

{ #category : 'accessing' }
IMModel >> agents [
	<getterFor: #IMAgent >
	^ agents
]

{ #category : 'accessing' }
IMModel >> cells [
	<getterFor: #IMCell>
	^ cells
]

{ #category : 'accessing' }
IMModel >> fishes [
	<getterFor: #IMFish >
	^ fishes
]

{ #category : 'initialization' }
IMModel >> init [ 
	<init> 
	self 
		createGridNumberOfRows: self class numberOfRows
		numberOfColumns:  self class numberOfColumns
		neighbourhood: 4 
		closed: true.
		
	
	self createN: self class numberOfWoods randomlyLocatedAloneEntities: IMWood .
	self createN: self class numberOfFishes randomlyLocatedAloneEntities: IMFish .
	self createN: self class numberOfAgents randomlyLocatedAloneEntities: IMAgent.
]

{ #category : 'initialization' }
IMModel >> initialize [ 
	super initialize. 
	agents := OrderedCollection new.
	cells := OrderedCollection new.
	woods := OrderedCollection new. 
	fishes := OrderedCollection new.
]

{ #category : 'accessing' }
IMModel >> numberOfRemainingWoods [ 
	<probeNamed: 'Remaining woods' color: 'E5B80B'>
	^ woods count: [ :each | each patch isNotNil ]
]

{ #category : 'initialization' }
IMModel >> step [ 
	<control> 
	agents do: [ :each | each step ]
]

{ #category : 'accessing' }
IMModel >> woods [
	<getterFor: #IMWood >
	^ woods
]
