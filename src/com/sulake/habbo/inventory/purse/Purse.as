package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_2151:Boolean = false;
      
      private var var_2148:int = 0;
      
      private var var_2150:int = 0;
      
      private var var_2149:int = 0;
      
      private var var_1515:int = 0;
      
      private var var_2147:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function set creditBalance(param1:int) : void
      {
         var_1515 = Math.max(0,param1);
      }
      
      public function get clubPastPeriods() : int
      {
         return var_2148;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return var_2151;
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         var_2151 = param1;
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         var_2148 = Math.max(0,param1);
      }
      
      public function set clubDays(param1:int) : void
      {
         var_2150 = Math.max(0,param1);
      }
      
      public function get creditBalance() : int
      {
         return var_1515;
      }
      
      public function set pixelBalance(param1:int) : void
      {
         var_2149 = Math.max(0,param1);
      }
      
      public function get clubDays() : int
      {
         return var_2150;
      }
      
      public function get pixelBalance() : int
      {
         return var_2149;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_2147 = Math.max(0,param1);
      }
      
      public function get clubPeriods() : int
      {
         return var_2147;
      }
   }
}
