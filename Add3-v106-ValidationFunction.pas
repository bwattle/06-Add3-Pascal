Program Add(input, output);       {add and multiply three numbers}
Uses crt, SysUtils;   {v5 - add an additional library - note 95 (v4) lines reduces to 49} 
Var
  strRead, strSum : String;
  returnNo, No1, No2, No3, sum, prod, Code : Integer;
  boolValid : Boolean; {True if Valid integer. False if NOT an integer}
Procedure validate(fst: Integer);   {fst means First, Second or Third}
Begin
  Repeat
    boolValid := True;
    Writeln('Enter number ', fst, ' so that it is even and between 0 and 40.');
    Readln(strRead);
    Val(strRead, returnNo, Code); {Val converts a string to a number with Code = 0 if successful}
    If (Code <> 0) Then
      Begin
        boolValid := False;
        Writeln('Your entry of ', returnNo, ' is NOT a "counting number". Please re-enter it!');
      End
    Else
      If returnNo < 0 Then
        Begin
          boolValid := False;
          Writeln('Your entry of ', returnNo, ' is less than 0. Please re-enter it!');
        End;
    If returnNo > 40 Then
      Begin
        boolValid := False;
        Writeln('Your entry of ', returnNo, ' is greater than 40. Please re-enter it!');
      End;
    If returnNo Mod 2 <> 0 Then
      Begin
        boolValid := False;
        Writeln('Your entry of ', returnNo, ' is NOT even. Please re-enter it!');
      End;
  Until boolValid = True;
End;
Begin  {Main programme}
  validate(1);
  No1 := returnNo;
  validate(2);
  No2 := returnNo;
  validate(3);
  No3 := returnNo;
  sum := No1 + No2 + No3;
  prod := No1 * No2 * No3;
  strSum := 'Thankyou for entering your numbers. The '; {to show the "+" for string concatenation}
  Writeln(strSum + 'sum of ', No1, ', ', No2, ' and ', No3, ' = ', sum); {note +}
  Writeln('The product of ', No1, ', ', No2, ' and ', No3, ' = ', prod);
End.
