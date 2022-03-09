extends Control

export var coins:float = 2000

var knife_impr = 1
export var sharp_cost = 100

var miniam1:bool = false
var miniam1_time = 1.5

var miniam2:bool = false
var miniam2_time = 1.3

var sus = 0.3
var click_sus:float = 1

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	$Label.text = str(coins)
	$Control/Buttonsh/Label.text = "заточка ножа: "+str(sharp_cost)
	
	if coins>=sharp_cost and knife_impr <= 5:
		$Control/Buttonsh.disabled=false
	else:
		$Control/Buttonsh.disabled=true
	
	if knife_impr > 5:
		$Control/Buttonsh/Label.text = "заточка ножа: -"
	
	if coins>=250 and miniam1 == false:
		$Control/Buttonch.disabled=false
	else:
		$Control/Buttonch.disabled=true
	
	if coins>=500 and miniam2 == false:
		$Control/Buttonch2.disabled=false
	else:
		$Control/Buttonch2.disabled=true
	
	if fmod(click_sus,35) == 0:
		$amogus/TextureRect.visible = false
		$amogus/TextureRect4.visible = true
		$amogus/TextureRect4/Timer.start(sus)
		click_sus += 1

func _sus():
	$amogus/TextureRect.visible = true
	$amogus/TextureRect4.visible = false
	$amogus/TextureRect4/Timer.stop()
	
func _knife_sharp():
	coins -= sharp_cost
	knife_impr += 1
	sharp_cost = knife_impr*46+sharp_cost

func _on_Button_pressed():
	coins+=knife_impr
	click_sus += 1
	
func _miniam1():
	miniam1 = true
	coins -= 250
	$Control/Buttonch/Timer.start(miniam1_time)
	$amogus/TextureRect2.visible = true

func _on_Timer1_timeout():
	coins += 1

	
func _miniam2():
	miniam2 = true
	coins -= 500
	$Control/Buttonch2/Timer.start(miniam2_time)
	$amogus/TextureRect3.visible = true

func _on_Timer2_timeout():
	coins += 2


