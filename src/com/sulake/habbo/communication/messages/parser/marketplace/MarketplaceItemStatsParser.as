package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceItemStatsParser implements IMessageParser
   {
       
      
      private var var_1433:Array;
      
      private var var_1668:int;
      
      private var var_1740:int;
      
      private var var_1739:int;
      
      private var var_1741:int;
      
      private var _dayOffsets:Array;
      
      private var var_1742:int;
      
      private var var_1432:Array;
      
      public function MarketplaceItemStatsParser()
      {
         super();
      }
      
      public function get dayOffsets() : Array
      {
         return _dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return var_1433;
      }
      
      public function get furniTypeId() : int
      {
         return var_1740;
      }
      
      public function get historyLength() : int
      {
         return var_1741;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get furniCategoryId() : int
      {
         return var_1739;
      }
      
      public function get offerCount() : int
      {
         return var_1742;
      }
      
      public function get soldAmounts() : Array
      {
         return var_1432;
      }
      
      public function get averagePrice() : int
      {
         return var_1668;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1668 = param1.readInteger();
         var_1742 = param1.readInteger();
         var_1741 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         _dayOffsets = [];
         var_1433 = [];
         var_1432 = [];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _dayOffsets.push(param1.readInteger());
            var_1433.push(param1.readInteger());
            var_1432.push(param1.readInteger());
            _loc3_++;
         }
         var_1739 = param1.readInteger();
         var_1740 = param1.readInteger();
         return true;
      }
   }
}
