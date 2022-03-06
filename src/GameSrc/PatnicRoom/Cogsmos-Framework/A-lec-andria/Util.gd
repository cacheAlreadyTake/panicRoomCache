extends Node
class_name _ALECandria_Util



static func getLecsInFilepath(dirToScann:String):
	var parsedFiles: Array 
	var dir := Directory.new()
	
	dir.open(dirToScann)
	dir.list_dir_begin(true, false)
	var fileString = dir.get_next()
	
	
	while fileString != "":
		var currentFilepath = dir.get_current_dir() + "/" + fileString
		
		if dir.current_is_dir()           : parsedFiles += getLecsInFilepath(currentFilepath)
		elif fileString.ends_with(".lec") : parsedFiles.append(currentFilepath)
		fileString = dir.get_next()
	
	
	return parsedFiles



