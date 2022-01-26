program Q101;
label alreadyGood, alreadyGood2;
var
    lower, upper: integer;
    iteration: integer;
begin
    write('Please enter the lower limit (100 - 200): ');
    readln(lower);
    
    if (lower >= 100) or (lower <= 200) then
        goto alreadyGood;
    
    repeat begin
        write('Not within the range. Please enter again (100 - 200): ');
        readln(lower);
    end
    until (lower >= 100) or (lower <= 200);
    
    alreadyGood:
    
    write('Please enter the upper limit (100 - 200): ');
    readln(upper);
    
    if (upper > lower) or (upper >= 100) or (upper <= 200) then
        goto alreadyGood2;
    
    repeat begin
        write('Not within the range or smaller than lower limit. Please enter again (100 - 200): ');
        readln(upper);
    end
    until (upper > lower) or (upper >= 100) or (upper <= 200);
    
    alreadyGood2:
    
    write('The multiples of 9 from ', lower, ' to ', upper, ' are: ');
    
    for iteration := lower to upper do
    begin
        if iteration mod 9 = 0 then
            write(iteration, ' ');
    end;
    
    writeln;
end.
