package com.sulake.habbo.catalog.viewer.widgets.events
{
   import flash.events.Event;
   
   public class CatalogWidgetColoursEvent extends Event
   {
       
      
      private var var_1273:Array;
      
      private var var_1803:String;
      
      private var var_1802:String;
      
      private var var_1801:String;
      
      public function CatalogWidgetColoursEvent(param1:Array, param2:String, param3:String, param4:String, param5:Boolean = false, param6:Boolean = false)
      {
         super(WidgetEvent.CWE_COLOUR_ARRAY,param5,param6);
         var_1273 = param1;
         var_1803 = param2;
         var_1802 = param3;
         var_1801 = param4;
      }
      
      public function get colours() : Array
      {
         return var_1273;
      }
      
      public function get backgroundAssetName() : String
      {
         return var_1803;
      }
      
      public function get colourAssetName() : String
      {
         return var_1802;
      }
      
      public function get chosenColourAssetName() : String
      {
         return var_1801;
      }
   }
}
