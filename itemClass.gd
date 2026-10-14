extends Node2D

class_name item
var itemID:int
var itemType #either a string or its own class
var itemDescription


func _init(itemID:int, itemType, itemDescription): #constructor
	self.itemID = itemID
	self.itemType = itemType
	self.itemDescription = itemDescription
