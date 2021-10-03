package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_1613:int = 9;
      
      public static const const_1489:int = 4;
      
      public static const const_1501:int = 1;
      
      public static const const_1186:int = 10;
      
      public static const const_1506:int = 2;
      
      public static const const_1259:int = 7;
      
      public static const const_1135:int = 11;
      
      public static const const_1502:int = 3;
      
      public static const const_1235:int = 8;
      
      public static const const_1222:int = 5;
      
      public static const const_1451:int = 6;
      
      public static const const_1280:int = 12;
       
      
      private var var_2162:String;
      
      private var _roomId:int;
      
      private var var_1157:int;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get info() : String
      {
         return var_2162;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         _roomId = param1.readInteger();
         var_1157 = param1.readInteger();
         var_2162 = param1.readString();
         return true;
      }
      
      public function get errorCode() : int
      {
         return var_1157;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
   }
}
