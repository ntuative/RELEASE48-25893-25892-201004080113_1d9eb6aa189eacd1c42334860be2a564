package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageOfferData;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageProductData;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer
   {
      
      public static const const_997:String = "price_type_none";
      
      public static const const_409:String = "pricing_model_multi";
      
      public static const const_408:String = "price_type_credits";
      
      public static const const_456:String = "price_type_credits_and_pixels";
      
      public static const const_375:String = "pricing_model_bundle";
      
      public static const const_437:String = "pricing_model_single";
      
      public static const const_702:String = "price_type_credits_or_credits_and_pixels";
      
      public static const const_1244:String = "pricing_model_unknown";
      
      public static const const_424:String = "price_type_pixels";
       
      
      private var var_827:int;
      
      private var _offerId:int;
      
      private var var_828:int;
      
      private var var_393:String;
      
      private var var_559:String;
      
      private var var_1817:int;
      
      private var var_564:ICatalogPage;
      
      private var var_1181:String;
      
      private var var_392:IProductContainer;
      
      public function Offer(param1:CatalogPageMessageOfferData, param2:ICatalogPage)
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         super();
         _offerId = param1.offerId;
         var_1181 = param1.localizationId;
         var_827 = param1.priceInCredits;
         var_828 = param1.priceInPixels;
         var_564 = param2;
         var _loc3_:Array = new Array();
         for each(_loc4_ in param1.products)
         {
            _loc5_ = param2.viewer.catalog.getProductData(param1.localizationId);
            _loc6_ = param2.viewer.catalog.getFurnitureData(_loc4_.furniClassId,_loc4_.productType);
            _loc7_ = new Product(_loc4_,_loc5_,_loc6_);
            _loc3_.push(_loc7_);
         }
         analyzePricingModel(_loc3_);
         analyzePriceType();
         createProductContainer(_loc3_);
      }
      
      public function get pricingModel() : String
      {
         return var_393;
      }
      
      public function get page() : ICatalogPage
      {
         return var_564;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         var_1817 = param1;
      }
      
      public function get productContainer() : IProductContainer
      {
         return var_392;
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
      
      public function dispose() : void
      {
         _offerId = 0;
         var_1181 = "";
         var_827 = 0;
         var_828 = 0;
         var_564 = null;
         if(var_392 != null)
         {
            var_392.dispose();
            var_392 = null;
         }
      }
      
      public function get priceType() : String
      {
         return var_559;
      }
      
      public function get previewCallbackId() : int
      {
         return var_1817;
      }
      
      public function get priceInCredits() : int
      {
         return var_827;
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               var_393 = const_437;
            }
            else
            {
               var_393 = const_409;
            }
         }
         else if(param1.length > 1)
         {
            var_393 = const_375;
         }
         else
         {
            var_393 = const_1244;
         }
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(var_393)
         {
            case const_437:
               var_392 = new SingleProductContainer(this,param1);
               break;
            case const_409:
               var_392 = new MultiProductContainer(this,param1);
               break;
            case const_375:
               var_392 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + var_393);
         }
      }
      
      private function analyzePriceType() : void
      {
         if(var_827 > 0 && var_828 > 0)
         {
            var_559 = const_456;
         }
         else if(var_827 > 0)
         {
            var_559 = const_408;
         }
         else if(var_828 > 0)
         {
            var_559 = const_424;
         }
         else
         {
            var_559 = const_997;
         }
      }
   }
}
