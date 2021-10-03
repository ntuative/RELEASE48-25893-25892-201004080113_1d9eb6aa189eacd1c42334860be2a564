package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class LayerData
   {
      
      public static const const_405:int = 255;
      
      public static const INK_DARKEN:int = 3;
      
      public static const const_433:int = 0;
      
      public static const const_979:int = 2;
      
      public static const const_957:int = 1;
      
      public static const const_640:Boolean = false;
      
      public static const const_712:String = "";
      
      public static const const_468:int = 0;
      
      public static const const_436:int = 0;
      
      public static const const_434:int = 0;
       
      
      private var var_1616:int = 0;
      
      private var var_1615:String = "";
      
      private var var_1404:int = 0;
      
      private var var_1617:int = 0;
      
      private var var_1618:Number = 0;
      
      private var var_1614:int = 255;
      
      private var var_1613:Boolean = false;
      
      public function LayerData()
      {
         super();
      }
      
      public function get yOffset() : int
      {
         return var_1616;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            tag = param1.tag;
            ink = param1.ink;
            alpha = param1.alpha;
            ignoreMouse = param1.ignoreMouse;
            xOffset = param1.xOffset;
            yOffset = param1.yOffset;
            zOffset = param1.zOffset;
         }
      }
      
      public function set ink(param1:int) : void
      {
         var_1404 = param1;
      }
      
      public function get zOffset() : Number
      {
         return var_1618;
      }
      
      public function set xOffset(param1:int) : void
      {
         var_1617 = param1;
      }
      
      public function set yOffset(param1:int) : void
      {
         var_1616 = param1;
      }
      
      public function get tag() : String
      {
         return var_1615;
      }
      
      public function get alpha() : int
      {
         return var_1614;
      }
      
      public function get ink() : int
      {
         return var_1404;
      }
      
      public function set zOffset(param1:Number) : void
      {
         var_1618 = param1;
      }
      
      public function get xOffset() : int
      {
         return var_1617;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         var_1613 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return var_1613;
      }
      
      public function set tag(param1:String) : void
      {
         var_1615 = param1;
      }
      
      public function set alpha(param1:int) : void
      {
         var_1614 = param1;
      }
   }
}
