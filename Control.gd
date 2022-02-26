extends Control

var coins:float = 1500
var knife_impr = 1

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.



func _process(delta):
	if coins>=30+knife_impr*70 and knife_impr < 5:
		$Control/Button.disabled=false
	else:
		$Control/Button.disabled=true


func _on_Button_pressed():
	coins+=knife_impr
	$amogus/Panel/Label.text = str(coins)

func _knife_sharp():
	coins -= 30+knife_impr*70
	knife_impr += 1

		
