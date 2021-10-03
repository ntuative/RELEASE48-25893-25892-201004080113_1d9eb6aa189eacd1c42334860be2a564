package com.sulake.habbo.communication.messages.outgoing.handshake
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class VersionCheckMessageComposer implements IMessageComposer
   {
       
      
      private var var_1831:String;
      
      private var var_1362:String;
      
      private var var_1832:int;
      
      public function VersionCheckMessageComposer(param1:int, param2:String, param3:String)
      {
         super();
         var_1832 = param1;
         var_1362 = param2;
         var_1831 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1832,var_1362,var_1831];
      }
      
      public function dispose() : void
      {
      }
   }
}
