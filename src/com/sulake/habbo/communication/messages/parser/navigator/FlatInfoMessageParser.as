package com.sulake.habbo.communication.messages.parser.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomSettingsFlatInfo;
   
   public class FlatInfoMessageParser implements IMessageParser
   {
       
      
      private var var_218:RoomSettingsFlatInfo;
      
      public function FlatInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         var_218 = null;
         return true;
      }
      
      public function get flatInfo() : RoomSettingsFlatInfo
      {
         return var_218;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_218 = new RoomSettingsFlatInfo();
         var_218.allowFurniMoving = param1.readInteger() == 1;
         var_218.doorMode = param1.readInteger();
         var_218.id = param1.readInteger();
         var_218.ownerName = param1.readString();
         var_218.type = param1.readString();
         var_218.name = param1.readString();
         var_218.description = param1.readString();
         var_218.showOwnerName = param1.readInteger() == 1;
         var_218.allowTrading = param1.readInteger() == 1;
         var_218.categoryAlertKey = param1.readInteger() == 1;
         return true;
      }
   }
}
