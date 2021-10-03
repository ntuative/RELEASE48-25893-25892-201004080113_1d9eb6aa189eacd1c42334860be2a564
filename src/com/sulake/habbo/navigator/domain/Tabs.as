package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_599:int = 6;
      
      public static const const_232:int = 5;
      
      public static const const_541:int = 2;
      
      public static const const_314:int = 9;
      
      public static const const_329:int = 4;
      
      public static const const_246:int = 2;
      
      public static const const_642:int = 4;
      
      public static const const_220:int = 8;
      
      public static const const_583:int = 7;
      
      public static const const_255:int = 3;
      
      public static const const_324:int = 1;
      
      public static const const_195:int = 5;
      
      public static const const_416:int = 12;
      
      public static const const_293:int = 1;
      
      public static const const_717:int = 11;
      
      public static const const_606:int = 3;
      
      public static const const_1513:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_378:Array;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
         var_378 = new Array();
         var_378.push(new Tab(_navigator,const_324,const_416,new EventsTabPageDecorator(_navigator),MainViewCtrl.const_354));
         var_378.push(new Tab(_navigator,const_246,const_293,new RoomsTabPageDecorator(_navigator),MainViewCtrl.const_354));
         var_378.push(new Tab(_navigator,const_329,const_717,new OfficialTabPageDecorator(_navigator),MainViewCtrl.const_829));
         var_378.push(new Tab(_navigator,const_255,const_232,new MyRoomsTabPageDecorator(_navigator),MainViewCtrl.const_354));
         var_378.push(new Tab(_navigator,const_195,const_220,new SearchTabPageDecorator(_navigator),MainViewCtrl.const_609));
         setSelectedTab(const_324);
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_378)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in var_378)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_378)
         {
            _loc1_.selected = false;
         }
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_329;
      }
      
      public function get tabs() : Array
      {
         return var_378;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         getTab(param1).selected = true;
      }
   }
}
