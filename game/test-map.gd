extends ColorFrame

const PLAYER_SPEED = 200

func _ready():
	set_process(true)

func _process(delta):
	var player = get_node("TileMap/player")
	var motion = Vector2()
	if ( Input.is_action_pressed("input_up") ):
		motion += Vector2(0, -1)
	if ( Input.is_action_pressed("input_down") ):
		motion += Vector2(0, 1)
	if ( Input.is_action_pressed("input_left") ):
		motion += Vector2(-1, 0)
	if ( Input.is_action_pressed("input_right") ):
		motion += Vector2(1, 0)
	motion = motion.normalized() * PLAYER_SPEED * delta
	player.move( motion )
