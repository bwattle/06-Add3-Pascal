Program Add(input, output); {add and multiply three numbers}
Uses crt, SysUtils; {additional sysUtils library for concatetion of strings and numbers}
Var
  strRead, strSum : String;
  returnNo, sum, Code, i : Integer;
  prod: Longint;
  boolValid : Boolean; {True if Valid integer. False if NOT an integer}
  TS : TTimeStamp; {For display of today's date as a time stamp}
  startTime, endTime, lapseTime : Comp; {64 bit integer, allowing +- numbers to 2*10^64}

Procedure validate(fst: Integer); {fst means First, Second or Third}
Begin
  Repeat
    boolValid := True;
    Writeln('Enter number ', fst, ' so that it is even and between 0 and 40. TYPE 0 TO STOP.');
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
  If returnNo > 0 Then
    Begin
      sum := sum + returnNo;
      prod := prod * returnNo;
      strSum := strSum + IntToStr(returnNo) + ', '; {this build up the list of chosen numbers}
    End
End;
Begin {Main programme}
  startTime := TimeStampToMSecs(DateTimeToTimeStamp(Now));
  TS := MSecsToTimeStamp(startTime); {converts an int64 number to a date/time format}
  strSum := 'For numbers ';
  prod := 1;
  returnNo := -1;
  strSum := 'For numbers ';
  prod := 1;
  i := 1;
  While returnNo <> 0 Do
    Begin
      validate(i);
      i := i+1;
    End;
  Writeln(strSum + 'the sum is ', sum); {note + for the string join}
  Writeln( 'and the product is ', prod);
  endTime := TimeStampToMSecs(DateTimeToTimeStamp(Now));
  lapseTime := (endTime - startTime);
  Writeln(' ');  {one way to create a line space - the other way is #13#10 below}
  Writeln('System date and time is ', DateTimeToStr(TimeStampToDateTime(TS))); {Formatted as string}
  Writeln('Time elapsed to 2 decimal places: ', Int(lapseTime)/1000: 1: 2, ' secs.');
 {the following messages are for interest in Pascal time functions - NOT requirements}
  Writeln(#13#10 + 'Start time in milliseconds since 1/1/0001 is ', startTime);
  Writeln('In days, this is ',startTime/(1000*3600*24),
  ' in scientific notation or ',startTime/(1000*3600*24): 1: 2);
End.

