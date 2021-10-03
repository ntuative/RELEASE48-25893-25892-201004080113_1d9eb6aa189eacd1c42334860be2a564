package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ObjectMessageData
   {
       
      
      private var var_967:int = 0;
      
      private var _data:String = "";
      
      private var var_1479:int = -1;
      
      private var var_31:int = 0;
      
      private var _type:int = 0;
      
      private var var_969:int = 0;
      
      private var var_2354:String = "";
      
      private var var_1633:int = 0;
      
      private var _id:int = 0;
      
      private var var_191:Boolean = false;
      
      private var var_223:int = 0;
      
      private var var_1632:String = null;
      
      private var var_84:Number = 0;
      
      private var _y:Number = 0;
      
      private var var_85:Number = 0;
      
      public function ObjectMessageData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function set type(param1:int) : void
      {
         if(!var_191)
         {
            _type = param1;
         }
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_191)
         {
            _y = param1;
         }
      }
      
      public function get dir() : int
      {
         return var_223;
      }
      
      public function get extra() : int
      {
         return var_1479;
      }
      
      public function get state() : int
      {
         return var_31;
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_191)
         {
            var_223 = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set x(param1:Number) : void
      {
         if(!var_191)
         {
            var_84 = param1;
         }
      }
      
      public function set extra(param1:int) : void
      {
         if(!var_191)
         {
            var_1479 = param1;
         }
      }
      
      public function get z() : Number
      {
         return var_85;
      }
      
      public function set state(param1:int) : void
      {
         if(!var_191)
         {
            var_31 = param1;
         }
      }
      
      public function get data() : String
      {
         return _data;
      }
      
      public function get expiryTime() : int
      {
         return var_1633;
      }
      
      public function get staticClass() : String
      {
         return var_1632;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function set expiryTime(param1:int) : void
      {
         if(!var_191)
         {
            var_1633 = param1;
         }
      }
      
      public function set data(param1:String) : void
      {
         if(!var_191)
         {
            _data = param1;
         }
      }
      
      public function set staticClass(param1:String) : void
      {
         if(!var_191)
         {
            var_1632 = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_191 = true;
      }
      
      public function set sizeX(param1:int) : void
      {
         if(!var_191)
         {
            var_967 = param1;
         }
      }
      
      public function set sizeY(param1:int) : void
      {
         if(!var_191)
         {
            var_969 = param1;
         }
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_191)
         {
            var_85 = param1;
         }
      }
      
      public function get sizeX() : int
      {
         return var_967;
      }
      
      public function get x() : Number
      {
         return var_84;
      }
      
      public function get sizeY() : int
      {
         return var_969;
      }
   }
}
