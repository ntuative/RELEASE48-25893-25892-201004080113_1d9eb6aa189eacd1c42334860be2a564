package com.sulake.habbo.widget.events
{
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class RoomWidgetRoomViewUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_520:String = "RWRVUE_ROOM_VIEW_POSITION_CHANGED";
      
      public static const const_558:String = "RWRVUE_ROOM_VIEW_SCALE_CHANGED";
      
      public static const const_254:String = "RWRVUE_ROOM_VIEW_SIZE_CHANGED";
       
      
      private var var_1452:Point;
      
      private var var_1453:Rectangle;
      
      private var var_197:Number = 0;
      
      public function RoomWidgetRoomViewUpdateEvent(param1:String, param2:Rectangle = null, param3:Point = null, param4:Number = 0, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         var_1453 = param2;
         var_1452 = param3;
         var_197 = param4;
      }
      
      public function get rect() : Rectangle
      {
         if(var_1453 != null)
         {
            return var_1453.clone();
         }
         return null;
      }
      
      public function get scale() : Number
      {
         return var_197;
      }
      
      public function get positionDelta() : Point
      {
         if(var_1452 != null)
         {
            return var_1452.clone();
         }
         return null;
      }
   }
}
