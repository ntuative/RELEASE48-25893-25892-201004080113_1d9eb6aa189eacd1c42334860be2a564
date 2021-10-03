package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_1751:int;
      
      private var var_2204:String;
      
      private var var_2207:int;
      
      private var var_2205:int;
      
      private var var_721:Boolean;
      
      private var var_2153:Boolean;
      
      private var var_432:int;
      
      private var var_1118:String;
      
      private var var_1937:int;
      
      private var var_1133:int;
      
      private var _ownerName:String;
      
      private var var_663:String;
      
      private var var_2208:int;
      
      private var var_2206:RoomThumbnailData;
      
      private var var_1936:Boolean;
      
      private var var_626:Array;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         var_626 = new Array();
         super();
         var_432 = param1.readInteger();
         var_721 = param1.readBoolean();
         var_663 = param1.readString();
         _ownerName = param1.readString();
         var_1937 = param1.readInteger();
         var_1751 = param1.readInteger();
         var_2208 = param1.readInteger();
         var_1118 = param1.readString();
         var_2207 = param1.readInteger();
         var_1936 = param1.readBoolean();
         var_2205 = param1.readInteger();
         var_1133 = param1.readInteger();
         var_2204 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            var_626.push(_loc4_);
            _loc3_++;
         }
         var_2206 = new RoomThumbnailData(param1);
         var_2153 = param1.readBoolean();
      }
      
      public function get maxUserCount() : int
      {
         return var_2208;
      }
      
      public function get roomName() : String
      {
         return var_663;
      }
      
      public function get userCount() : int
      {
         return var_1751;
      }
      
      public function get score() : int
      {
         return var_2205;
      }
      
      public function get eventCreationTime() : String
      {
         return var_2204;
      }
      
      public function get allowTrading() : Boolean
      {
         return var_1936;
      }
      
      public function get tags() : Array
      {
         return var_626;
      }
      
      public function get allowPets() : Boolean
      {
         return var_2153;
      }
      
      public function get event() : Boolean
      {
         return var_721;
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
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get categoryId() : int
      {
         return var_1133;
      }
      
      public function get srchSpecPrm() : int
      {
         return var_2207;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return var_2206;
      }
      
      public function get doorMode() : int
      {
         return var_1937;
      }
      
      public function get flatId() : int
      {
         return var_432;
      }
      
      public function get description() : String
      {
         return var_1118;
      }
   }
}
