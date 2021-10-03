package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_1059:int = 0;
      
      private var var_1309:int = 0;
      
      private var var_2085:String = "";
      
      private var var_1060:int = 0;
      
      private var var_2131:String = "";
      
      private var var_2127:int = 0;
      
      private var var_1527:String = "";
      
      private var var_2130:int = 0;
      
      private var var_2128:int = 0;
      
      private var var_2087:String = "";
      
      private var var_2129:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         var_2130 = param1;
         var_2087 = param2;
         var_1527 = param3;
         var_2085 = param4;
         var_2131 = param5;
         if(param6)
         {
            var_1309 = 1;
         }
         else
         {
            var_1309 = 0;
         }
         var_2127 = param7;
         var_2128 = param8;
         var_1060 = param9;
         var_2129 = param10;
         var_1059 = param11;
      }
      
      public function getMessageArray() : Array
      {
         return [var_2130,var_2087,var_1527,var_2085,var_2131,var_1309,var_2127,var_2128,var_1060,var_2129,var_1059];
      }
      
      public function dispose() : void
      {
      }
   }
}
