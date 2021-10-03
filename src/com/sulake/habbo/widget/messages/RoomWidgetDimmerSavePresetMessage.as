package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_506:String = "RWSDPM_SAVE_PRESET";
       
      
      private var _color:uint;
      
      private var var_1611:int;
      
      private var var_1608:int;
      
      private var var_1940:Boolean;
      
      private var var_1014:int;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_506);
         var_1608 = param1;
         var_1611 = param2;
         _color = param3;
         var_1014 = param4;
         var_1940 = param5;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get effectTypeId() : int
      {
         return var_1611;
      }
      
      public function get presetNumber() : int
      {
         return var_1608;
      }
      
      public function get brightness() : int
      {
         return var_1014;
      }
      
      public function get apply() : Boolean
      {
         return var_1940;
      }
   }
}
