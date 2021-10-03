package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ItemMessageData
   {
       
      
      private var var_85:Number = 0;
      
      private var _data:String = "";
      
      private var var_1479:int = 0;
      
      private var var_31:int = 0;
      
      private var _type:int = 0;
      
      private var _y:Number = 0;
      
      private var var_2022:Boolean = false;
      
      private var var_2354:String = "";
      
      private var _id:int = 0;
      
      private var var_191:Boolean = false;
      
      private var var_223:String = "";
      
      private var var_2018:int = 0;
      
      private var var_2019:int = 0;
      
      private var var_2021:int = 0;
      
      private var var_2020:int = 0;
      
      public function ItemMessageData(param1:int, param2:int, param3:Boolean)
      {
         super();
         _id = param1;
         _type = param2;
         var_2022 = param3;
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_191)
         {
            _y = param1;
         }
      }
      
      public function get isOldFormat() : Boolean
      {
         return var_2022;
      }
      
      public function set type(param1:int) : void
      {
         if(!var_191)
         {
            _type = param1;
         }
      }
      
      public function get dir() : String
      {
         return var_223;
      }
      
      public function get state() : int
      {
         return var_31;
      }
      
      public function set localX(param1:Number) : void
      {
         if(!var_191)
         {
            var_2021 = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set wallX(param1:Number) : void
      {
         if(!var_191)
         {
            var_2018 = param1;
         }
      }
      
      public function set wallY(param1:Number) : void
      {
         if(!var_191)
         {
            var_2019 = param1;
         }
      }
      
      public function set dir(param1:String) : void
      {
         if(!var_191)
         {
            var_223 = param1;
         }
      }
      
      public function get data() : String
      {
         return _data;
      }
      
      public function set localY(param1:Number) : void
      {
         if(!var_191)
         {
            var_2020 = param1;
         }
      }
      
      public function set state(param1:int) : void
      {
         if(!var_191)
         {
            var_31 = param1;
         }
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get localX() : Number
      {
         return var_2021;
      }
      
      public function set data(param1:String) : void
      {
         if(!var_191)
         {
            _data = param1;
         }
      }
      
      public function get wallX() : Number
      {
         return var_2018;
      }
      
      public function get wallY() : Number
      {
         return var_2019;
      }
      
      public function get localY() : Number
      {
         return var_2020;
      }
      
      public function setReadOnly() : void
      {
         var_191 = true;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get z() : Number
      {
         return var_85;
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_191)
         {
            var_85 = param1;
         }
      }
   }
}
