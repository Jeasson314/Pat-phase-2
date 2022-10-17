unit Procedures;

interface

procedure encryption(password:string);

implementation
procedure encyption(password:string);
var vlength,loop,key,asciiNum:integer;
    Npassword:string;
begin
  vlength:=length(password);
  key:=(round(vlength));

  for loop := 1 to vlength do
    asciiNum :=ord(password[loop]);
    Npassword:=Npassword +chr(asciiNum+key);
 password:=Npassword;

end;

end.
