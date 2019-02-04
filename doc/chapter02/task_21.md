## Задание

Процедура square-list принимает в качестве аргумента список чисел и возвращает список квадратов этих чисел.

```
(square-list (list 1 2 3 4))
(1 4 9 16)
```

Перед Вами два различных определения square-list. Закончите их, вставив пропущенные выражения:
```
(define (square-list items)
	(if (null? items)
		nil
		(cons ⟨??⟩ ⟨??⟩)))


(define (square-list items)
	(map ⟨??⟩ ⟨??⟩))
```

## Решение
[code](../../src/chapter02/solution_21.rkt)  
[test](../../test/chapter02/test_21.rkt)