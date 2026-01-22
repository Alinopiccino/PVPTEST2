extends Node

func _ready():
	print("🌍 RpcTest READY su peer:", multiplayer.get_unique_id())

@rpc("any_peer", "call_local")
func ping(message: String):
	print("✅ RPC PING RICEVUTA")
	print("   peer locale:", multiplayer.get_unique_id())
	print("   sender:", multiplayer.get_remote_sender_id())
	print("   message:", message)
