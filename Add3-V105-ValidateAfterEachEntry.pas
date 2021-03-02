Program Add(input, output);
Uses crt; {v4 - add three numbers, validating each at the time of entry - note 95 lines}
Var
  strNo1, strNo2, strNo3, strThanks : String;
  No1, No2, No3, sum, prod, Code : Integer;
  boolValid : Boolean; {True if Valid integer. False if NOT an iteger}
Begin
  Repeat
    boolValid := True;
    Writeln('Enter first number');
    Readln(strNo1);
    Val(strNo1, No1, Code); {Val converts a string to a number with Code = 0 if successful}
    If (Code <> 0) Then
      Begin
        boolValid := False;
        Writeln('Your entry is NOT a "counting number". Please re-enter it!');
      End
    Else
      If No1 < 0 Then
        Begin
          boolValid := False;
          Writeln('Your entry is less than 0. Please enter an even number between 1 and 40!');
        End;
    If No1 > 40 Then
      Begin
        boolValid := False;
        Writeln('Your entry is greater than 40. Please enter an even number between 1 and 40!');
      End;
    If No1 Mod 2 <> 0 Then
      Begin
        boolValid := False;
        Writeln('Your entry is NOT even. Please enter an even number between 1 and 40!');
      End;
  Until boolValid = True;
  Repeat
    boolValid := True;
    Writeln('Your first number is ', strNo1, '. Enter second number');
    Readln(strNo2);
    Val(strNo2, No2, Code);
    If (Code <> 0) Then
      Begin
        boolValid := True;
        Writeln('Your entry is NOT a "counting number". Please re-enter it!');
      End
    Else
      If No2 < 0 Then
        Begin
          boolValid := False;
          Writeln('Your entry is less than 0. Please enter an even number between 1 and 40!');
        End;
    If No2 > 40 Then
      Begin
        boolValid := False;
        Writeln('Your entry is greater than 40. Please enter an even number between 1 and 40!');
      End;
    If No2 Mod 2 <> 0 Then
      Begin
        boolValid := False;
        Writeln('Your entry is NOT even. Please enter an even number between 1 and 40!');
      End;
  Until boolValid = True;
  Repeat
    boolValid := True;
    Writeln('Your first 2 numbers are ', strNo1, ' and ', strNo2, '. Enter third number');
    Readln(strNo3);
    Val(strNo3, No3, Code);
    If (Code <> 0) Then
      Begin
        boolValid := False;
        Writeln('Your entry is NOT a "counting number". Please re-enter it!!');
      End
    Else
      If No3 < 0 Then
        Begin
          boolValid := False;
          Writeln('Your entry is less than 0. Please enter an even number between 1 and 40!');
        End;
    If No3 > 40 Then
      Begin
        boolValid := False;
        Writeln('Your entry is greater than 40. Please enter an even number between 1 and 40!');
      End;
    If No3 Mod 2 <> 0 Then
      Begin
        boolValid := False;
        Writeln('Your entry is NOT even. Please enter an even number between 1 and 40!');
      End;
  Until boolValid = True;
  sum := No1 + No2 + No3;
  prod := No1 * No2 * No3;
  strThanks := 'Thankyou for entering your numbers. The ';
  {to show the "+" for string concatenation}
  Writeln(strThanks + 'sum of ', No1, ', ', No2, ' and ', No3, ' = ', sum); {note +}
  Writeln(strThanks + 'product of ', No1, ', ', No2, ' and ', No3, ' = ', prod);
End.
