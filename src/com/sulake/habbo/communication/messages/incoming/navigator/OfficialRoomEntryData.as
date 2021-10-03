package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1333:int = 4;
      
      public static const const_660:int = 3;
      
      public static const const_720:int = 2;
      
      public static const const_955:int = 1;
       
      
      private var var_2061:String;
      
      private var _disposed:Boolean;
      
      private var var_1751:int;
      
      private var var_2059:Boolean;
      
      private var var_764:String;
      
      private var var_879:PublicRoomData;
      
      private var var_2057:int;
      
      private var _index:int;
      
      private var var_2058:String;
      
      private var _type:int;
      
      private var var_1615:String;
      
      private var var_880:GuestRoomData;
      
      private var var_2060:String;
      
      private var _open:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         _index = param1.readInteger();
         var_2061 = param1.readString();
         var_2060 = param1.readString();
         var_2059 = param1.readInteger() == 1;
         var_2058 = param1.readString();
         var_764 = param1.readString();
         var_2057 = param1.readInteger();
         var_1751 = param1.readInteger();
         _type = param1.readInteger();
         if(_type == const_955)
         {
            var_1615 = param1.readString();
         }
         else if(_type == const_660)
         {
            var_879 = new PublicRoomData(param1);
         }
         else if(_type == const_720)
         {
            var_880 = new GuestRoomData(param1);
         }
      }
      
      public function get folderId() : int
      {
         return var_2057;
      }
      
      public function get popupCaption() : String
      {
         return var_2061;
      }
      
      public function get userCount() : int
      {
         return var_1751;
      }
      
      public function get open() : Boolean
      {
         return _open;
      }
      
      public function get showDetails() : Boolean
      {
         return var_2059;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_955)
         {
            return 0;
         }
         if(this.type == const_720)
         {
            return this.var_880.maxUserCount;
         }
         if(this.type == const_660)
         {
            return this.var_879.maxUsers;
         }
         return 0;
      }
      
      public function get popupDesc() : String
      {
         return var_2060;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(this.var_880 != null)
         {
            this.var_880.dispose();
            this.var_880 = null;
         }
         if(this.var_879 != null)
         {
            this.var_879.dispose();
            this.var_879 = null;
         }
      }
      
      public function get index() : int
      {
         return _index;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return var_880;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get picText() : String
      {
         return var_2058;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return var_879;
      }
      
      public function get picRef() : String
      {
         return var_764;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get tag() : String
      {
         return var_1615;
      }
      
      public function toggleOpen() : void
      {
         _open = !_open;
      }
   }
}
