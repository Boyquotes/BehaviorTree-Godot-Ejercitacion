extends ConditionTask

func run(tick: Tick) -> int:
	if tick.blackboard.get("is_door_open"):
		print("La puerta ya esta abierta. No hay mucho que hacer.")
		return OK
	else:
		print("La puerta esta cerrada. Mejor voy a abrirla.")
		return FAILED
