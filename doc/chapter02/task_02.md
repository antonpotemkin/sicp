## Задание

Рассмотрим задачу представления отрезков прямой на плоскости. Каждый отрезок представляется как пара точек: начало и конец. Определите конструктор make-segment и селекторы start- segment и end-segment, которые определяют представление отрезков в терминах точек. Далее, точку можно представить как пару чисел: координата x и координата y. Соответственно, напишите конструктор make-point и селекторы x-point и y-point, которые определяют такое представление. Наконец, используя свои селекторы и конструктор, напишите процедуру midpoint-segment, которая принимает отрезок в качестве аргумента и возвращает его середину (точку, координаты которой являются средним координат концов отрезка). Чтобы опробовать эти процедуры, Вам потребуется способ печатать координаты точек:

```
(define (print-point p)
	(newline)
	(display "(") 
	(display (x-point p))
	(display ",")
	(display (y-point p))
	(display ")"))
```


## Решение
[code](../../src/chapter02/solution_02.rkt)  
[test](../../test/chapter02/test_02.rkt)