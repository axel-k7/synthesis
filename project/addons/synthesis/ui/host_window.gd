extends Control

var peer: MultiplayerPeer

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	pass

func _make_server():
	peer = ENetMultiplayerPeer.new()
	#peer.create_server()
	multiplayer.multiplayer_peer = peer
	
func _unmake_server():
	multiplayer.multiplayer_peer = OfflineMultiplayerPeer.new()
	peer.free()
