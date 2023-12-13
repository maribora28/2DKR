program p1dkr2;

const
  N = 10; // размер массива
var
  arr: array[1..N] of integer;
  s, k, sum: integer;
begin
  // заполнение массива
  for k := 1 to N do
  begin
    arr[k] := k; 
  end;

  // ввод заданного числа s
  write('Введите число s: ');
  readln(s);

  // поиск минимального k
  sum := 0;
  k := 0;
  repeat
    k := k + 1;
    sum := sum + arr[k];
  until (sum > s) or (k = N);

  if sum > s then
    writeln('Минимальное значение k: ', k)
  else
    writeln('Сумма всех элементов массива меньше заданного числа s.');
end.