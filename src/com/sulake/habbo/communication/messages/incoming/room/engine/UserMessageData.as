package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1263:String = "F";
      
      public static const const_990:String = "M";
       
      
      private var var_84:Number = 0;
      
      private var var_430:String = "";
      
      private var var_1908:int = 0;
      
      private var var_1907:String = "";
      
      private var var_1906:int = 0;
      
      private var var_1664:int = 0;
      
      private var var_1905:String = "";
      
      private var var_1314:String = "";
      
      private var _id:int = 0;
      
      private var var_191:Boolean = false;
      
      private var var_223:int = 0;
      
      private var var_1904:String = "";
      
      private var _name:String = "";
      
      private var var_1665:int = 0;
      
      private var _y:Number = 0;
      
      private var var_85:Number = 0;
      
      public function UserMessageData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get z() : Number
      {
         return var_85;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get dir() : int
      {
         return var_223;
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_191)
         {
            var_223 = param1;
         }
      }
      
      public function set name(param1:String) : void
      {
         if(!var_191)
         {
            _name = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get userType() : int
      {
         return var_1908;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!var_191)
         {
            var_1906 = param1;
         }
      }
      
      public function get subType() : String
      {
         return var_1904;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!var_191)
         {
            var_1905 = param1;
         }
      }
      
      public function set subType(param1:String) : void
      {
         if(!var_191)
         {
            var_1904 = param1;
         }
      }
      
      public function set xp(param1:int) : void
      {
         if(!var_191)
         {
            var_1664 = param1;
         }
      }
      
      public function set figure(param1:String) : void
      {
         if(!var_191)
         {
            var_430 = param1;
         }
      }
      
      public function set userType(param1:int) : void
      {
         if(!var_191)
         {
            var_1908 = param1;
         }
      }
      
      public function set sex(param1:String) : void
      {
         if(!var_191)
         {
            var_1314 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return var_1906;
      }
      
      public function get groupID() : String
      {
         return var_1905;
      }
      
      public function set webID(param1:int) : void
      {
         if(!var_191)
         {
            var_1665 = param1;
         }
      }
      
      public function set custom(param1:String) : void
      {
         if(!var_191)
         {
            var_1907 = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_191 = true;
      }
      
      public function get sex() : String
      {
         return var_1314;
      }
      
      public function get figure() : String
      {
         return var_430;
      }
      
      public function get webID() : int
      {
         return var_1665;
      }
      
      public function get custom() : String
      {
         return var_1907;
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_191)
         {
            _y = param1;
         }
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_191)
         {
            var_85 = param1;
         }
      }
      
      public function set x(param1:Number) : void
      {
         if(!var_191)
         {
            var_84 = param1;
         }
      }
      
      public function get x() : Number
      {
         return var_84;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get xp() : int
      {
         return var_1664;
      }
   }
}
