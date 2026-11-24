extends Spatial

var kecepatan = 10.0
var kecepatan_belok = 2.0

func _process(delta):
	# Maju dan Mundur (Tombol Panah Atas & Bawah)
	if Input.is_action_pressed("ui_up"):
		translate(Vector3(0, 0, kecepatan * delta))
	if Input.is_action_pressed("ui_down"):
		translate(Vector3(0, 0, -kecepatan * delta))
		
	# Belok Kiri dan Kanan (Tombol Panah Kiri & Kanan)
	if Input.is_action_pressed("ui_left"):
		rotate_y(kecepatan_belok * delta)
	if Input.is_action_pressed("ui_right"):
		rotate_y(-kecepatan_belok * delta)
