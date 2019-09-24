Program tiposSeguros;
  Type Arreglo = Array[1..10] of Integer;
  var
    a : Arreglo;
    i : Integer;
  begin
    for i:=1 to 2000 do
      begin
        a[i] := 1;
        writeln(a[i],' : ',i);
      end;
  end.
