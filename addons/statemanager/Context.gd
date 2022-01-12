extends Node
class_name Context

signal state_changed(key: String, value: Variant)

var _state = {}


func set(key: String, value: Variant) -> void:
	_state[key] = value
	emit_signal("state_changed", key, value)


func get(key: String) -> Variant:
	return _state[key]
