package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_1590:String = "ROE_MOUSE_LEAVE";
      
      public static const const_1600:String = "ROE_MOUSE_ENTER";
      
      public static const const_445:String = "ROE_MOUSE_MOVE";
      
      public static const const_1614:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const const_201:String = "ROE_MOUSE_CLICK";
      
      public static const ROOM_OBJECT_MOUSE_DOWN:String = "ROE_MOUSE_DOWN";
       
      
      private var var_2077:Boolean;
      
      private var var_2076:Boolean;
      
      private var var_2071:Boolean;
      
      private var var_2070:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:int, param3:String, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false)
      {
         super(param1,param2,param3,param8,param9);
         var_2071 = param4;
         var_2070 = param5;
         var_2077 = param6;
         var_2076 = param7;
      }
      
      public function get buttonDown() : Boolean
      {
         return var_2076;
      }
      
      public function get altKey() : Boolean
      {
         return var_2071;
      }
      
      public function get ctrlKey() : Boolean
      {
         return var_2070;
      }
      
      public function get shiftKey() : Boolean
      {
         return var_2077;
      }
   }
}
