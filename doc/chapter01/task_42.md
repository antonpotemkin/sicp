## Задание

Пусть f и g — две одноаргументные функции. По определению, композиция (composition) f и g есть функция x 􏰀→ f(g(x)). Определите процедуру compose которая реализует композицию. Например, если inc — процедура, добавляющая к своему аргументу 1,

```
((compose square inc) 6)
49
```

## Решение
[code](../../src/chapter01/solution_42.rkt)  
[test](../../test/chapter01/test_42.rkt)