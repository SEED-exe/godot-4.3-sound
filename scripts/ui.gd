extends CanvasLayer

@onready var audio_stream_player: AudioStreamPlayer = $"../AudioStreamPlayer"

var _stream

func _on_check_butto_playe_toggled(toggled_on: bool) -> void:
	if toggled_on : audio_stream_player.play()
	if !toggled_on : audio_stream_player.stop()

func change_layer_volume(index,_toggled_on):
	_stream = audio_stream_player.stream as AudioStreamSynchronized
	
	if _toggled_on : _stream.set_sync_stream_volume(index,0)
	if !_toggled_on : _stream.set_sync_stream_volume(index,-60)

func _on_check_butto_l_0_toggled(toggled_on: bool) -> void:
	change_layer_volume(0,toggled_on)

func _on_check_butto_l_1_toggled(toggled_on: bool) -> void:
	change_layer_volume(1,toggled_on)


func _on_check_butto_l_2_toggled(toggled_on: bool) -> void:
	change_layer_volume(2,toggled_on)
