package com.sulake.habbo.communication.messages.outgoing.friendlist
{
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.core.runtime.IDisposable;
   
   public class FollowFriendMessageComposer implements IMessageComposer, IDisposable
   {
       
      
      private var var_28:Array;
      
      public function FollowFriendMessageComposer(param1:int)
      {
         var_28 = new Array();
         super();
         this.var_28.push(param1);
      }
      
      public function get disposed() : Boolean
      {
         return false;
      }
      
      public function getMessageArray() : Array
      {
         return this.var_28;
      }
      
      public function dispose() : void
      {
         this.var_28 = null;
      }
   }
}
