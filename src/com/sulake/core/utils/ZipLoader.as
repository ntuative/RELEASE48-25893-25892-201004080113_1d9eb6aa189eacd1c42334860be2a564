package com.sulake.core.utils
{
   import deng.fzip.FZip;
   import flash.display.LoaderInfo;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLRequest;
   import flash.system.LoaderContext;
   import flash.utils.getQualifiedClassName;
   
   public class ZipLoader extends LibraryLoader
   {
       
      
      private var var_385:FZip;
      
      private var var_1149:Array;
      
      private var var_1696:uint = 0;
      
      private var var_797:int = 0;
      
      private var var_2358:Array;
      
      public function ZipLoader(param1:Boolean)
      {
         super(param1);
         var_1149 = new Array();
      }
      
      private function onIOError(param1:IOErrorEvent) : void
      {
         Logger.log(param1.text);
         dispatchEvent(new LibraryLoaderEvent(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_ERROR,0));
      }
      
      public function get resources() : Array
      {
         return var_1149;
      }
      
      private function include(param1:Event) : void
      {
         var _loc2_:LoaderInfo = param1.target as LoaderInfo;
         var _loc3_:String = getQualifiedClassName(var_15.content);
         var_1149.push(var_15.contentLoaderInfo.applicationDomain.getDefinition(_loc3_));
         ++var_797;
         if(var_1149.length == var_1696)
         {
            var_15.contentLoaderInfo.removeEventListener(Event.COMPLETE,include);
            var_15.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,onIOError);
            dispatchEvent(new LibraryLoaderEvent(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_COMPLETE,0));
         }
         else
         {
            var_15.loadBytes(var_385.getFileAt(var_797).content);
         }
      }
      
      override public function load(param1:URLRequest, param2:LoaderContext = null, param3:int = 1) : void
      {
         var_320 = param1;
         if(var_385)
         {
            var_385.close();
         }
         var_385 = new FZip();
         var_385.addEventListener(Event.COMPLETE,onComplete);
         var_385.addEventListener(IOErrorEvent.IO_ERROR,onIOError);
         var_385.addEventListener(ProgressEvent.PROGRESS,onProgress);
         var_385.load(var_320);
      }
      
      private function onProgress(param1:ProgressEvent) : void
      {
         dispatchEvent(new LibraryLoaderEvent(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_PROGRESS,0));
      }
      
      private function onComplete(param1:Event) : void
      {
         var_797 = 0;
         var_1696 = var_385.getFileCount();
         removeEventListeners();
         var_15.contentLoaderInfo.addEventListener(Event.COMPLETE,include);
         var_15.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,onIOError);
         var_15.loadBytes(var_385.getFileAt(var_797).content);
      }
   }
}
