package com.sulake.habbo.communication.messages.parser.availability
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class AvailabilityStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1085:Boolean;
      
      private var var_1250:Boolean;
      
      public function AvailabilityStatusMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1085 = param1.readInteger() > 0;
         var_1250 = param1.readInteger() > 0;
         return true;
      }
      
      public function get isOpen() : Boolean
      {
         return var_1085;
      }
      
      public function get onShutDown() : Boolean
      {
         return var_1250;
      }
      
      public function flush() : Boolean
      {
         var_1085 = false;
         var_1250 = false;
         return true;
      }
   }
}
