package com.sulake.habbo.widget.messages
{
   public class RoomWidgetRoomTagSearchMessage extends RoomWidgetMessage
   {
      
      public static const const_601:String = "RWRTSM_ROOM_TAG_SEARCH";
       
      
      private var var_1615:String = "";
      
      public function RoomWidgetRoomTagSearchMessage(param1:String)
      {
         super(const_601);
         var_1615 = param1;
      }
      
      public function get tag() : String
      {
         return var_1615;
      }
   }
}
