package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_1711:int;
      
      private var var_1048:int;
      
      private var var_1758:int;
      
      private var var_1437:int;
      
      private var var_108:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         var_1437 = param1.readInteger();
         var_1758 = param1.readInteger();
         var_1048 = param1.readInteger();
         var_1711 = param1.readInteger();
         var_108 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + var_1437);
      }
      
      public function get chatRecordId() : int
      {
         return var_1711;
      }
      
      public function get reportedUserId() : int
      {
         return var_1048;
      }
      
      public function get callerUserId() : int
      {
         return var_1758;
      }
      
      public function get callId() : int
      {
         return var_1437;
      }
      
      public function get room() : RoomChatlogData
      {
         return var_108;
      }
   }
}
