extends Control

var note_map: NoteMap
@onready var length_counter: Label = %LengthCounter

func _ready() -> void:
	note_map = get_tree().get_first_node_in_group("NoteMap")


func _process(_delta: float) -> void:
	length_counter.text = str(note_map._note_cursor_size)


func _on_play_stop_but_pressed() -> void:
	Controller.button_input("playstop")


func _on_pause_but_pressed() -> void:
	Controller.button_input("pause")


func _on_remove_but_pressed() -> void:
	note_map.remove_button_active = !note_map.remove_button_active


func _on_elongate_but_pressed() -> void:
	note_map._resize_note_cursor(note_map._note_cursor_size + 1)


func _on_shorten_but_pressed() -> void:
	note_map._resize_note_cursor(note_map._note_cursor_size - 1)


func _on_reset_but_pressed() -> void:
	note_map._resize_note_cursor(1)
