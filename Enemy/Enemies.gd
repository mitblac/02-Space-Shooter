extends Node2D

var max_enemies = 5
var max_enemies2 = 5
var max_enemies3 = 5
var Enemy = load("res://Enemy/Enemy.tscn")
var Enemy2 = load("res://Enemy/Enemy2.tscn")
var Enemy3 = load("res://Enemy/Enemy3.tscn")

func _ready():
	randomize()

func _physics_process(_delta):
	if get_child_count() < max_enemies:
		if randf() < 0.05:
			var enemy = Enemy.instance()
			enemy.position.y = -100
			enemy.position.x = randi() % 1024
			add_child(enemy)

	if get_child_count() < max_enemies2:
		if randf() < 0.05:
			var enemy2 = Enemy2.instance()
			enemy2.position.y = -100
			enemy2.position.x = randi() % 1024
			add_child(enemy2)

	if get_child_count() < max_enemies3:
		if randf() < 0.05:
			var enemy3 = Enemy3.instance()
			enemy3.position.y = -100
			enemy3.position.x = randi() % 1024
			add_child(enemy3)
