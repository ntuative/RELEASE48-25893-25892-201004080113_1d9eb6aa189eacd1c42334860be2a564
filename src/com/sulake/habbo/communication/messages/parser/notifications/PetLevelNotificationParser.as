package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_430:String;
      
      private var var_1745:int;
      
      private var var_1787:String;
      
      private var var_1032:int;
      
      private var var_1217:int;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return var_1217;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1217 = param1.readInteger();
         var_1787 = param1.readString();
         var_1745 = param1.readInteger();
         var_430 = param1.readString();
         var_1032 = param1.readInteger();
         return true;
      }
      
      public function get petName() : String
      {
         return var_1787;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get figure() : String
      {
         return var_430;
      }
      
      public function get petType() : int
      {
         return var_1032;
      }
      
      public function get level() : int
      {
         return var_1745;
      }
   }
}
