extends Node2D

class_name inventory
var numItems:int 
const maxItems:int = 10
var  itemArray: Array[item] = []

func _init(): #constructor
	self.numItems = 0
	itemArray.resize(self.maxItems)
	
func _addItem(item):
	self.numItems += 1
	if(self.numItems > maxItems):
		self.numItems -= 1
		return
	else:
		self.itemArray.push_back(item)
		
func _removeItem(item):
	self.numItems -= 1
	if(self.numItems < 0):
		self.numItems += 1
		return
	else:
		if self.itemArray.has(item):
			self.itemArray.erase(item)
			numItems = itemArray.size() 
