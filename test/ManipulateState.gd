extends Node


func _ready() -> void:
	var context = State.get_context("test")
	context.connect("state_changed", _listen)
	context.set("mouse_position", 10)


func _do_a_thing() -> void:
	var context = State.get_context("test")
	print(context.get("mouse_position"))


func _listen(key: String, value: Variant) -> void:
	print("Key %s is %s" % [key, value])
