package com.sulake.habbo.avatar.animation
{
   public class AddDataContainer
   {
       
      
      private var var_1406:String;
      
      private var var_1404:String;
      
      private var var_972:String;
      
      private var var_435:Number = 1;
      
      private var _id:String;
      
      public function AddDataContainer(param1:XML)
      {
         super();
         _id = String(param1.@id);
         var_1406 = String(param1.@align);
         var_972 = String(param1.@base);
         var_1404 = String(param1.@ink);
         var _loc2_:String = String(param1.@blend);
         if(_loc2_.length > 0)
         {
            var_435 = Number(_loc2_);
            if(var_435 > 1)
            {
               var_435 /= 100;
            }
         }
      }
      
      public function get align() : String
      {
         return var_1406;
      }
      
      public function get ink() : String
      {
         return var_1404;
      }
      
      public function get base() : String
      {
         return var_972;
      }
      
      public function get isBlended() : Boolean
      {
         return var_435 != 1;
      }
      
      public function get blend() : Number
      {
         return var_435;
      }
      
      public function get id() : String
      {
         return _id;
      }
   }
}
