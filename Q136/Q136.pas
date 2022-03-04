program Q136;

uses strutils;

var
    input: string;
begin
    write('Please enter a string: ');
    readln(string);
    writeln('The string in reversed order is ', ReverseString(string));
end.
