package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFigureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_2095:String;
      
      private var var_430:String;
      
      public function RoomObjectAvatarFigureUpdateMessage(param1:String, param2:String = "")
      {
         super();
         var_430 = param1;
         var_2095 = param2;
      }
      
      public function get race() : String
      {
         return var_2095;
      }
      
      public function get figure() : String
      {
         return var_430;
      }
   }
}
