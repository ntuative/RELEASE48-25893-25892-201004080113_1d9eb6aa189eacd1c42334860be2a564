package com.sulake.habbo.inventory.items
{
   public class FloorItem implements IItem
   {
       
      
      protected var var_2271:Boolean;
      
      protected var var_1479:Number;
      
      protected var var_2269:Boolean;
      
      protected var _type:int;
      
      protected var var_2270:Boolean;
      
      protected var var_2015:int;
      
      protected var var_2272:Boolean;
      
      protected var var_1387:String;
      
      protected var var_1910:int;
      
      protected var _id:int;
      
      protected var _ref:int;
      
      protected var var_1546:String;
      
      protected var var_1912:Boolean;
      
      protected var _category:int;
      
      protected var var_1911:int;
      
      protected var var_2268:int;
      
      protected var var_1909:int;
      
      public function FloorItem(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:Boolean, param7:Boolean, param8:Boolean, param9:String, param10:Number, param11:int, param12:int, param13:int, param14:int, param15:String, param16:int)
      {
         super();
         _id = param1;
         _type = param2;
         _ref = param3;
         _category = param4;
         var_1912 = param5;
         var_2272 = param6;
         var_2271 = param7;
         var_2269 = param8;
         var_1387 = param9;
         var_1479 = param10;
         var_2268 = param11;
         var_1909 = param12;
         var_1911 = param13;
         var_1910 = param14;
         var_1546 = param15;
         var_2015 = param16;
      }
      
      public function get locked() : Boolean
      {
         return var_2270;
      }
      
      public function get category() : int
      {
         return _category;
      }
      
      public function get extra() : Number
      {
         return var_1479;
      }
      
      public function set locked(param1:Boolean) : void
      {
         var_2270 = param1;
      }
      
      public function get ref() : int
      {
         return _ref;
      }
      
      public function get songId() : int
      {
         return var_2015;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get sellable() : Boolean
      {
         return var_2269;
      }
      
      public function get slotId() : String
      {
         return var_1546;
      }
      
      public function get expires() : int
      {
         return var_2268;
      }
      
      public function get creationYear() : int
      {
         return var_1910;
      }
      
      public function get creationDay() : int
      {
         return var_1909;
      }
      
      public function get stuffData() : String
      {
         return var_1387;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get tradeable() : Boolean
      {
         return var_2272;
      }
      
      public function get groupable() : Boolean
      {
         return var_1912;
      }
      
      public function get creationMonth() : int
      {
         return var_1911;
      }
      
      public function get recyclable() : Boolean
      {
         return var_2271;
      }
   }
}
