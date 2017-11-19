extends ColorFrame

const PLAYER_SPEED = 200

func _ready():
	set_process(true)

func _process(delta):
	var player = get_node("player")
	var player_pos = player.get_pos()
	if ( Input.is_action_pressed("input_up") ):
		player_pos.y -= PLAYER_SPEED * delta
	if ( Input.is_action_pressed("input_down") ):
		player_pos.y += PLAYER_SPEED * delta
	if ( Input.is_action_pressed("input_left") ):
		player_pos.x -= PLAYER_SPEED * delta
	if ( Input.is_action_pressed("input_right") ):
		player_pos.x += PLAYER_SPEED * delta
	player.set_pos( player_pos )
