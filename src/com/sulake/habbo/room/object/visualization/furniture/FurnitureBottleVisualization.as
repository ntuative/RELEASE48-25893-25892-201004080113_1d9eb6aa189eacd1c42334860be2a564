package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureBottleVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1035:int = -1;
      
      private static const const_744:int = 20;
      
      private static const const_483:int = 9;
       
      
      private var var_604:Boolean = false;
      
      private var var_213:Array;
      
      public function FurnitureBottleVisualization()
      {
         var_213 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            var_604 = true;
            var_213 = new Array();
            var_213.push(const_1035);
            return;
         }
         if(param1 >= 0 && param1 <= 7)
         {
            if(var_604)
            {
               var_604 = false;
               var_213 = new Array();
               var_213.push(const_744);
               var_213.push(const_483 + param1);
               var_213.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(super.getLastFramePlayed(0))
         {
            if(false)
            {
               super.setAnimation(var_213.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
