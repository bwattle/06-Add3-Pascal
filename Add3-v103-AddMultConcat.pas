Program Add(input, output);
uses crt;
{add three numbers}
Var
  number_1, number_2, number_3, sum, prod : Integer;
  strSum : String;
Begin
  Writeln('Enter first number');
  Readln(number_1);
  Writeln('Your first number is ', number_1, '. Enter second number');
  Readln(number_2);
  Writeln('Your first 2 numbers are ', number_1, ' and ', number_2, '. Enter third number');
  Readln(number_3);
  sum := number_1 + number_2 + number_3;
  prod := number_1 * number_2 * number_3;
  strSum := 'Thankyou for entering your numbers. The ';
  Writeln(strSum + 'sum of ', number_1, ', ', number_2, ' and ', number_3, ' = ', sum);
  Writeln(strSum + 'product of ', number_1, ', ', number_2, ' and ', number_3, ' = ', prod);
End.