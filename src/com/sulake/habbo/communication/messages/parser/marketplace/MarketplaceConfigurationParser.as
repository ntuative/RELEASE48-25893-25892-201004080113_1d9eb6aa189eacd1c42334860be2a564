package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_2091:int;
      
      private var var_1531:int;
      
      private var var_2093:int;
      
      private var var_2092:int;
      
      private var var_2094:int;
      
      private var var_1530:int;
      
      private var var_2043:int;
      
      private var var_1310:Boolean;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get offerMaxPrice() : int
      {
         return var_2091;
      }
      
      public function get tokenBatchPrice() : int
      {
         return var_1531;
      }
      
      public function get averagePricePeriod() : int
      {
         return var_2043;
      }
      
      public function get offerMinPrice() : int
      {
         return var_2092;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get expirationHours() : int
      {
         return var_2094;
      }
      
      public function get tokenBatchSize() : int
      {
         return var_1530;
      }
      
      public function get commission() : int
      {
         return var_2093;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1310 = param1.readBoolean();
         var_2093 = param1.readInteger();
         var_1531 = param1.readInteger();
         var_1530 = param1.readInteger();
         var_2092 = param1.readInteger();
         var_2091 = param1.readInteger();
         var_2094 = param1.readInteger();
         var_2043 = param1.readInteger();
         return true;
      }
      
      public function get isEnabled() : Boolean
      {
         return var_1310;
      }
   }
}
