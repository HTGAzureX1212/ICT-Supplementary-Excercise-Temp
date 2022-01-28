program Q102;
var
    operation: char;
    choice: char;
   
    randomLhs, randomRhs: integer;
    correct: integer;
    questions: integer;
   
    ans: integer;
   
function Add(lhs, rhs: integer): boolean;
begin
    write(lhs, ' + ', rhs, ' = ');
    readln(ans);
    
    Add := (lhs + rhs) = ans;
end;

function Minus(lhs, rhs: integer): boolean;
begin
    write(lhs, ' - ', rhs, ' = ');
    readln(ans);
    
    Minus := (lhs - rhs) = ans;
end;

function Mul(lhs, rhs: integer): boolean;
begin
    write(lhs, ' * ', rhs, ' = ');
    readln(ans);
    
    Mul := (lhs * rhs) = ans;
end;

function Divide(lhs, rhs: integer): boolean;
begin
    write(lhs, ' / ', rhs, ' = ');
    readln(ans);
    
    Divide := (lhs div rhs) = ans;
end;
   
begin
    randomize;
    
    correct := 0;
    questions := 0;

    write('What type of operation do you want to practice (+, -, *, /): ');
    readln(operation);
    
    repeat begin
        randomLhs := random(100) + 1;
        randomRhs := random(100) + 1;
    
        case (operation) of
            '+': begin
                if Add(randomLhs, randomRhs) then
                begin
                    correct := correct + 1;
                    write('Good! Do you want to try again? (Y/N) ');
                end
                else
                    write('Wrong! Do you want to try again? (Y/N) ');
            end;
            '-': begin
                if Minus(randomLhs, randomRhs) then
                begin
                    correct := correct + 1;
                    write('Good! Do you want to try again? (Y/N) ');
                end
                else
                    write('Wrong! Do you want to try again? (Y/N) ');
            end;
            '*': begin
                if Mul(randomLhs, randomRhs) then
                begin
                    correct := correct + 1;
                    write('Good! Do you want to try again? (Y/N) ');
                end
                else
                    write('Wrong! Do you want to try again? (Y/N) ');
            end;
            '/': begin
                if Divide(randomLhs, randomRhs) then
                begin
                    correct := correct + 1;
                    write('Good! Do you want to try again? (Y/N) ');
                end
                else
                    write('Wrong! Do you want to try again? (Y/N) ');
            end;
        end;
        
        questions := questions + 1;
        
        readln(choice);
    end
    until choice in ['N', 'n'];
    
    writeln('You have answered ', questions, 'questions. ', correct, ' right and ', questions - correct, ' wrong.');
    writeln('Score = ', (correct / questions) * 100:0:1, '%');
end.
