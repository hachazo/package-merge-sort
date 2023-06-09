package body Merge_sort is
   

procedure Mezclar (Datos: in out Tipovecc; Izqprim, Izqult, Derprim, Derult: in Indice) is
   Temp: Tipovecc;
   Ind: Integer;
   Izqactual, Deractual: Integer;
begin
   Izqactual:= indice'pos(izqprim);
   Deractual:= indice'pos(Derprim);
   Ind:= indice'pos(Izqprim);
   while Izqactual <= indice'pos(Izqult) and Deractual <= indice'pos(Derult) loop
      if Datos(indice'val(Izqactual)) < Datos(indice'val(Deractual)) then
         Temp(indice'val(Ind)):= Datos (indice'val(Izqactual));
         Izqactual:= Izqactual+1;
      else
         Temp(indice'val(Ind)):= Datos(indice'val(Deractual));
         Deractual:=Deractual+1;
      end if;
      Ind:=Ind+1;
   end loop;
   while Izqactual <= indice'pos(Izqult) loop
      Temp(indice'val(Ind)):= Datos (indice'val(Izqactual));
      Izqactual:= Izqactual +1;
      Ind:= Ind+1;
   end loop;
   while DerActual <= indice'pos(Derult) loop
Temp(indice'val(Ind)):= Datos (indice'val(Deractual));
DerActual:= DerActual +1;
Ind:=Ind +1;
   end loop;
   
   for Ind in indice'pos(Izqprim)..indice'pos(Derult) loop
      Datos(indice'val(Ind)):= Temp(Indice'val(ind));
   end loop;
end Mezclar;



procedure Ordmezcla (Datos: in out Tipovecc; Primero, Ultimo: Indice) is
   Mitad: Indice;
   aux:integer;
begin
   if Primero < Ultimo then
      aux:=(indice'pos(primero) + indice'pos(ultimo))/2;
      Mitad:= Indice'Val(Aux); --Ordena el sub array izquierdo
         Ordmezcla(Datos, Primero, Mitad); --Ordena el sub array derecho
         Ordmezcla(Datos, Indice'Succ(Mitad), Ultimo);
      Mezclar(Datos, Primero, Mitad, Indice'Succ(Mitad), Ultimo);
   end if;
end Ordmezcla;



end Merge_sort;

