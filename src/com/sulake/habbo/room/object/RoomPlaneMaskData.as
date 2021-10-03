package com.sulake.habbo.room.object
{
   public class RoomPlaneMaskData
   {
       
      
      private var var_1626:Number = 0;
      
      private var var_1624:Number = 0;
      
      private var var_1625:Number = 0;
      
      private var var_1627:Number = 0;
      
      public function RoomPlaneMaskData(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         var_1624 = param1;
         var_1625 = param2;
         var_1626 = param3;
         var_1627 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return var_1624;
      }
      
      public function get leftSideLength() : Number
      {
         return var_1626;
      }
      
      public function get rightSideLoc() : Number
      {
         return var_1625;
      }
      
      public function get rightSideLength() : Number
      {
         return var_1627;
      }
   }
}
