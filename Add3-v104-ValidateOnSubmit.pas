program Add(input, output);
uses crt;
{add three numbers}
var  strNo1, strNo2, strNo3 : string;
     number_1, number_2, number_3, sum, prod, Code : integer;
     strSum : string;
     boolValid : Boolean;    {True if Valid integer. False if NOT an iteger}
begin
  repeat
    boolValid := True;
    writeln('Enter first number');
    readln(strNo1);
    writeln('Your first number is ', strNo1, '. Enter second number');
    readln(strNo2);
    writeln('Your first 2 numbers are ', strNo1, ' and ', strNo2, '. Enter third number');
    readln(strNo3);
    Val(strNo1, number_1, Code); {Val converts a string to a number with Code = 0 if successful}
    if (Code <> 0) then begin
        boolValid := False;
    end;
    Val(strNo2, number_2, Code);
    if (Code <> 0) then begin
        boolValid := False;
    end;
    Val(strNo3, number_3, Code);
    if (Code <> 0) then begin
        boolValid := False;
    end;
    if (boolValid = False) then begin
        writeln('One of your entries is NOT a number. Please re-enter them all!');
    end;
  until boolValid = True;
    sum := number_1 + number_2 + number_3;
    prod := number_1 * number_2 * number_3;
    strSum := 'Thankyou for entering your numbers. The '; {to show the "+" for string concatenation}
    writeln(strSum + 'sum of ',  number_1, ', ', number_2, ' and ', number_3, ' = ', sum); {note +}
    writeln(strSum + 'product of ', number_1, ', ', number_2, ' and ', number_3, ' = ', prod);
end.