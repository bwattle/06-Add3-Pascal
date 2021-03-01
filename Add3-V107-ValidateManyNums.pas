Program Add(input, output); {add and multiply an unlimited number of numbers}
Uses crt, SysUtils;
Var
  strRead, strSum : String;
  chrNext : Char;            { y if the user wants another number}
  returnNo, sum, Code, i : Integer;
  prod: Longint;
  boolValid : Boolean; {True if Valid integer. False if NOT an integer}
Procedure validate(fst: Integer); {fst means First, Second or Third}
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
  sum := sum + returnNo;
  prod := prod * returnNo;
  strSum := strSum + IntToStr(returnNo) + ', '; {this build up the list of chosen numbers}
End;
Begin {Main programme}
  strSum := 'For numbers ';
  prod := 1;
  chrNext := 'y';
  i := 1;
  While chrNext = 'y' Do
    Begin
      validate(i);
      i := i+1;
      Writeln('Type y if want another number.');
      Readln(chrNext);
    End;
  Writeln(strSum + 'the sum is ', sum); {note + for the string join}
  Writeln(strSum + 'the product is ', prod);
End.