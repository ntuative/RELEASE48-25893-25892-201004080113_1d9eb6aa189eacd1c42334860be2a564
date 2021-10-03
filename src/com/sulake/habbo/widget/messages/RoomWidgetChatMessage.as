package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatMessage extends RoomWidgetMessage
   {
      
      public static const const_106:int = 0;
      
      public static const const_117:int = 1;
      
      public static const const_101:int = 2;
      
      public static const const_615:String = "RWCM_MESSAGE_CHAT";
       
      
      private var var_1167:int = 0;
      
      private var var_1691:String = "";
      
      private var var_193:String = "";
      
      public function RoomWidgetChatMessage(param1:String, param2:String, param3:int = 0, param4:String = "")
      {
         super(param1);
         var_193 = param2;
         var_1167 = param3;
         var_1691 = param4;
      }
      
      public function get recipientName() : String
      {
         return var_1691;
      }
      
      public function get chatType() : int
      {
         return var_1167;
      }
      
      public function get text() : String
      {
         return var_193;
      }
   }
}
