package com.sulake.habbo.catalog.viewer.widgets
{
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IItemGridWindow;
   import com.sulake.core.window.components.IItemListWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.habbo.catalog.recycler.IRecycler;
   import com.sulake.habbo.catalog.recycler.PrizeContainer;
   import com.sulake.habbo.catalog.recycler.PrizeLevelContainer;
   import com.sulake.habbo.catalog.recycler.PrizeViewer;
   import com.sulake.habbo.catalog.viewer.IGridItem;
   import com.sulake.habbo.catalog.viewer.IItemGrid;
   import flash.events.TimerEvent;
   
   public class RecyclerPrizesCatalogWidget extends CatalogWidget implements ICatalogWidget, IItemGrid
   {
       
      
      private var var_743:Array;
      
      private var var_1342:XML;
      
      private var var_304:IGridItem;
      
      private var var_1341:XML;
      
      private var _itemList:IItemListWindow;
      
      private var var_915:PrizeViewer;
      
      public function RecyclerPrizesCatalogWidget(param1:IWindowContainer)
      {
         super(param1);
      }
      
      protected function populateItemGrid(param1:TimerEvent = null) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < var_743.length)
         {
            createLevelItem(var_743[_loc2_]);
            _loc2_++;
         }
      }
      
      override public function init() : void
      {
         var _loc1_:* = null;
         super.init();
         var_915 = new PrizeViewer();
         var_743 = recycler.getPrizeTable();
         if(var_743 == null)
         {
            return;
         }
         _itemList = _window.findChildByName("itemList") as IItemListWindow;
         _loc1_ = page.viewer.catalog.assets.getAssetByName("gridItem") as XmlAsset;
         var_1341 = _loc1_.content as XML;
         _loc1_ = page.viewer.catalog.assets.getAssetByName("recyclerPrizesWidgetLevelItem") as XmlAsset;
         var_1342 = _loc1_.content as XML;
         populateItemGrid();
         if(false && var_743[0].prizes.length > 0)
         {
            select(var_743[0].prizes[0] as IGridItem);
         }
      }
      
      private function createLevelItem(param1:PrizeLevelContainer) : void
      {
         var _loc6_:* = null;
         var _loc2_:IWindowContainer = page.viewer.catalog.windowManager.buildFromXML(var_1342) as IWindowContainer;
         _itemList.addListItem(_loc2_);
         var _loc3_:ITextWindow = _loc2_.findChildByName("headerText") as ITextWindow;
         if(_loc3_ != null)
         {
            _loc3_.text = page.viewer.catalog.localization.getKey("recycler.prizes.category." + param1.prizeLevelId);
         }
         var _loc4_:IItemGridWindow = _loc2_.findChildByName("itemGrid") as IItemGridWindow;
         var _loc5_:int = 0;
         while(_loc5_ < param1.prizes.length)
         {
            _loc6_ = param1.prizes[_loc5_];
            createPrizeItem(_loc6_,_loc4_);
            _loc5_++;
         }
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(var_915 != null)
         {
            var_915.dispose();
            var_915 = null;
         }
         _itemList = null;
         var_1341 = null;
         var_1342 = null;
         var_304 = null;
      }
      
      protected function createPrizeItem(param1:PrizeContainer, param2:IItemGridWindow) : void
      {
         var _loc3_:IWindowContainer = page.viewer.catalog.windowManager.buildFromXML(var_1341) as IWindowContainer;
         param2.addGridItem(_loc3_);
         param2.height = param2.scrollableRegion.height;
         param1.view = _loc3_;
         param1.grid = this;
         param1.setIcon(page.viewer.roomEngine);
      }
      
      public function select(param1:IGridItem) : void
      {
         if(param1 == null)
         {
            return;
         }
         if(var_304 != null)
         {
            var_304.deActivate();
         }
         var_304 = param1;
         param1.activate();
         var _loc2_:PrizeContainer = param1 as PrizeContainer;
         var _loc3_:IWindowContainer = window.findChildByName("productView") as IWindowContainer;
         var _loc4_:String = page.viewer.catalog.localization.getKey("recycler.prizes.odds." + _loc2_.oddsLevelId);
         var_915.viewProduct(page.viewer.roomEngine,_loc3_,_loc2_.productItemType,_loc2_.productItemTypeId,_loc2_.title,_loc4_);
      }
      
      private function get recycler() : IRecycler
      {
         return page.viewer.catalog.getRecycler();
      }
   }
}