## Задание

Хьюго Дум пытается переписать первую из процедур square-list из упражнения 2.21 так, чтобы она работала как итеративный процесс:

```
(define (square-list items)
	(define (iter things answer)
    	(if (null? things)
        	answer
			(iter (cdr things)
				  (cons (square (car things))
						answer))))
  (iter items nil))
 ```

К сожалению, такое определение square-list выдает список результатов в порядке, обратном желаемому. Почему?
Затем Хьюго пытается исправить ошибку, обменяв аргументы cons:

```
(define (square-list items) (define (iter things answer)
    (if (null? things)
        answer
        (iter (cdr things)
              (cons answer
                    (square (car things))))))
  (iter items nil))
```

И так программа тоже не работает. Объясните это.

## Решение
[code](../../src/chapter02/solution_22.rkt)  