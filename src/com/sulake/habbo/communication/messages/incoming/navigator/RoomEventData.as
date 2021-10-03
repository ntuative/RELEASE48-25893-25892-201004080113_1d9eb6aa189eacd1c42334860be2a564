package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomEventData implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_2101:String;
      
      private var var_432:int;
      
      private var var_2099:String;
      
      private var var_2100:String;
      
      private var var_2097:int;
      
      private var var_2098:String;
      
      private var var_2096:int;
      
      private var var_626:Array;
      
      private var var_1012:Boolean;
      
      public function RoomEventData(param1:IMessageDataWrapper)
      {
         var _loc5_:* = null;
         var_626 = new Array();
         super();
         var _loc2_:String = param1.readString();
         if(_loc2_ == "-1")
         {
            Logger.log("Got null room event");
            this.var_1012 = false;
            return;
         }
         this.var_1012 = true;
         var_2097 = int(_loc2_);
         var_2099 = param1.readString();
         var_432 = int(param1.readString());
         var_2096 = param1.readInteger();
         var_2101 = param1.readString();
         var_2100 = param1.readString();
         var_2098 = param1.readString();
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.readString();
            var_626.push(_loc5_);
            _loc4_++;
         }
      }
      
      public function get eventType() : int
      {
         return var_2096;
      }
      
      public function get eventName() : String
      {
         return var_2101;
      }
      
      public function get eventDescription() : String
      {
         return var_2100;
      }
      
      public function get ownerAvatarName() : String
      {
         return var_2099;
      }
      
      public function get tags() : Array
      {
         return var_626;
      }
      
      public function get creationTime() : String
      {
         return var_2098;
      }
      
      public function get exists() : Boolean
      {
         return var_1012;
      }
      
      public function get ownerAvatarId() : int
      {
         return var_2097;
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
         this.var_626 = null;
      }
      
      public function get flatId() : int
      {
         return var_432;
      }
   }
}
