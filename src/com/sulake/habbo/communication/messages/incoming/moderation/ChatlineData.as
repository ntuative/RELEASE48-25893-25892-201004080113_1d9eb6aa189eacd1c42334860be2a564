package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_1495:String;
      
      private var var_1954:int;
      
      private var var_1955:int;
      
      private var var_1956:int;
      
      private var var_1953:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         var_1954 = param1.readInteger();
         var_1956 = param1.readInteger();
         var_1955 = param1.readInteger();
         var_1953 = param1.readString();
         var_1495 = param1.readString();
      }
      
      public function get msg() : String
      {
         return var_1495;
      }
      
      public function get hour() : int
      {
         return var_1954;
      }
      
      public function get minute() : int
      {
         return var_1956;
      }
      
      public function get chatterName() : String
      {
         return var_1953;
      }
      
      public function get chatterId() : int
      {
         return var_1955;
      }
   }
}
