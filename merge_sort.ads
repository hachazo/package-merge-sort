with Vector;

generic
   

   type Tipoelemento is private;
   type Indice is (<>);
   with procedure Put (X: in Tipoelemento);   --por el vector
   with procedure Get (X: out Tipoelemento);  --por el vector
   with function "<" (A,B: in Tipoelemento) return Boolean;
   with function "<=" (A,B: in Tipoelemento) return Boolean;
   with function ">" (A,B: in Tipoelemento) return Boolean;
   
   package Merge_sort is
      
     
      package Vec is new Vector(Tipoelemento, Indice, put,get);
      use Vec;
      type Tipovecc is new Tipovec;
      
      procedure Ordmezcla (Datos: in out Tipovecc; Primero, Ultimo: in Indice);
      
      private
         
      procedure Mezclar (Datos: in out Tipovecc; Izqprim, Izqult, Derprim, Derult: in Indice);
      
   end Merge_sort;
   
--   subtype Indice is Integer range 1..8;
--   
--   procedure Putinc(X: in Integer) is
--   begin
--      put(x);
--      end putinc;
--   
--   procedure Getinc(X: out Integer) is
--   begin
--      Get(X);
--      end getinc;
--   
--   function Menor(X,Y: Integer) return Boolean is
--   begin
--      return x<Y;
--      end menor;
--   
--   function Menorigual(X,Y: Integer) return Boolean is
--   begin
--      return x<=Y;
--   end Menorigual;
--   
--   function Mayor(X,Y: Integer) return Boolean is
--   begin
--      return x>Y;
--   end Mayor;
--   
--   package Mergeinc is new Merge_Sort(integer,indice,putinc,getinc,menor,menorigual,mayor);
--   use Mergeinc;
--   vector:tipovecc;
--begin
--   Leer(Vector);
--   imprimir(vector);
--   Ordmezcla(Vector,Indice'First,Indice'Last);
--   imprimir(vector);
