package com.sulake.core.communication.util
{
   import flash.utils.ByteArray;
   
   public class Short
   {
       
      
      private var var_668:ByteArray;
      
      public function Short(param1:int)
      {
         super();
         var_668 = new ByteArray();
         var_668.writeShort(param1);
         var_668.position = 0;
      }
      
      public function get value() : int
      {
         var _loc1_:int = 0;
         var_668.position = 0;
         if(false)
         {
            _loc1_ = var_668.readShort();
            var_668.position = 0;
         }
         return _loc1_;
      }
   }
}
