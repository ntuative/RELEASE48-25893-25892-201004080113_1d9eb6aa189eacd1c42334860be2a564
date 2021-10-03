package com.sulake.habbo.window.utils
{
   class AlertDialogCaption implements ICaption
   {
       
      
      private var var_336:Boolean;
      
      private var var_193:String;
      
      private var var_1183:String;
      
      function AlertDialogCaption(param1:String, param2:String, param3:Boolean)
      {
         super();
         var_193 = param1;
         var_1183 = param2;
         var_336 = param3;
      }
      
      public function get toolTip() : String
      {
         return var_1183;
      }
      
      public function set visible(param1:Boolean) : void
      {
         var_336 = param1;
      }
      
      public function get text() : String
      {
         return var_193;
      }
      
      public function get visible() : Boolean
      {
         return var_336;
      }
      
      public function set toolTip(param1:String) : void
      {
         var_1183 = param1;
      }
      
      public function set text(param1:String) : void
      {
         var_193 = param1;
      }
   }
}
