package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_835:String = "RWOCM_CLUB_MAIN";
      
      public static const const_557:String = "RWGOI_MESSAGE_OPEN_CATALOG";
       
      
      private var var_1781:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_557);
         var_1781 = param1;
      }
      
      public function get pageKey() : String
      {
         return var_1781;
      }
   }
}
