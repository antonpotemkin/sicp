## Задание
Заметим, что наша модель вычислений разрешает существование комбинаций, операторы которых — составные выражения. С помощью этого наблюдения опишите, как работает следующая процедура:

```
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))
```

## Решение
[code](../../src/chapter01/solution_4.rkt)  
[test](../../test/chapter01/test_4.rkt)
