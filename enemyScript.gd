extends VBoxContainer

@export var enemyInfo : EnemyResource

@onready var enemyCurrentHealth = null

func _ready():
	var enemyName = enemyInfo.name
	var enemyMaxHealth =  enemyInfo.health
	enemyCurrentHealth = enemyMaxHealth
	var damagePerTurn = enemyInfo.damage
	$Name_Label.text = enemyName
	$Enemy_Image.texture = enemyInfo.image
	$Name_Label/ProgressBar.min_value = 0
	$Name_Label/ProgressBar.max_value = enemyMaxHealth

func _process(_delta):
	$Name_Label/ProgressBar.value = enemyCurrentHealth
