local Fib FibList Xs Ys Mostrar in
   fun {Fib N}
      local FibAux in
	 fun {FibAux N Acc1 Acc2}
	    if N==0 then Acc1
	    elseif N<2 then Acc2
	    else
	       local Y in
		  Y = Acc1 + Acc2 
		  {FibAux N-1 Acc2 Y}
	       end       
	    end
	 end
	 {FibAux N 0 1}
      end
   end
   Xs =  thread fun {FibList X Y}
	     if X<Y then nil
	     else  { Fib X}| {FibList X+1 Y}
	     end
	  end
     {FibList 0 5}
   end
   Ys = thread fun {Mostrar XS}
	     case XS of X |Xr then {Browse X} {Mostrar Xr}
	     [] nil then nil
	     end
	       end
	   {Mostrar Xs}
	end
end