class_name Clock
extends Label

var time_text := "00:00:00"
var time_m_sec := 0
var time_sec := 0
var time_min := 0
var total_time_ms := 0

func _ready() -> void:
	text = time_text

func _on_timer_timeout() -> void:
	total_time_ms += 50
	time_m_sec += 50
	if time_m_sec == 1000:
		time_sec += 1
		time_m_sec = 0
	if time_sec == 60:
		time_min += 1
		time_sec = 0
	time_text = str(time_min).pad_zeros(2) + ":" + str(time_sec).pad_zeros(2) + ":" + str(int(time_m_sec / 10)).pad_zeros(2)
	text = time_text


func _on_pause_menu_game_start() -> void:
	$Timer.start()
