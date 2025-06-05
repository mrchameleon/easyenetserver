extends Node2D

var port

func _ready():
	var config = ConfigFile.new()
	# Store some values.
	config.set_value("app", "port", "1027")
	# Save it to a file (overwrite if already exists).
	config.save("user://easy_enet_config.cfg")
	port = config.get_value("app", "port")
	
	var peer = ENetMultiplayerPeer.new()
	peer.set_bind_ip('0.0.0.0')
	peer.create_server(int(port))
	print("enet host is running on port: ", port)

# may not need this - add in if needing to not overwrite config file each startup
#func load_or_create_config():
	#var config = ConfigFile.new()
#
	## Load data from a file.
	#var err = config.load("user://easy_enet_config.cfg")
#
	## If the file didn't load, ignore it.
	#if err != OK:
		#return
	#else:
		#port = config.get_value("port")
