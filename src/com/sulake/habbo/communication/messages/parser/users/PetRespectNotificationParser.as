package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.parser.inventory.pets.PetData;
   
   public class PetRespectNotificationParser implements IMessageParser
   {
       
      
      private var var_1761:int;
      
      private var var_1171:PetData;
      
      private var var_1804:int;
      
      public function PetRespectNotificationParser()
      {
         super();
      }
      
      public function get respect() : int
      {
         return var_1761;
      }
      
      public function get petData() : PetData
      {
         return var_1171;
      }
      
      public function flush() : Boolean
      {
         var_1171 = null;
         return true;
      }
      
      public function get petOwnerId() : int
      {
         return var_1804;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1761 = param1.readInteger();
         var_1804 = param1.readInteger();
         var_1171 = new PetData(param1);
         return true;
      }
   }
}
