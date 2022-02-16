program Q121;

uses Math;

var
    coefficientXSquared, coefficientX, constantTerm: integer;
    continue: boolean;
    delta: integer;
    realSolutions: integer;
    x1, x2: double;
    
label NoRealRoots;

procedure ComputeSolutions(a, b, c: double; delta: integer; var outX1, outX2: double);
begin
    if delta = 0 then
    begin
        outX1 := -b / 2 * a;
        outX2 := -b / 2 * a;
    end
    else if delta > 0 then
    begin
        outX1 := (-b + delta ** 0.5) / 2 * a;
        outX2 := (-b - delta ** 0.5) / 2 * a;
    end;
end;

procedure ContinuePrompt(var outContinue: boolean);
var
   prompt: char;
begin
    write('Continue (Y/N)? ');
    readln(prompt);
    
    outContinue := prompt in ['Y', 'y'];
end;

procedure Discriminant(a, b, c: integer; var out: integer);
begin
    out := b * b - 4 * a * c
end;

procedure IoStdin(var aOut, bOut, cOut: integer);
label alreadyGood;
begin
    write('Value of A? ');
    readln(aOut);
    
    if aOut <> 0 then
        goto alreadyGood;
    
    repeat
    begin
        writeln('A MUST BE NON-ZERO');
        write('Value of A? ');
        readln(aOut);
    end until aOut <> 0;
    
    alreadyGood:
    write('Value of B? ');
    readln(bOut);
    
    write('Value of C? ');
    readln(cOut);
end;

procedure NumberOfRealSolutions(delta: integer; var outRealSolutions: integer);
begin
    if delta < 0 then
    begin
        writeln('NO REAL ROOTS');
        outRealSolutions := 0;
    end
    else if delta = 0 then
    begin
        writeln('TWO EQUAL REAL ROOTS');
        outRealSolutions := 1;
    end
    else
    begin
        writeln('TWO DISTINCT REAL ROOTS');
        outRealSolutions := 2;
    end;
end;

procedure PrintSolutions(x1, x2: double; delta: integer);
begin
    if delta = 0 then
        writeln('X = ', x1:0:1)
    else
        writeln('X = ', x1:0:1, ' OR ', x2:0:1);
end;

begin
    repeat
    begin
        writeln('--------- SOLVE QUADRATIC EQUATION ---------');
        IoStdin(coefficientXSquared, coefficientX, constantTerm);
        Discriminant(coefficientXSquared, coefficientX, constantTerm, delta);
        NumberOfRealSolutions(delta, realSolutions);
        
        if realSolutions = 0 then
           goto NoRealRoots;
        
        ComputeSolutions(coefficientXSquared, coefficientX, constantTerm, delta, x1, x2);
        
        NoRealRoots:
        
        ContinuePrompt(continue);
    end until (not continue);
end.
