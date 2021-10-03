package com.sulake.habbo.widget.messages
{
   public class RoomWidgetSelectOutfitMessage extends RoomWidgetMessage
   {
      
      public static const const_823:String = "select_outfit";
       
      
      private var var_2185:int;
      
      public function RoomWidgetSelectOutfitMessage(param1:int)
      {
         super(const_823);
         var_2185 = param1;
      }
      
      public function get outfitId() : int
      {
         return var_2185;
      }
   }
}
