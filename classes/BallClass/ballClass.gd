class_name Ball
extends KinematicBody2D


var ballPolygon = PolygonClass.new()

export var radiusRatioToHeight = 70

onready var radius = DeviceManager.windowHeight / radiusRatioToHeight
export var numberOfVertices = 100

var horizontalDistance = 0 + DeviceManager.windowWidth
export var ballTravelTime = 2.5


func _ready():
	
	ballPolygon.initialize_polygon()
	ballPolygon.create_circle(radius, numberOfVertices)
	
	self.add_child(ballPolygon.polygonBody)
	ballPolygon.create_collision_polygon(self)
	ballPolygon.set_color(Color.white)
