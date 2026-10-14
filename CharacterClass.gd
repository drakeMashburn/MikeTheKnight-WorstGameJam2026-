extends Node2D


class_name playerChar
var playerLevel:int = 0;
var maxLife = 5;
var playerLife:int = 5;
var playerName = "PlaceholderName";
var playerInventory: inventory


func _init(playerName, playerInventory): #constructor
	self.playerName = playerName
	self.playerInventory = playerInventory
	

func _addToInventory(theItem:item):
	self.playerInventory._addItem(theItem)
	
func _removeFromInventory(theItem:item):
	self.playerInventory._removeItem(theItem)
	
func _heal(ammount:int):
	self.playerLife += ammount
	if(self.playerLife > self.maxLife):
		self.playerLife = self.maxLife
		
func _damage(ammount:int):
	self.playerLife -= ammount
	if(self.playerLife < 0):
		self.playerLife = 0;
	
	

# Called when the node enters the scene tree for the first time.
