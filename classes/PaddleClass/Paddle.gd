class_name Paddle
extends KinematicBody2D


var paddlePolygon = PolygonClass.new()
var movement = Movement.new()

export var paddleHeightRatio = 6.5
export var paddleWidthRatio = 100

var paddleWidth = DeviceManager.windowWidth / paddleWidthRatio
var paddleHeight = DeviceManager.windowHeight / paddleHeightRatio

var halfPaddleWidth = paddleWidth / 2
var halfPaddleHeight = paddleHeight / 2

export var paddleOffsetPercentage: float = 10.0
var paddleOffset

var verticalDistance = 0 + DeviceManager.windowHeight
export var paddleTravelTime = 1.5

var paddleSpeed = verticalDistance / paddleTravelTime

var velocity = Vector2.ZERO


func _ready():
	
	paddlePolygon.initialize_polygon()
	paddlePolygon.create_rectangle(halfPaddleWidth, halfPaddleHeight)
	
	self.add_child(paddlePolygon.polygonBody)
	paddlePolygon.create_collision_polygon(self)
	paddlePolygon.set_color(Color.white)
	paddleOffset = (paddleOffsetPercentage / 100) * DeviceManager.windowWidth
