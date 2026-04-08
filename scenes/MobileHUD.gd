extends CanvasLayer

@onready var Forward = $MovementTouchScreenControl/ForwardButton
@onready var Back = $MovementTouchScreenControl/BackButton
@onready var Left = $MovementTouchScreenControl/LeftButton
@onready var Right = $MovementTouchScreenControl/RightButton
@onready var Pause = $UITouchScreenControl/PauseButton


func _ready():
	Forward.connect("pressed", Callable(self, "On_Forward_Pressed"))
	Forward.connect("released", Callable(self, "On_Forward_Released"))

	Back.connect("pressed", Callable(self, "On_Back_Pressed"))
	Back.connect("released", Callable(self, "On_Back_Released"))

	Left.connect("pressed", Callable(self, "On_Left_Pressed"))
	Left.connect("released", Callable(self, "On_Left_Released"))

	Right.connect("pressed", Callable(self, "On_Right_Pressed"))
	Right.connect("released", Callable(self, "On_Right_Released"))

	Pause.connect("pressed", Callable(self, "On_Pause_Pressed"))


func On_Forward_Pressed():
	Input.action_press("move_forward")


func On_Forward_Released():
	Input.action_release("move_forward")


func On_Back_Pressed():
	Input.action_press("move_back")


func On_Back_Released():
	Input.action_release("move_back")


func On_Left_Pressed():
	Input.action_press("strafe_left")


func On_Left_Released():
	Input.action_release("strafe_left")


func On_Right_Pressed():
	Input.action_press("strafe_right")


func On_Right_Released():
	Input.action_release("strafe_right")


func On_Pause_Pressed():
	Input.action_press("pause")
