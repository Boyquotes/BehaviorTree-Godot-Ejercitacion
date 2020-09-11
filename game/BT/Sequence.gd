extends BehaviorBaseNode
class_name Sequence, "res://assets/sequence_icon.png"

"""
Esto es un nodo secuencia.
"""

#### Metodo run
func run(tick: Tick) -> int:
	var result := ERR_BUG # Si no tiene hijos
	
	for child in get_children():
		result = ERR_BUSY
		
		while result == ERR_BUSY:
			result = child._execute(tick)
		
		if result == FAILED:
			break
	
	return result
