package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_391:uint;
      
      private var var_999:IUnknown;
      
      private var var_1180:String;
      
      private var var_1000:IID;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         var_1000 = param1;
         var_1180 = getQualifiedClassName(var_1000);
         var_999 = param2;
         var_391 = 0;
      }
      
      public function get iid() : IID
      {
         return var_1000;
      }
      
      public function get disposed() : Boolean
      {
         return var_999 == null;
      }
      
      public function get references() : uint
      {
         return var_391;
      }
      
      public function release() : uint
      {
         return references > 0 ? uint(--var_391) : uint(0);
      }
      
      public function get unknown() : IUnknown
      {
         return var_999;
      }
      
      public function get iis() : String
      {
         return var_1180;
      }
      
      public function reserve() : uint
      {
         return ++var_391;
      }
      
      public function dispose() : void
      {
         var_1000 = null;
         var_1180 = null;
         var_999 = null;
         var_391 = 0;
      }
   }
}
