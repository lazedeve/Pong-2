extends BorderClass

var shape
var shapeOwner

func _ready():
	create_border()


func create_border():
	
	for data in borderData:
		shape = RectangleShape2D.new()
		shape.extents = data[0]
		shapeOwner = create_shape_owner(self)
		shape_owner_set_transform(shapeOwner, Transform2D(0, data[1]))
		shape_owner_add_shape(shapeOwner, shape)
