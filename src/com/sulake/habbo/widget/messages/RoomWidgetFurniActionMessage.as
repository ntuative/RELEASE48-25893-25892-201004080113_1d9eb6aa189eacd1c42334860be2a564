package com.sulake.habbo.widget.messages
{
   public class RoomWidgetFurniActionMessage extends RoomWidgetMessage
   {
      
      public static const const_245:String = "RWFAM_MOVE";
      
      public static const const_545:String = "RWFUAM_ROTATE";
      
      public static const const_604:String = "RWFAM_PICKUP";
       
      
      private var var_1671:int = 0;
      
      private var var_1690:int = 0;
      
      public function RoomWidgetFurniActionMessage(param1:String, param2:int, param3:int)
      {
         super(param1);
         var_1671 = param2;
         var_1690 = param3;
      }
      
      public function get furniId() : int
      {
         return var_1671;
      }
      
      public function get furniCategory() : int
      {
         return var_1690;
      }
   }
}
