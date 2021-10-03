package com.sulake.habbo.widget.messages
{
   public class RoomWidgetPresentOpenedMessage extends RoomWidgetMessage
   {
      
      public static const const_1339:String = "RWPOMD_PRESENT_OPENED";
       
      
      private var var_1359:int;
      
      private var var_963:String;
      
      public function RoomWidgetPresentOpenedMessage(param1:String, param2:String, param3:int)
      {
         super(param1);
         var_963 = param2;
         var_1359 = param3;
      }
      
      public function get classId() : int
      {
         return var_1359;
      }
      
      public function get itemType() : String
      {
         return var_963;
      }
   }
}
