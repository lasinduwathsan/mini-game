tool
extends Area2D


onready var anim_player: AnimationPlayer = get_node("AnimationPlayer")

export var next_scene: PackedScene

func _on_body_entered(body: PhysicsBody2D) -> void:
	teleport()

func _get_configuration_warning() -> String:
	 return "The Next Scene Property Can't Be Empty " if not next_scene else ""

func teleport() -> void:
	anim_player.play("fade_in")
	yield(anim_player,"animation_finished")
	get_tree().change_scene_to(next_scene)
	

