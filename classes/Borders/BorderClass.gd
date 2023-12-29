class_name BorderClass
extends StaticBody2D


export var innerThickness = 0
export var outerThickness = 20

var halfThickness = (innerThickness + outerThickness) / 2

var topBorderPosition = Vector2(DeviceManager.halfWindowWidth, innerThickness - halfThickness)
var bottomBorderPosition = Vector2(DeviceManager.halfWindowWidth, DeviceManager.windowHeight + halfThickness - innerThickness)

var topBorderExtent = Vector2(DeviceManager.halfWindowWidth, halfThickness)
var bottomBorderExtent = Vector2(DeviceManager.halfWindowWidth, halfThickness)

var topBorder = [topBorderExtent, topBorderPosition]
var bottomBorder = [bottomBorderExtent, bottomBorderPosition]

var borderData = [topBorder, bottomBorder]
