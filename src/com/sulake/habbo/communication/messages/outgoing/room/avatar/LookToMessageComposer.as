package com.sulake.habbo.communication.messages.outgoing.room.avatar
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class LookToMessageComposer implements IMessageComposer
   {
       
      
      private var var_1693:int;
      
      private var var_1692:int;
      
      public function LookToMessageComposer(param1:int, param2:int)
      {
         super();
         var_1693 = param1;
         var_1692 = param2;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [var_1693,var_1692];
      }
   }
}
