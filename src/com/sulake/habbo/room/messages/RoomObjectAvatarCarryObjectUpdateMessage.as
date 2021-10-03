package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarCarryObjectUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_963:int;
      
      private var var_1139:String;
      
      public function RoomObjectAvatarCarryObjectUpdateMessage(param1:int, param2:String)
      {
         super();
         var_963 = param1;
         var_1139 = param2;
      }
      
      public function get itemType() : int
      {
         return var_963;
      }
      
      public function get itemName() : String
      {
         return var_1139;
      }
   }
}
