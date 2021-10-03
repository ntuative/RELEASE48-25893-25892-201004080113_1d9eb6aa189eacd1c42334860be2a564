package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var var_2076:Boolean = false;
      
      private var var_2071:Boolean = false;
      
      private var var_2075:String = "";
      
      private var _type:String = "";
      
      private var var_2077:Boolean = false;
      
      private var var_2021:Number = 0;
      
      private var var_2072:Number = 0;
      
      private var var_2074:Number = 0;
      
      private var var_2073:String = "";
      
      private var var_2020:Number = 0;
      
      private var var_2070:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:Number, param5:Number, param6:Number = 0, param7:Number = 0, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false)
      {
         super();
         _type = param1;
         var_2073 = param2;
         var_2075 = param3;
         var_2072 = param4;
         var_2074 = param5;
         var_2021 = param6;
         var_2020 = param7;
         var_2070 = param8;
         var_2071 = param9;
         var_2077 = param10;
         var_2076 = param11;
      }
      
      public function get ctrlKey() : Boolean
      {
         return var_2070;
      }
      
      public function get buttonDown() : Boolean
      {
         return var_2076;
      }
      
      public function get localX() : Number
      {
         return var_2021;
      }
      
      public function get localY() : Number
      {
         return var_2020;
      }
      
      public function get canvasId() : String
      {
         return var_2073;
      }
      
      public function get altKey() : Boolean
      {
         return var_2071;
      }
      
      public function get spriteTag() : String
      {
         return var_2075;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function get screenX() : Number
      {
         return var_2072;
      }
      
      public function get screenY() : Number
      {
         return var_2074;
      }
      
      public function get shiftKey() : Boolean
      {
         return var_2077;
      }
   }
}
