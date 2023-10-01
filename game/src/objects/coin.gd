extends Area2D


onready var anim_player: AnimationPlayer =  get_node("AnimationPlayer")
onready var collect : AudioStreamPlayer2D = get_node("music")
export var score: = 100


func _on_body_entered(body: PhysicsBody2D) -> void:
	PlayerData.score += score
	collect.play()
	anim_player.play("fade_out")

#func picked() -> void:
	
	#anim_player.play("picked")
	
