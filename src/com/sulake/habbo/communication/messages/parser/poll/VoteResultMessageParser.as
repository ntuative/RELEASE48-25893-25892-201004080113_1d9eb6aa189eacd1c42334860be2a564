package com.sulake.habbo.communication.messages.parser.poll
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoteResultMessageParser implements IMessageParser
   {
       
      
      private var var_1170:int;
      
      private var var_1044:String;
      
      private var var_644:Array;
      
      private var var_994:Array;
      
      public function VoteResultMessageParser()
      {
         super();
      }
      
      public function get votes() : Array
      {
         return var_644.slice();
      }
      
      public function flush() : Boolean
      {
         var_1044 = "";
         var_994 = [];
         var_644 = [];
         var_1170 = 0;
         return true;
      }
      
      public function get totalVotes() : int
      {
         return var_1170;
      }
      
      public function get question() : String
      {
         return var_1044;
      }
      
      public function get choices() : Array
      {
         return var_994.slice();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1044 = param1.readString();
         var_994 = [];
         var_644 = [];
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            param1.readInteger();
            var_994.push(param1.readString());
            var_644.push(param1.readInteger());
            _loc3_++;
         }
         var_1170 = param1.readInteger();
         return true;
      }
   }
}
