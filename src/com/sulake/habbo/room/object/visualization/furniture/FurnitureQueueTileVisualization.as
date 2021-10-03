package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1065:int = 1;
      
      private static const const_1035:int = 3;
      
      private static const const_1064:int = 2;
      
      private static const const_1063:int = 15;
       
      
      private var var_825:int;
      
      private var var_213:Array;
      
      public function FurnitureQueueTileVisualization()
      {
         var_213 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1064)
         {
            var_213 = new Array();
            var_213.push(const_1065);
            var_825 = const_1063;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(var_825 > 0)
         {
            --var_825;
         }
         if(var_825 == 0)
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
