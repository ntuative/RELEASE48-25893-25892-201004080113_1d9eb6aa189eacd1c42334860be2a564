package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureValRandomizerVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1036:int = 31;
      
      private static const const_1035:int = 32;
      
      private static const const_484:int = 30;
      
      private static const const_744:int = 20;
      
      private static const const_483:int = 10;
       
      
      private var var_604:Boolean = false;
      
      private var var_213:Array;
      
      public function FurnitureValRandomizerVisualization()
      {
         var_213 = new Array();
         super();
         super.setAnimation(const_484);
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == 0)
         {
            var_604 = true;
            var_213 = new Array();
            var_213.push(const_1036);
            var_213.push(const_1035);
            return;
         }
         if(param1 > 0 && param1 <= const_483)
         {
            if(var_604)
            {
               var_604 = false;
               var_213 = new Array();
               if(_direction == 2)
               {
                  var_213.push(const_744 + 5 - param1);
                  var_213.push(const_483 + 5 - param1);
               }
               else
               {
                  var_213.push(const_744 + param1);
                  var_213.push(const_483 + param1);
               }
               var_213.push(const_484);
               return;
            }
            super.setAnimation(const_484);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(super.getLastFramePlayed(11))
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
