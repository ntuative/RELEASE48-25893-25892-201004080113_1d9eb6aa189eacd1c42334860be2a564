package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_341:Number = 0.5;
      
      private static const const_771:int = 3;
      
      private static const const_1071:Number = 1;
       
      
      private var var_1867:Boolean = false;
      
      private var var_1870:Boolean = false;
      
      private var var_1016:int = 0;
      
      private var var_259:Vector3d = null;
      
      private var var_1871:int = 0;
      
      private var var_1874:int = 0;
      
      private var var_1865:Boolean = false;
      
      private var var_1869:int = -2;
      
      private var var_1873:Boolean = false;
      
      private var var_1868:int = 0;
      
      private var var_1866:int = -1;
      
      private var var_401:Vector3d = null;
      
      private var var_1872:int = 0;
      
      public function RoomCamera()
      {
         super();
      }
      
      public function get roomWd() : int
      {
         return var_1871;
      }
      
      public function get targetId() : int
      {
         return var_1866;
      }
      
      public function set roomHt(param1:int) : void
      {
         var_1868 = param1;
      }
      
      public function set roomWd(param1:int) : void
      {
         var_1871 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         var_1867 = param1;
      }
      
      public function set targetId(param1:int) : void
      {
         var_1866 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         var_1870 = param1;
      }
      
      public function dispose() : void
      {
         var_401 = null;
         var_259 = null;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(var_401 == null)
         {
            var_401 = new Vector3d();
         }
         var_401.assign(param1);
         var_1016 = 0;
      }
      
      public function get targetCategory() : int
      {
         return var_1869;
      }
      
      public function get screenHt() : int
      {
         return var_1872;
      }
      
      public function set screenWd(param1:int) : void
      {
         var_1874 = param1;
      }
      
      public function get location() : IVector3d
      {
         return var_259;
      }
      
      public function set screenHt(param1:int) : void
      {
         var_1872 = param1;
      }
      
      public function get roomHt() : int
      {
         return var_1868;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return var_1867;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return var_1870;
      }
      
      public function update(param1:uint) : void
      {
         var _loc2_:* = null;
         if(var_401 != null && var_259 != null)
         {
            ++var_1016;
            _loc2_ = Vector3d.dif(var_401,var_259);
            if(_loc2_.length <= const_341)
            {
               var_259 = var_401;
               var_401 = null;
            }
            else
            {
               _loc2_.div(_loc2_.length);
               if(_loc2_.length < const_341 * (const_771 + 1))
               {
                  _loc2_.mul(const_341);
               }
               else if(var_1016 <= const_771)
               {
                  _loc2_.mul(const_341);
               }
               else
               {
                  _loc2_.mul(const_1071);
               }
               var_259 = Vector3d.sum(var_259,_loc2_);
            }
         }
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         var_1865 = param1;
      }
      
      public function get screenWd() : int
      {
         return var_1874;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         var_1873 = param1;
      }
      
      public function set targetCategory(param1:int) : void
      {
         var_1869 = param1;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(var_259 != null)
         {
            return;
         }
         var_259 = new Vector3d();
         var_259.assign(param1);
      }
      
      public function get centeredLocX() : Boolean
      {
         return var_1865;
      }
      
      public function get centeredLocY() : Boolean
      {
         return var_1873;
      }
   }
}
