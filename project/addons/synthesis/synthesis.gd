@tool
extends EditorPlugin

var connection_window: Control
var host_window: Control

func _enable_plugin() -> void:
	# Add autoloads here.
	pass


func _disable_plugin() -> void:
	# Remove autoloads here.
	pass


func _enter_tree() -> void:
	# Initialization of the plugin goes here.
	
	connection_window = load("res://addons/synthesis/ui/connection_window.tscn").instantiate()
	add_control_to_bottom_panel(connection_window, "Connect")
	
	host_window = load("res://addons/synthesis/ui/host_window.tscn").instantiate()
	add_control_to_bottom_panel(host_window, "Host")
	
	pass


func _exit_tree() -> void:
	# Clean-up of the plugin goes here.
	
	if is_instance_valid(connection_window):
		remove_control_from_bottom_panel(connection_window)
		connection_window.free()
		
	if is_instance_valid(host_window):
		remove_control_from_bottom_panel(host_window)
		host_window.free()
	
	pass
