package com.sulake.habbo.room.events
{
   public class RoomEngineDimmerStateEvent extends RoomEngineEvent
   {
      
      public static const const_64:String = "REDSE_ROOM_COLOR";
       
      
      private var var_1015:int;
      
      private var _color:uint;
      
      private var var_1014:int;
      
      private var var_1800:int;
      
      private var var_31:int;
      
      public function RoomEngineDimmerStateEvent(param1:int, param2:int, param3:int, param4:int, param5:int, param6:uint, param7:uint, param8:Boolean = false, param9:Boolean = false)
      {
         super(const_64,param1,param2,param8,param9);
         var_31 = param3;
         var_1800 = param4;
         var_1015 = param5;
         _color = param6;
         var_1014 = param7;
      }
      
      public function get brightness() : uint
      {
         return var_1014;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get effectId() : int
      {
         return var_1015;
      }
      
      public function get state() : int
      {
         return var_31;
      }
      
      public function get presetId() : int
      {
         return var_1800;
      }
   }
}
