1. Берем исходный код из папки `code` или с [GitHub](https://github.com/KarenWest/softwareSecurity/blob/master/wisdom-alt.c)
2. Компилируем код просто без всего, чтобы посмотреть как он раньше работал
   1. Запускаем `gcc code/wisdom-alt.c`
   2. Запускаем `./a.out`
   3. Вводим число больше 3 - получаем SegFault ![img1](./img/undefined-behavior-segfault.png)
   4. Перезапускам
   5. Вводим число 2
   6. Вводим строку больше 1024 символов - получаем SegFault ![img2](./img/address-segfault.png)
   7. Перезапускаем
   8. Вводим число 0, чтобы обратится по адресу `null` - получаем SegFault ![img2a](./img/nullref-segfault.png)
3. Компилируем код "безопасно" (сама лабораторная работа)
   1. Запускам `gcc -Wall -Wextra -Wextra -Warray-bounds -fstack-protector-strong -fsanitize=alignment,bool,bounds,builtin,float-cast-overflow,integer-divide-by-zero,nonnull-attribute,null,pointer-overflow,return,returns-nonnull-attribute,shift,signed-integer-overflow,unreachable,vla-bound,address -O2 code/wisdom-alt.c`
   2. Запускаем `./a.out`
   3. Вводим число больше 3 - получаем [ошибку с описанием того что произошло](./output/undefined-behavior-sanitizer.log) ![img3](./img/undefined-behavior-sanitizer.png)
   4. Перезапускаем 
   5. Вводим число 2
   6. Вводим строку больше 1024 символов - получаем [разноцветную ошибку с описанием того что произошло](./output/address-sanitizer.log) ![img4](./img/address-sanitizer.png)
   7. Перезапускаем
   8. Вводим число 0, чтобы обратится к адресу `null` - [получаем красивое описание ошибки](./output/nullref-sanitizer.log) ![img4a](./img/nullref-sanitizer.png) 
   9. В целом, самое главное это параметры `-fsanitize` - остальные не нужно, можно вообще их убрать
4. В теории, на этом всё, но по хорошему нужно
   1. Открываем прошлую лабы про wisdom-alt
   2. Выполняем все до получения `Achievement unlocked!`. Этого будет достаточно
   3. Если текущее поведение отличается от поведения в предыдущей лабе, то фотографируем, добавляем в отчет
   4. Дальше делать не нужно. Если получилось/не получилось с `Achievement unlocked!`, то для последующих задач результат будет тем же.
5. Собираем отчет
   1. Заполняем текст по примеру этого списка
   2. Делаем фотки. Всё нужное находится в `/img`
   3. Собираем всё в один док 