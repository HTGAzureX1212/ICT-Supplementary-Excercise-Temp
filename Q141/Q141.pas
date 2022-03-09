{$H+}

program Q141;

uses strutils;

label alreadyGood;

var
    bin: string;
    hex: pchar;

function ValidBinary(binString: string): boolean;
var
    i: integer;
begin
    for i := 1 to length(binString) do
    begin
        if binString[i] in ['0', '1'] then
            continue
        else
            ValidBinary := false;
    end;
    
    ValidBinary := true;
end;

begin
    write('Enter a binary number: ');
    readln(bin);
    
    if ValidBinary(bin) then
        goto alreadyGood;
    
    repeat
    begin
        write('Invalid binary. Enter a binary number: ');
        readln(bin);
    end until ValidBinary(bin);
    
    alreadyGood:
    
    getmem(hex, length(bin) * 2);
    
    bintohex(pchar(bin), hex, length(bin) * 2);
    
    writeln('The corresponding hexadecimal number is ', StrPas(hex));
end.
