class_name PolygonClass

var polygonBody
var polygonVertexArray



func initialize_polygon():
	polygonBody = Polygon2D.new()
	polygonVertexArray = PoolVector2Array()



func create_rectangle(halfWidth: float = 0, halfHeight: float = 0):
	
	polygonVertexArray.push_back(Vector2(-halfWidth, halfHeight))
	polygonVertexArray.push_back(Vector2(-halfWidth, -halfHeight))
	polygonVertexArray.push_back(Vector2(halfWidth, -halfHeight))
	polygonVertexArray.push_back(Vector2(halfWidth, halfHeight))
	
	polygonBody.set_polygon(polygonVertexArray)



func create_circle(radius: float = 0, numberOfVertex: float = 0, origin := Vector2(0, 0)):
	
	var angleOfCircle = 360
	var angleIncrement = angleOfCircle / numberOfVertex
	var radians = deg2rad(angleIncrement)
	
	var theta = 0
	
	var circleVertex = Vector2.ZERO
	
	while numberOfVertex > 0:
		circleVertex.x = radius * cos(theta) + origin.x
		circleVertex.y = radius * sin(theta) + origin.y
		
		polygonVertexArray.push_back(circleVertex)
		
		theta += radians
		numberOfVertex -= 1
	
	polygonBody.set_polygon(polygonVertexArray)



func create_collision_polygon(body: CollisionObject2D):
	
	var collisionPolygon = CollisionPolygon2D.new()
	collisionPolygon.set_polygon(polygonVertexArray)
	
	body.add_child(collisionPolygon)



func set_color(color := Color.white):
	
	polygonBody.set_color(color)
