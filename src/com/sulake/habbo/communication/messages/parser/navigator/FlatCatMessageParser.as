package com.sulake.habbo.communication.messages.parser.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class FlatCatMessageParser implements IMessageParser
   {
       
      
      private var var_432:int;
      
      private var var_1233:int;
      
      public function FlatCatMessageParser()
      {
         super();
      }
      
      public function get flatId() : int
      {
         return var_432;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_432 = param1.readInteger();
         var_1233 = param1.readInteger();
         return true;
      }
      
      public function flush() : Boolean
      {
         var_432 = 0;
         var_1233 = 0;
         return true;
      }
      
      public function get nodeId() : int
      {
         return var_1233;
      }
   }
}
