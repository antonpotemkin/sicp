## Задание
Алгоритмы возведения в степень из этого раздела основаны на повторяющемся умножении. Подобным же образом можно производить умножение с помощью повторяющегося сложения. Следующая процедура умножения (в которой предполагается, что наш язык способен только складывать, но не умножать) аналогична процедуре expt:

```
(define (* a b)
  (if (= b 0)
      0
      (+ a (* a (- b 1)))))
```
Этот алгоритм затрачивает количество шагов, линейно пропорциональное b. Предположим теперь, что, наряду со сложением, у нас есть операции double, которая удваивает целое число, и halve, которая делит (четное) число на 2. Используя их, напишите процедуру, аналогичную fast-expt, которая затрачивает логарифмическое число шагов.

## Решение
[code](../../src/chapter01/solution_17.rkt)  
[test](../../test/chapter01/test_17.rkt)
