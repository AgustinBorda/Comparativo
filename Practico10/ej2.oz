local Z R X Y P Q in
   X= 1
   Z = thread fun {P}
	     Y = X
	     X+1 
	  end
      {P}
   end
   R = thread fun {Q} Y end
       {Q}end
   {Browse X}
   {Browse Y}
end
