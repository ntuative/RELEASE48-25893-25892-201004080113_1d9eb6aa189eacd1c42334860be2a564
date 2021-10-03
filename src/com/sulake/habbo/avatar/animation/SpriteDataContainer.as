package com.sulake.habbo.avatar.animation
{
   public class SpriteDataContainer implements ISpriteDataContainer
   {
       
      
      private var _id:String;
      
      private var var_2232:IAnimation;
      
      private var var_2230:Boolean;
      
      private var var_1404:int;
      
      private var var_1351:Array;
      
      private var var_2231:String;
      
      private var _dx:Array;
      
      private var var_1352:Array;
      
      public function SpriteDataContainer(param1:IAnimation, param2:XML)
      {
         var _loc3_:* = null;
         var _loc4_:int = 0;
         super();
         var_2232 = param1;
         _id = String(param2.@id);
         var_1404 = parseInt(param2.@ink);
         var_2231 = String(param2.@member);
         var_2230 = Boolean(parseInt(param2.@directions));
         _dx = [];
         var_1352 = [];
         var_1351 = [];
         for each(_loc3_ in param2.direction)
         {
            _loc4_ = parseInt(_loc3_.@id);
            _dx[_loc4_] = parseInt(_loc3_.@dx);
            var_1352[_loc4_] = parseInt(_loc3_.@dy);
            var_1351[_loc4_] = parseInt(_loc3_.@dz);
         }
      }
      
      public function get animation() : IAnimation
      {
         return var_2232;
      }
      
      public function get hasDirections() : Boolean
      {
         return var_2230;
      }
      
      public function get member() : String
      {
         return var_2231;
      }
      
      public function get id() : String
      {
         return _id;
      }
      
      public function getDirectionOffsetZ(param1:int) : int
      {
         if(param1 < var_1351.length)
         {
            return var_1351[param1];
         }
         return 0;
      }
      
      public function getDirectionOffsetX(param1:int) : int
      {
         if(param1 < _dx.length)
         {
            return _dx[param1];
         }
         return 0;
      }
      
      public function getDirectionOffsetY(param1:int) : int
      {
         if(param1 < var_1352.length)
         {
            return var_1352[param1];
         }
         return 0;
      }
      
      public function get ink() : int
      {
         return var_1404;
      }
   }
}
