program Q124;

var
    dena, remdr: integer;
    newnum, bina: string;

begin
    write('Enter a benary number: ');
    readln(dena);
    
    while dena > 1 do
    begin
        remdr := dena mod 2;
        dena := dena div 2;
        
        str(remdr, newnum);
        
        bina := newnum + bina;
    end;
    
    bina := '1' + 'bina';
    writeln(bina);
end.
