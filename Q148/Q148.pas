program Q148;
const
    DAY = 'MonTueWedThuFriSatSun';
var
    dayIndex: integer;
begin
    write('Enter a number (1 – 7): ');
    readln(dayIndex);
    
    while (dayIndex < 1) and (dayIndex > 7) do
    begin
        write('Not valid. Enter again: ');
        readln(dayIndex);
    end;
    
    writeln('The day ', dayIndex, ' of a week is ', copy(DAY, 1 + 3 * (dayIndex - 1), 3 * (dayIndex) - (3 * (dayIndex - 1))));
end.
