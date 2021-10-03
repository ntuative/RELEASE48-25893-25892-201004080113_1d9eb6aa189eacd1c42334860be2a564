package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_1709:int;
      
      private var var_1841:String;
      
      private var var_1713:int;
      
      private var _disposed:Boolean;
      
      private var var_1840:int;
      
      private var var_1842:String;
      
      private var var_1233:int;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         var_1842 = param1.readString();
         var_1709 = param1.readInteger();
         var_1713 = param1.readInteger();
         var_1841 = param1.readString();
         var_1840 = param1.readInteger();
         var_1233 = param1.readInteger();
      }
      
      public function get maxUsers() : int
      {
         return var_1840;
      }
      
      public function get worldId() : int
      {
         return var_1713;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
      }
      
      public function get unitPropertySet() : String
      {
         return var_1842;
      }
      
      public function get unitPort() : int
      {
         return var_1709;
      }
      
      public function get castLibs() : String
      {
         return var_1841;
      }
      
      public function get nodeId() : int
      {
         return var_1233;
      }
   }
}
