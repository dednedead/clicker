extends Control

var coins:float = 0



# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.



func _process(delta):
	if coins>=100:
		$Control/Button.disabled=false
	else:
		$Control/Button.disabled=true


func _on_Button_pressed():
	coins+=10
	$amogus/Panel/Label.text = str(coins)

func _knife_sharp():
	coins-=100
	
