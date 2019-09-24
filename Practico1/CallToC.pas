Program CallToC;
  Var x:integer;
  external name 'y';
  Procedure inc_x;
  external name 'inc_y';
  begin {$L inc.o}    
    x := 1;
    inc_x;
    writeln('x=',x)
  end.
