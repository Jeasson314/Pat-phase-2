unit patprocedure;

interface

procedure encryption(password:string);
implementation

procedure encryption(password: string);
var vlength,loop,asciiNum:integer;
    result,Npassword:string;
begin
  vlength:=length(password);

  for loop := 1 to vlength do
    begin
    asciiNum :=ord(password[loop]);
    Npassword:=Npassword +chr(asciiNum+vlength);
    end;
result:=Npassword;
end;
end.
