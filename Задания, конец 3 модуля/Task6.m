#Задание из LMS 6
#Код проверен на работоспособность в GNU/Octave
#Автор: Павел Шляк
#Группа БИВ175

X = [213 215 217 219 221];
N = [7 12 12 9 5];

if length(X) != length(N)
  printf('The size of X does not match the size of n')
  return;
end

#Количество работников
n=sum(N);

#Математическое ожидание
summa = 0;
for i = 1:length(X)
  summa += X(i)*N(i);
endfor
ozh = summa/n
clear summa;
#Исправленная дисперсия
sq_sum = 0;
for index = 1:length(X)
  sq_sum += (X(index) - ozh)^2 * N(index);
endfor
isp_d=sq_sum/(n-1)
clear sq_sum;
#СКЗ
skz = sqrt(isp_d)
#Вариация
V=skz/ozh*100