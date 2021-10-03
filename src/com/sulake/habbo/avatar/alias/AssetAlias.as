package com.sulake.habbo.avatar.alias
{
   public class AssetAlias
   {
       
      
      private var var_950:Boolean;
      
      private var _name:String;
      
      private var var_2239:String;
      
      private var var_951:Boolean;
      
      public function AssetAlias(param1:XML)
      {
         super();
         _name = String(param1.@name);
         var_2239 = String(param1.@link);
         var_951 = Boolean(parseInt(param1.@fliph));
         var_950 = Boolean(parseInt(param1.@flipv));
      }
      
      public function get flipH() : Boolean
      {
         return var_951;
      }
      
      public function get flipV() : Boolean
      {
         return var_950;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get link() : String
      {
         return var_2239;
      }
   }
}
