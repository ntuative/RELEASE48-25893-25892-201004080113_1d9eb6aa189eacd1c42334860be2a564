package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarPostureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_1839:String;
      
      private var var_851:String;
      
      public function RoomObjectAvatarPostureUpdateMessage(param1:String, param2:String = "")
      {
         super();
         var_1839 = param1;
         var_851 = param2;
      }
      
      public function get postureType() : String
      {
         return var_1839;
      }
      
      public function get parameter() : String
      {
         return var_851;
      }
   }
}
