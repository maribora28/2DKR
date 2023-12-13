program p2dkr2;

var
  str: string;
  podstr: array[1..1000] of string;
  count, i, j, k: integer;
  unique: boolean; 
  a: string;

begin
  // ввод строки
  write('Введите строку: ');
  readln(str);

  // поиск уникальных подстрок
  count := 0;
  for i := 1 to length(str) - 2 do
  begin
    unique := true;
    a := ”;
    for j := i to i + 2 do
    begin
      a := a + str[j];
    end;
    for k := 1 to count do
    begin
      if a = podstr[k] then
      begin
        unique := false;
        break;
      end;
    end;
    if unique then
    begin
      count := count + 1;
      podstr[count] := a;
    end;
  end;

  // вывод результата
  writeln('Количество уникальных подстрок из трех символов: ', count);
end.