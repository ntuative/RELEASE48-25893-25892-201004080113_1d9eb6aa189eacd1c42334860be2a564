package com.sulake.habbo.communication.messages.outgoing.friendlist
{
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.core.runtime.IDisposable;
   
   public class SendRoomInviteMessageComposer implements IMessageComposer, IDisposable
   {
       
      
      private var var_1495:String;
      
      private var var_895:Array;
      
      public function SendRoomInviteMessageComposer(param1:String)
      {
         var_895 = new Array();
         super();
         this.var_1495 = param1;
      }
      
      public function get disposed() : Boolean
      {
         return false;
      }
      
      public function getMessageArray() : Array
      {
         var _loc1_:Array = new Array();
         _loc1_.push(this.var_895.length);
         var _loc2_:int = 0;
         while(_loc2_ < this.var_895.length)
         {
            _loc1_.push(this.var_895[_loc2_]);
            _loc2_++;
         }
         _loc1_.push(this.var_1495);
         return _loc1_;
      }
      
      public function dispose() : void
      {
         this.var_895 = null;
      }
      
      public function addInvitedFriend(param1:int) : void
      {
         this.var_895.push(param1);
      }
   }
}
