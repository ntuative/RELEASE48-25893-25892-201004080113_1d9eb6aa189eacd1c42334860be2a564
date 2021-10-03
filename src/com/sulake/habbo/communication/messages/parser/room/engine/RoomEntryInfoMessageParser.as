package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   
   public class RoomEntryInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1747:int;
      
      private var var_433:Boolean;
      
      private var var_1746:Boolean;
      
      private var var_807:PublicRoomShortData;
      
      public function RoomEntryInfoMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1746 = param1.readBoolean();
         if(var_1746)
         {
            var_1747 = param1.readInteger();
            var_433 = param1.readBoolean();
         }
         else
         {
            var_807 = new PublicRoomShortData(param1);
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         if(var_807 != null)
         {
            var_807.dispose();
            var_807 = null;
         }
         return true;
      }
      
      public function get guestRoomId() : int
      {
         return var_1747;
      }
      
      public function get owner() : Boolean
      {
         return var_433;
      }
      
      public function get guestRoom() : Boolean
      {
         return var_1746;
      }
      
      public function get publicSpace() : PublicRoomShortData
      {
         return var_807;
      }
   }
}
