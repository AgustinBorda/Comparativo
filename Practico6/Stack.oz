declare
proc {Push E P}
   P:=E|@P
end
fun {Pop P}
   case @P of
      X|Xs then P:=Xs X
   end
end
proc {NewStack P}
   {NewCell nil P}
end
local Pila in
   {NewStack Pila}
   {Push 0 Pila}
   {Browse @Pila}
   {Push 1 Pila}
   {Browse @Pila}
   {Browse {Pop Pila}}
   {Browse @Pila}
end