## Задание
Лиза П. Хакер не понимает, почему if должна быть особой формой. «Почему нельзя просто определить ее как обычную процедуру с помощью cond?» — спрашивает она. Лизина подруга Ева Лу Атор утверждает, что, разумеется, можно, и определяет новую версию if:

```
(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))
```
Ева показывает Лизе новую программу:
```
(new-if (= 2 3) 0 5)
5
(new-if (= 1 1) 0 5)
0
```

Обрадованная Лиза переписывает через new-if программу вычисления квадратного корня:

```
(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
    guess
    (sqrt-iter (improve guess x)
      x)))
```

Что получится, когда Лиза попытается использовать эту процедуру для вычисления квадратных корней? Объясните.

## Решение
[code](../../src/chapter01/solution_6.rkt)  
[test](../../test/chapter01/test_6.rkt)
