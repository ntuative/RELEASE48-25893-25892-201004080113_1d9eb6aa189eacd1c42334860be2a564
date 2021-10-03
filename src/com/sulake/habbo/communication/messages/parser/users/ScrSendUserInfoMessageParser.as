package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
       
      
      private var var_2106:int;
      
      private var var_1186:String;
      
      private var var_2107:int;
      
      private var var_2109:int;
      
      private var var_2108:int;
      
      private var var_2110:Boolean;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function get productName() : String
      {
         return var_1186;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return var_2110;
      }
      
      public function get responseType() : int
      {
         return var_2109;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return var_2107;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1186 = param1.readString();
         var_2107 = param1.readInteger();
         var_2106 = param1.readInteger();
         var_2108 = param1.readInteger();
         var_2109 = param1.readInteger();
         var_2110 = param1.readBoolean();
         return true;
      }
      
      public function get memberPeriods() : int
      {
         return var_2106;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return var_2108;
      }
   }
}
