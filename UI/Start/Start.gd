class_name Start
extends Control

onready var settingsMenu = $SettingsMenu
onready var transition = $TransitonColor


func _ready() -> void:
	MusicController.play_music()

func _on_StartButton_pressed() -> void:
	transition.transition_to("res://UI/LevelMenu/LevelMenu.tscn")

func _on_MusicVolume_value_changed(value) -> void:
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Music"), value)

func _on_SoundEffects_value_changed(value) -> void:
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("SoundEffects"), value)


func _on_SettingsButton_toggled(button_pressed):
	if button_pressed:
		settingsMenu.show()
	else:
		settingsMenu.hide()
