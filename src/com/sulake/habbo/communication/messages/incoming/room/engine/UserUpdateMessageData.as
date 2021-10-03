package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _y:Number = 0;
      
      private var var_85:Number = 0;
      
      private var var_223:int = 0;
      
      private var var_1757:int = 0;
      
      private var var_2189:Number = 0;
      
      private var var_2190:Number = 0;
      
      private var var_2192:Number = 0;
      
      private var var_2191:Number = 0;
      
      private var var_2193:Boolean = false;
      
      private var var_84:Number = 0;
      
      private var _id:int = 0;
      
      private var var_198:Array;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         var_198 = [];
         super();
         _id = param1;
         var_84 = param2;
         _y = param3;
         var_85 = param4;
         var_2191 = param5;
         var_223 = param6;
         var_1757 = param7;
         var_2189 = param8;
         var_2190 = param9;
         var_2192 = param10;
         var_2193 = param11;
         var_198 = param12;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get z() : Number
      {
         return var_85;
      }
      
      public function get dir() : int
      {
         return var_223;
      }
      
      public function get localZ() : Number
      {
         return var_2191;
      }
      
      public function get isMoving() : Boolean
      {
         return var_2193;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get dirHead() : int
      {
         return var_1757;
      }
      
      public function get targetX() : Number
      {
         return var_2189;
      }
      
      public function get targetY() : Number
      {
         return var_2190;
      }
      
      public function get targetZ() : Number
      {
         return var_2192;
      }
      
      public function get x() : Number
      {
         return var_84;
      }
      
      public function get actions() : Array
      {
         return var_198.slice();
      }
   }
}
