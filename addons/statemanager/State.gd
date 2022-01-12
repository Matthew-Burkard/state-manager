extends Node

const _contexts: Dictionary = {}


func get_context(context: String) -> Context:
	if _contexts.has(context):
		return _contexts[context]
	var context_obj = Context.new()
	_contexts[context] = context_obj
	return context_obj
