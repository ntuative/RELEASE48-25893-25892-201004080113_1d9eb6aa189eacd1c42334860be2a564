package com.sulake.habbo.catalog.purse
{
   public class Purse implements IPurse
   {
       
      
      private var var_2150:int = 0;
      
      private var var_2217:int = 0;
      
      private var var_1875:int = 0;
      
      private var var_2147:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function get pixels() : int
      {
         return var_2217;
      }
      
      public function set pixels(param1:int) : void
      {
         var_2217 = param1;
      }
      
      public function set clubDays(param1:int) : void
      {
         var_2150 = param1;
      }
      
      public function get credits() : int
      {
         return var_1875;
      }
      
      public function get clubDays() : int
      {
         return var_2150;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_2147 = param1;
      }
      
      public function set credits(param1:int) : void
      {
         var_1875 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return var_2147;
      }
   }
}
