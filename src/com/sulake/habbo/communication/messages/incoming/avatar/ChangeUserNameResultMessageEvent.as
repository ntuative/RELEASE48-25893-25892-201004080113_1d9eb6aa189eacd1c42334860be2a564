package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.avatar.ChangeUserNameResultMessageParser;
   
   public class ChangeUserNameResultMessageEvent extends MessageEvent implements IMessageEvent
   {
      
      public static var var_933:int = 3;
      
      public static var var_932:int = 5;
      
      public static var var_1099:int = 7;
      
      public static var var_624:int = 0;
      
      public static var var_1100:int = 6;
      
      public static var var_931:int = 4;
      
      public static var var_929:int = 2;
      
      public static var var_930:int = 1;
       
      
      public function ChangeUserNameResultMessageEvent(param1:Function)
      {
         super(param1,ChangeUserNameResultMessageParser);
      }
      
      public function getParser() : ChangeUserNameResultMessageParser
      {
         return var_6 as ChangeUserNameResultMessageParser;
      }
   }
}
