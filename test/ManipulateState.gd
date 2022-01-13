extends Node


func _ready() -> void:
	var context = State.get_context("test")
	context.connect("state_changed", _listen)
	_print_state()
	context.set("custom_var", 8)
	_print_state()


func _print_state() -> void:
	var context = State.get_context("test")
	print(context.get("custom_var"))


func _listen(key: String, value: Variant) -> void:
	print("Key %s is %s" % [key, value])
