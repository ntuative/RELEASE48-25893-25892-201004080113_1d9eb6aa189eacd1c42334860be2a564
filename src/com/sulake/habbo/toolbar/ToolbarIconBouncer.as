package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_2030:Number;
      
      private var var_589:Number = 0;
      
      private var var_2031:Number;
      
      private var var_588:Number;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         var_2030 = param1;
         var_2031 = param2;
      }
      
      public function update() : void
      {
         var_588 += var_2031;
         var_589 += var_588;
         if(var_589 > 0)
         {
            var_589 = 0;
            var_588 = var_2030 * -1 * var_588;
         }
      }
      
      public function reset(param1:int) : void
      {
         var_588 = param1;
         var_589 = 0;
      }
      
      public function get location() : Number
      {
         return var_589;
      }
   }
}
