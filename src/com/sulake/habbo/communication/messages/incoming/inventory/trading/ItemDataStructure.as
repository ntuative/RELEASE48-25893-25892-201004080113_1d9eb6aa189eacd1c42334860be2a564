package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_963:String;
      
      private var var_1619:int;
      
      private var var_1915:int;
      
      private var var_1479:int;
      
      private var var_1910:int;
      
      private var _category:int;
      
      private var var_2370:int;
      
      private var var_1909:int;
      
      private var var_1913:int;
      
      private var var_1914:int;
      
      private var var_1911:int;
      
      private var var_1912:Boolean;
      
      private var var_1387:String;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         var_1619 = param1;
         var_963 = param2;
         var_1915 = param3;
         var_1914 = param4;
         _category = param5;
         var_1387 = param6;
         var_1479 = param7;
         var_1913 = param8;
         var_1909 = param9;
         var_1911 = param10;
         var_1910 = param11;
         var_1912 = param12;
      }
      
      public function get itemTypeID() : int
      {
         return var_1914;
      }
      
      public function get extra() : int
      {
         return var_1479;
      }
      
      public function get stuffData() : String
      {
         return var_1387;
      }
      
      public function get groupable() : Boolean
      {
         return var_1912;
      }
      
      public function get creationMonth() : int
      {
         return var_1911;
      }
      
      public function get roomItemID() : int
      {
         return var_1915;
      }
      
      public function get itemType() : String
      {
         return var_963;
      }
      
      public function get itemID() : int
      {
         return var_1619;
      }
      
      public function get songID() : int
      {
         return var_1479;
      }
      
      public function get timeToExpiration() : int
      {
         return var_1913;
      }
      
      public function get creationYear() : int
      {
         return var_1910;
      }
      
      public function get creationDay() : int
      {
         return var_1909;
      }
      
      public function get category() : int
      {
         return _category;
      }
   }
}
