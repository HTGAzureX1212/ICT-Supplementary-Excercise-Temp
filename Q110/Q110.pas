program Q110;

uses strutils;
label alreadyGood;
var
    layers: integer;
    i: integer;

begin
    writeln('This program prints out a Christmas tree.');
    write('How many layers? (> 2): ');
    readln(layers);
    
    if layers > 2 then
        goto alreadyGood;
    
    repeat begin
        write('Invalid input. Enter again: ');
        readln(layers);
    end until layers > 2;
    
    alreadyGood:
    
    for i := 0 to layers - 1 do
    begin
        write(dupestring(' ', layers - i));
        writeln(dupestring('*', 2 * i + 1));
    end;
    
    write(dupestring(' ', layers));
    writeln('*');
    
    writeln('Merry Christmas!');
end.
