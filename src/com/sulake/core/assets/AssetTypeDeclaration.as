package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_1811:Class;
      
      private var var_1813:Class;
      
      private var var_1812:String;
      
      private var var_1176:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         var_1812 = param1;
         var_1813 = param2;
         var_1811 = param3;
         if(rest == null)
         {
            var_1176 = new Array();
         }
         else
         {
            var_1176 = rest;
         }
      }
      
      public function get loaderClass() : Class
      {
         return var_1811;
      }
      
      public function get assetClass() : Class
      {
         return var_1813;
      }
      
      public function get mimeType() : String
      {
         return var_1812;
      }
      
      public function get fileTypes() : Array
      {
         return var_1176;
      }
   }
}
