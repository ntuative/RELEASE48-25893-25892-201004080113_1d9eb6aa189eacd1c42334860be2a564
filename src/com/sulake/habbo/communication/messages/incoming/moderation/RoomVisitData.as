package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class RoomVisitData
   {
       
      
      private var var_663:String;
      
      private var var_2222:int;
      
      private var var_1416:Boolean;
      
      private var _roomId:int;
      
      private var var_2223:int;
      
      public function RoomVisitData(param1:IMessageDataWrapper)
      {
         super();
         var_1416 = param1.readBoolean();
         _roomId = param1.readInteger();
         var_663 = param1.readString();
         var_2223 = param1.readInteger();
         var_2222 = param1.readInteger();
      }
      
      public function get isPublic() : Boolean
      {
         return var_1416;
      }
      
      public function get roomName() : String
      {
         return var_663;
      }
      
      public function get enterMinute() : int
      {
         return var_2222;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get enterHour() : int
      {
         return var_2223;
      }
   }
}
