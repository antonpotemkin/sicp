## Задание
Процедура sum порождает линейную рекурсию. Ее можно переписать так, чтобы суммирование выполнялось итеративно. Покажите, как сделать это, заполнив пропущенные выражения в следу- ющем определении:

```
//рекурсия
(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))


(define (sum term a next b)
  (define (iter a result)
    (if ⟨??⟩
        ⟨??⟩
        (iter ⟨??⟩ ⟨??⟩)))
(iter ⟨??⟩ ⟨??⟩))

```

## Решение
[code](../../src/chapter01/solution_30.rkt)  
[test](../../test/chapter01/test_30.rkt)
