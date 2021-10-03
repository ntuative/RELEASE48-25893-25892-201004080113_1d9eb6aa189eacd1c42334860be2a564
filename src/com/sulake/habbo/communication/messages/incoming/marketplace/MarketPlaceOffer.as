package com.sulake.habbo.communication.messages.incoming.marketplace
{
   public class MarketPlaceOffer
   {
       
      
      private var var_1132:int;
      
      private var var_1672:int = -1;
      
      private var var_367:int;
      
      private var var_1668:int;
      
      private var var_1669:int;
      
      private var _offerId:int;
      
      private var var_1131:int;
      
      private var var_1671:int;
      
      public function MarketPlaceOffer(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int, param8:int = -1)
      {
         super();
         _offerId = param1;
         var_1671 = param2;
         var_1669 = param3;
         var_1132 = param4;
         var_367 = param5;
         var_1672 = param6;
         var_1668 = param7;
         var_1131 = param8;
      }
      
      public function get status() : int
      {
         return var_367;
      }
      
      public function get price() : int
      {
         return var_1132;
      }
      
      public function get timeLeftMinutes() : int
      {
         return var_1672;
      }
      
      public function get offerCount() : int
      {
         return var_1131;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get furniType() : int
      {
         return var_1669;
      }
      
      public function get averagePrice() : int
      {
         return var_1668;
      }
      
      public function get furniId() : int
      {
         return var_1671;
      }
   }
}
