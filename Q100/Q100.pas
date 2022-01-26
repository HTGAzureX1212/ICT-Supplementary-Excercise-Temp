program Q100;
var
    generatedNums: integer;
    val: integer;
begin
    randomize;

    write('Your lucky numbers are ');
    generatedNums := 0;
    
    repeat
        val := random(49) + 1;
        write(val, ' ');
        
        generatedNums := generatedNums + 1;
    until generatedNums = 6;
    
    writeln;
end.
