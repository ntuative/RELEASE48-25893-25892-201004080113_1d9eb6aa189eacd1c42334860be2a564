package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomsData implements IDisposable, MsgWithRequestId
   {
       
      
      private var var_651:Array;
      
      private var _disposed:Boolean;
      
      public function OfficialRoomsData(param1:IMessageDataWrapper)
      {
         var_651 = new Array();
         super();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            var_651.push(new OfficialRoomEntryData(param1));
            _loc3_++;
         }
      }
      
      public function get entries() : Array
      {
         return var_651;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function dispose() : void
      {
         var _loc1_:* = null;
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(var_651 != null)
         {
            for each(_loc1_ in var_651)
            {
               _loc1_.dispose();
            }
         }
         var_651 = null;
      }
   }
}
