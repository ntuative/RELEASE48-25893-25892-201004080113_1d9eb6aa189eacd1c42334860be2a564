package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomModerationData implements IDisposable
   {
       
      
      private var var_108:RoomData;
      
      private var _disposed:Boolean;
      
      private var var_1751:int;
      
      private var var_432:int;
      
      private var var_721:RoomData;
      
      private var var_1750:int;
      
      private var _ownerName:String;
      
      private var var_1749:Boolean;
      
      public function RoomModerationData(param1:IMessageDataWrapper)
      {
         super();
         var_432 = param1.readInteger();
         var_1751 = param1.readInteger();
         var_1749 = param1.readBoolean();
         var_1750 = param1.readInteger();
         _ownerName = param1.readString();
         var_108 = new RoomData(param1);
         var_721 = new RoomData(param1);
      }
      
      public function get userCount() : int
      {
         return var_1751;
      }
      
      public function get event() : RoomData
      {
         return var_721;
      }
      
      public function get room() : RoomData
      {
         return var_108;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(var_108 != null)
         {
            var_108.dispose();
            var_108 = null;
         }
         if(var_721 != null)
         {
            var_721.dispose();
            var_721 = null;
         }
      }
      
      public function get flatId() : int
      {
         return var_432;
      }
      
      public function get ownerId() : int
      {
         return var_1750;
      }
      
      public function get ownerInRoom() : Boolean
      {
         return var_1749;
      }
   }
}
