package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_2056:String;
      
      private var var_730:String;
      
      private var var_1546:int;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         var_1546 = param1.readInteger();
         var_2056 = param1.readString();
         var_730 = param1.readString();
      }
      
      public function get gender() : String
      {
         return var_730;
      }
      
      public function get figureString() : String
      {
         return var_2056;
      }
      
      public function get slotId() : int
      {
         return var_1546;
      }
   }
}
