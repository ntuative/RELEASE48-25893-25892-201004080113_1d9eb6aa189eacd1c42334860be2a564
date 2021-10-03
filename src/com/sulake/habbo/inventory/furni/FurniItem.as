package com.sulake.habbo.inventory.furni
{
   import flash.display.BitmapData;
   
   public class FurniItem
   {
       
      
      private var _isSelected:Boolean = false;
      
      private var var_1752:int;
      
      private var var_1796:Boolean;
      
      private var var_2015:int;
      
      private var var_1387:String;
      
      private var var_2016:Boolean = false;
      
      private var var_1633:int;
      
      private var var_449:int;
      
      private var var_963:String;
      
      private var var_1546:String;
      
      private var _image:BitmapData;
      
      private var _objId:int;
      
      private var var_1359:int;
      
      private var var_1797:Boolean;
      
      private var var_2017:int;
      
      public function FurniItem(param1:int, param2:String, param3:int, param4:int, param5:String, param6:Boolean, param7:Boolean, param8:int, param9:String, param10:int)
      {
         super();
         var_1752 = param1;
         var_963 = param2;
         _objId = param3;
         var_1359 = param4;
         var_1387 = param5;
         var_1796 = param6;
         var_1797 = param7;
         var_1633 = param8;
         var_1546 = param9;
         var_2015 = param10;
         var_449 = -1;
      }
      
      public function get songId() : int
      {
         return var_2015;
      }
      
      public function get iconCallbackId() : int
      {
         return var_449;
      }
      
      public function get expiryTime() : int
      {
         return var_1633;
      }
      
      public function set prevCallbackId(param1:int) : void
      {
         var_2017 = param1;
      }
      
      public function set isLocked(param1:Boolean) : void
      {
         var_2016 = param1;
      }
      
      public function set iconCallbackId(param1:int) : void
      {
         var_449 = param1;
      }
      
      public function get isTradeable() : Boolean
      {
         return var_1797;
      }
      
      public function get slotId() : String
      {
         return var_1546;
      }
      
      public function get classId() : int
      {
         return var_1359;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_1796;
      }
      
      public function get stuffData() : String
      {
         return var_1387;
      }
      
      public function set iconImage(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         _isSelected = param1;
      }
      
      public function get stripId() : int
      {
         return var_1752;
      }
      
      public function get isLocked() : Boolean
      {
         return var_2016;
      }
      
      public function get prevCallbackId() : int
      {
         return var_2017;
      }
      
      public function get iconImage() : BitmapData
      {
         return _image;
      }
      
      public function get isSelected() : Boolean
      {
         return _isSelected;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get itemType() : String
      {
         return var_963;
      }
   }
}
