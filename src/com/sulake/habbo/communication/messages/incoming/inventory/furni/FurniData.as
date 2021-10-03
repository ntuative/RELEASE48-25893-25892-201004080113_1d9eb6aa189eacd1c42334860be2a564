package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_1387:String;
      
      private var var_963:String;
      
      private var var_1798:Boolean;
      
      private var var_1479:int;
      
      private var var_1752:int;
      
      private var var_1795:Boolean;
      
      private var var_1546:String = "";
      
      private var var_1796:Boolean;
      
      private var _category:int;
      
      private var _objId:int;
      
      private var var_1359:int;
      
      private var var_1797:Boolean;
      
      private var var_2015:int = -1;
      
      private var var_1633:int;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         var_1752 = param1;
         var_963 = param2;
         _objId = param3;
         var_1359 = param4;
         _category = param5;
         var_1387 = param6;
         var_1798 = param7;
         var_1796 = param8;
         var_1797 = param9;
         var_1795 = param10;
         var_1633 = param11;
      }
      
      public function get slotId() : String
      {
         return var_1546;
      }
      
      public function get extra() : int
      {
         return var_1479;
      }
      
      public function get classId() : int
      {
         return var_1359;
      }
      
      public function get category() : int
      {
         return _category;
      }
      
      public function get isSellable() : Boolean
      {
         return var_1795;
      }
      
      public function get isGroupable() : Boolean
      {
         return var_1798;
      }
      
      public function get stripId() : int
      {
         return var_1752;
      }
      
      public function get stuffData() : String
      {
         return var_1387;
      }
      
      public function get songId() : int
      {
         return var_2015;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         var_1546 = param1;
         var_1479 = param2;
      }
      
      public function get itemType() : String
      {
         return var_963;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get expiryTime() : int
      {
         return var_1633;
      }
      
      public function get isTradeable() : Boolean
      {
         return var_1797;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_1796;
      }
   }
}
