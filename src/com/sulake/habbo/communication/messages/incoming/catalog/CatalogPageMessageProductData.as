package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_202:String = "e";
      
      public static const const_81:String = "i";
      
      public static const const_79:String = "s";
       
      
      private var var_1090:String;
      
      private var var_1355:String;
      
      private var var_1356:int;
      
      private var var_2221:int;
      
      private var var_1091:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         var_1355 = param1.readString();
         var_2221 = param1.readInteger();
         var_1090 = param1.readString();
         var_1091 = param1.readInteger();
         var_1356 = param1.readInteger();
      }
      
      public function get productCount() : int
      {
         return var_1091;
      }
      
      public function get productType() : String
      {
         return var_1355;
      }
      
      public function get expiration() : int
      {
         return var_1356;
      }
      
      public function get furniClassId() : int
      {
         return var_2221;
      }
      
      public function get extraParam() : String
      {
         return var_1090;
      }
   }
}
