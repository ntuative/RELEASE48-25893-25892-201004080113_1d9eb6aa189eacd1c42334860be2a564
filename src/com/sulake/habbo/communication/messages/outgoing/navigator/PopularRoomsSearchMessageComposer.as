package com.sulake.habbo.communication.messages.outgoing.navigator
{
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.core.runtime.IDisposable;
   
   public class PopularRoomsSearchMessageComposer implements IMessageComposer, IDisposable
   {
       
      
      private var var_28:Array;
      
      public function PopularRoomsSearchMessageComposer(param1:String)
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
