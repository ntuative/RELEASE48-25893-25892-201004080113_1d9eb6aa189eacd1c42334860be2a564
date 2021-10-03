package com.sulake.habbo.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_225:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_1687:Boolean = false;
      
      private var var_1688:int = 0;
      
      private var var_1685:int = 0;
      
      private var var_1686:int = 0;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:Boolean = false, param6:Boolean = false)
      {
         super(const_225,param5,param6);
         var_1686 = param1;
         var_1685 = param2;
         var_1688 = param3;
         var_1687 = param4;
      }
      
      public function get pastPeriods() : int
      {
         return var_1688;
      }
      
      public function get periodsLeft() : int
      {
         return var_1685;
      }
      
      public function get daysLeft() : int
      {
         return var_1686;
      }
      
      public function get allowClubDances() : Boolean
      {
         return var_1687;
      }
   }
}
