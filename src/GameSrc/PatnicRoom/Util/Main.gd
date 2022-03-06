extends Node

var JSONParser : JsonParser
var RNG: RNGClass
var Filehub
var DictionaryUtils
var Nodes : NodesManager
var filepathBuilder


func _init():
	RNG = RNGClass.new()
	JSONParser = JsonParser.new()
	Filehub = FileHub.new()
	Nodes = NodesManager.new()
	DictionaryUtils = _Util_Dictionary.new()
	filepathBuilder = FilepathBuilder.new()
