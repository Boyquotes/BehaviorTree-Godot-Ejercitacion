extends Node

onready var blackboard = $Blackboard
onready var behavior_tree = $BehaviorTree

var door_position := 10
var my_position := 0

func _ready() -> void:
	blackboard.set("is_door_open", false)
	blackboard.set("door_position", door_position)
	blackboard.set("current_position", my_position)
	blackboard.set("start_position", blackboard.get("current_position"))
	update_behavior_tree()

func update_behavior_tree() -> void:
	behavior_tree.run(self, blackboard, false)
