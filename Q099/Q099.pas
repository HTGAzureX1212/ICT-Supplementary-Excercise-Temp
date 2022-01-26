program Q099;
var
    randomInteger: integer;
    input: integer;
    guesses: integer;
begin
    randomize;
    randomInteger := random(100) + 1;
    
    writeln('I have a secret number in my mind: ');
    
    write('Enter your guess: ');
    readln(input);
    
    repeat begin
        if input > randomInteger then
        begin
            write('The secret number is smaller than your guess. Try again: ');
            readln(input);
        end
        else if input < randomInteger then
        begin
            write('The secret number is larger than your guess. Try again: ');
            readln(input);
        end;
        
        guesses := guesses + 1;
    end
    until input = randomInteger;
    
    writeln('Exactly! Well done.');
    writeln('Number of guesses = ', guesses);
end.
