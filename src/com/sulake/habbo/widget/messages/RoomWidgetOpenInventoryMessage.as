package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_991:String = "inventory_badges";
      
      public static const const_1391:String = "inventory_clothes";
      
      public static const const_1152:String = "inventory_furniture";
      
      public static const const_555:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_930:String = "inventory_effects";
       
      
      private var var_1834:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_555);
         var_1834 = param1;
      }
      
      public function get inventoryType() : String
      {
         return var_1834;
      }
   }
}
