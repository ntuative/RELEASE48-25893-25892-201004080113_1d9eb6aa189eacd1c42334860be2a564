package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1208:IID;
      
      private var _isDisposed:Boolean;
      
      private var var_838:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         var_1208 = param1;
         var_838 = new Array();
         _isDisposed = false;
      }
      
      public function get receivers() : Array
      {
         return var_838;
      }
      
      public function get identifier() : IID
      {
         return var_1208;
      }
      
      public function get disposed() : Boolean
      {
         return _isDisposed;
      }
      
      public function dispose() : void
      {
         if(!_isDisposed)
         {
            _isDisposed = true;
            var_1208 = null;
            while(false)
            {
               var_838.pop();
            }
            var_838 = null;
         }
      }
   }
}
