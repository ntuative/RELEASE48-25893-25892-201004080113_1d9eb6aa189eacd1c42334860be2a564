package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubGiftData
   {
       
      
      private var var_2050:int;
      
      private var var_2049:Boolean;
      
      private var _offerId:int;
      
      private var var_1943:Boolean;
      
      public function ClubGiftData(param1:IMessageDataWrapper)
      {
         super();
         _offerId = param1.readInteger();
         var_2049 = param1.readBoolean();
         var_2050 = param1.readInteger();
         var_1943 = param1.readBoolean();
      }
      
      public function get isSelectable() : Boolean
      {
         return var_1943;
      }
      
      public function get monthsRequired() : int
      {
         return var_2050;
      }
      
      public function get isVip() : Boolean
      {
         return var_2049;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
   }
}
