package com.sulake.habbo.catalog.purchase
{
   import com.sulake.habbo.communication.messages.incoming.catalog.GiftWrappingConfigurationEvent;
   import com.sulake.habbo.communication.messages.parser.catalog.GiftWrappingConfigurationParser;
   
   public class GiftWrappingConfiguration
   {
       
      
      private var var_570:Array;
      
      private var var_1132:int;
      
      private var var_1429:Array;
      
      private var var_569:Array;
      
      private var var_1310:Boolean = false;
      
      public function GiftWrappingConfiguration(param1:GiftWrappingConfigurationEvent)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         var _loc2_:GiftWrappingConfigurationParser = param1.getParser();
         if(_loc2_ == null)
         {
            return;
         }
         var_1310 = _loc2_.isWrappingEnabled;
         var_1132 = _loc2_.wrappingPrice;
         var_1429 = _loc2_.stuffTypes;
         var_569 = _loc2_.boxTypes;
         var_570 = _loc2_.ribbonTypes;
      }
      
      public function get ribbonTypes() : Array
      {
         return var_570;
      }
      
      public function get stuffTypes() : Array
      {
         return var_1429;
      }
      
      public function get price() : int
      {
         return var_1132;
      }
      
      public function get boxTypes() : Array
      {
         return var_569;
      }
      
      public function get isEnabled() : Boolean
      {
         return var_1310;
      }
   }
}
