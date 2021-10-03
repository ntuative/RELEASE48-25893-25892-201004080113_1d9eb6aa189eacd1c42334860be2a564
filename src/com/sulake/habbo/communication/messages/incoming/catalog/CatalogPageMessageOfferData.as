package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageOfferData
   {
       
      
      private var var_817:Array;
      
      private var var_827:int;
      
      private var var_1181:String;
      
      private var _offerId:int;
      
      private var var_828:int;
      
      public function CatalogPageMessageOfferData(param1:IMessageDataWrapper)
      {
         super();
         _offerId = param1.readInteger();
         var_1181 = param1.readString();
         var_827 = param1.readInteger();
         var_828 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         var_817 = new Array();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            var_817.push(new CatalogPageMessageProductData(param1));
            _loc3_++;
         }
      }
      
      public function get products() : Array
      {
         return var_817;
      }
      
      public function get priceInCredits() : int
      {
         return var_827;
      }
      
      public function get localizationId() : String
      {
         return var_1181;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get priceInPixels() : int
      {
         return var_828;
      }
   }
}
