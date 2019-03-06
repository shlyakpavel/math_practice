#Задание из LMS 4
#Код проверен на работоспособность в GNU/Octave
#Автор: Павел Шляк


IN = [10, 20, 20, 5, 15, 20, 5, 10, 20, 5]
#Сортировка
SORTED_DATA = sort(IN);
#Поиск уникальныз элементов
VALUES=unique(IN);
#Подсчёт количества вхождений
FREQ=histc( IN, VALUES );
#Выведем красивый график, как в примере
plot(VALUES, FREQ);
#Размер исходного массива
n=length(IN);
#Выборочное среднее
vs=sum(VALUES.*FREQ)/n;
#Исправленная дисперсия
sq_sum = 0
for index = 1:length(VALUES)
  sq_sum += (VALUES(index) - vs)^2 * FREQ(index);
endfor
isp_d=sq_sum/(n-1)
clear sq_sum;
#Исправленное среднеквадратичное
is=sqrt(isp_d)
#Мода
[a, b] = sort(FREQ, 'descend');
moda = VALUES(b(1))
#Медиана
Me = median(IN)
#Вариация
V = is/vs*100
#Ассиметрия
cub_sum = 0
for index = 1:length(VALUES)
  cub_sum += (VALUES(index) - vs)^3 * FREQ(index);
endfor
As = cub_sum/(n*is^3)