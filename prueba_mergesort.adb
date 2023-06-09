with Ada.Integer_Text_Io,Ada.Text_Io, Merge_Sort;
use Ada.Integer_Text_Io,Ada.Text_Io;

procedure Prueba_Mergesort is

   subtype Indice is Integer range 1..8;
   
   procedure Putinc(X: in Integer) is
   begin
      put(x);
      end putinc;
   
   procedure Getinc(X: out Integer) is
   begin
      Get(X);
      end getinc;
   
   function Menor(X,Y: Integer) return Boolean is
   begin
      return x<Y;
      end menor;
   
   function Menorigual(X,Y: Integer) return Boolean is
   begin
      return x<=Y;
   end Menorigual;
   
   function Mayor(X,Y: Integer) return Boolean is
   begin
      return x>Y;
   end Mayor;
   
   package Mergeinc is new Merge_Sort(integer,indice,putinc,getinc,menor,menorigual,mayor);
   use Mergeinc;
   vector:tipovecc;
begin
   Leer(Vector);
   imprimir(vector);
   Ordmezcla(Vector,Indice'First,Indice'Last);
   imprimir(vector);
   end Prueba_Mergesort;

