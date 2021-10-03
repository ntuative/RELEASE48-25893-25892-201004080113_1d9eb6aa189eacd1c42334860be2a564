package com.sulake.habbo.toolbar
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IRegionWindow;
   import com.sulake.core.window.enum.WindowType;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.toolbar.events.HabboToolbarEvent;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import com.sulake.habbo.window.enum.HabboWindowStyle;
   import com.sulake.habbo.window.enum.HabboWindowType;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class ToolbarIcon
   {
       
      
      private var var_479:ToolbarIconGroup;
      
      private var var_1012:Boolean = false;
      
      private var var_1862:String;
      
      private var var_901:Number;
      
      private var _assetLibrary:IAssetLibrary;
      
      private var var_1011:String = "-1";
      
      private var _window:IBitmapWrapperWindow;
      
      private var var_31:String = "-1";
      
      private var var_95:IRegionWindow;
      
      private var _bitmapData:BitmapData;
      
      private var var_676:String;
      
      private var var_1863:int;
      
      private var var_675:Timer;
      
      private var var_1469:Array;
      
      private var var_1010:ToolbarIconBouncer;
      
      private var _windowManager:IHabboWindowManager;
      
      private var _events:IEventDispatcher;
      
      private var var_2301:Array;
      
      private var var_258:ToolbarBarMenuAnimator;
      
      private var var_400:ToolbarIconAnimator;
      
      private var var_565:Array;
      
      private var var_833:Array;
      
      private var var_832:String = "-1";
      
      private var var_2369:Boolean = true;
      
      private var var_1013:Array;
      
      private var var_1191:Timer;
      
      private var var_1864:int;
      
      private var var_84:Number = 0;
      
      private var _y:Number = 0;
      
      public function ToolbarIcon(param1:ToolbarIconGroup, param2:IHabboWindowManager, param3:IAssetLibrary, param4:String, param5:IEventDispatcher, param6:ToolbarBarMenuAnimator)
      {
         var_565 = new Array();
         var_833 = new Array();
         var_2301 = new Array();
         var_1010 = new ToolbarIconBouncer(0.8,1);
         super();
         var_479 = param1;
         _windowManager = param2;
         _assetLibrary = param3;
         var_676 = param4;
         _events = param5;
         var_258 = param6;
         var_1191 = new Timer(40,40);
         var_1191.addEventListener(TimerEvent.TIMER,updateBouncer);
         var_95 = param2.createWindow("TOOLBAR_ICON_" + param4 + "_REGION","",WindowType.const_428,HabboWindowStyle.const_39,HabboWindowParam.const_41,new Rectangle(0,0,1,1),onMouseEvent) as IRegionWindow;
         var_95.background = true;
         var_95.mouseTreshold = 0;
         var_95.visible = false;
         _window = IBitmapWrapperWindow(param2.createWindow("TOOLBAR_ICON_" + param4,"",HabboWindowType.BITMAP_WRAPPER,HabboWindowStyle.const_39,HabboWindowParam.const_39,new Rectangle(0,0,1,1),onMouseEvent,0));
         var_95.addChild(_window);
         _window.addEventListener(WindowEvent.const_45,onWindowResized);
      }
      
      private function getStateObject(param1:String) : StateItem
      {
         return var_1469[var_1013.indexOf(param1)];
      }
      
      public function get windowOffsetFromIcon() : Number
      {
         return var_1864;
      }
      
      public function get iconId() : String
      {
         return var_676;
      }
      
      private function onWindowResized(param1:WindowEvent) : void
      {
         updateRegion();
      }
      
      public function changePosition(param1:Number) : void
      {
         var_901 = param1;
         updateRegion();
      }
      
      public function setIcon(param1:Boolean = true) : void
      {
         exists = param1;
         setAnimator();
      }
      
      public function set state(param1:String) : void
      {
         var_31 = param1;
         exists = true;
         setAnimator();
         setTooltip();
      }
      
      private function updateRegion() : void
      {
         if(var_95 == null || _window == null)
         {
            return;
         }
         var_95.width = _window.width;
         var_95.height = _window.height;
         var _loc1_:Boolean = false;
         if(_loc1_)
         {
            var_84 = (0 - 0) / 2;
            _y = var_901 + (0 - 0) / 2;
         }
         else
         {
            var_84 = var_901 + (0 - 0) / 2;
            _y = (0 - 0) / 2;
         }
         var_95.x = var_84;
         var_95.y = _y;
      }
      
      public function dispose() : void
      {
         if(_window != null)
         {
            _window.dispose();
            _window = null;
         }
         if(var_95 != null)
         {
            var_95.dispose();
            var_95 = null;
         }
         var_565 = null;
         var_833 = null;
         exists = false;
         _windowManager = null;
         _events = null;
         var_258 = null;
         var_400 = null;
         _bitmapData = null;
      }
      
      public function dockMenu(param1:String, param2:Array = null, param3:Boolean = false) : void
      {
         var _loc4_:* = null;
         if(var_565.indexOf(param1) < 0)
         {
            var_565.push(param1);
            _loc4_ = new MenuSettingsItem(param1,param2,param3);
            var_833.push(_loc4_);
         }
      }
      
      private function onMouseEvent(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc4_:* = null;
         if(!var_1012)
         {
            return;
         }
         var _loc3_:StateItem = getCurrentStateObject();
         switch(param1.type)
         {
            case WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK:
               if(var_258)
               {
                  var_258.repositionWindow(var_676,true);
               }
               if(_events != null)
               {
                  _loc4_ = new HabboToolbarEvent(HabboToolbarEvent.const_57);
                  _loc4_.iconId = var_676;
                  _events.dispatchEvent(_loc4_);
               }
               break;
            case WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER:
               if(false)
               {
                  if(_loc3_.hasStateOver)
                  {
                     state = _loc3_.stateOver;
                  }
                  else
                  {
                     state = var_1011;
                  }
               }
               break;
            case WindowMouseEvent.const_30:
               if(false)
               {
                  if(_loc3_.hasDefaultState)
                  {
                     state = _loc3_.defaultState;
                  }
                  else
                  {
                     state = var_832;
                  }
               }
         }
      }
      
      public function docksMenu(param1:String) : Boolean
      {
         return var_565.indexOf(param1) > -1;
      }
      
      public function menuLockedToIcon(param1:String) : Boolean
      {
         if(!docksMenu(param1))
         {
            return false;
         }
         var _loc2_:MenuSettingsItem = var_833[var_565.indexOf(param1)];
         return _loc2_.lockToIcon;
      }
      
      public function set exists(param1:Boolean) : void
      {
         var_1012 = param1;
         if(var_95 != null)
         {
            var_95.visible = var_1012;
         }
      }
      
      private function setTooltip() : void
      {
         if(var_95 == null)
         {
            return;
         }
         var _loc1_:StateItem = getCurrentStateObject();
         if(_loc1_ != null && _loc1_.tooltip != null)
         {
            var_95.toolTipCaption = "${toolbar.icon.tooltip." + _loc1_.tooltip + "}";
         }
         else
         {
            var_95.toolTipCaption = "${toolbar.icon.tooltip." + var_1862.toLowerCase() + "}";
         }
         var_95.toolTipDelay = 100;
      }
      
      public function animateWindowIn(param1:String, param2:IWindowContainer, param3:Number, param4:String, param5:Point) : void
      {
         if(var_258 != null)
         {
            var_258.animateWindowIn(this,param1,param2,var_676,param3,param4,getMenuYieldList(param1));
         }
      }
      
      private function updateAnimator(param1:Event) : void
      {
         if(var_400 != null && _window != null)
         {
            var_400.update(_window);
            if(var_400.hasNextState())
            {
               state = var_400.nextState;
            }
         }
      }
      
      public function defineFromXML(param1:XML) : void
      {
         var _loc3_:int = 0;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var_1469 = new Array();
         var_1013 = new Array();
         var_1862 = param1.@id;
         var_1864 = int(param1.@window_offset_from_icon);
         var_1863 = int(param1.@window_margin);
         var _loc2_:XMLList = param1.elements("state");
         if(_loc2_.length() > 0)
         {
            if(param1.attribute("state_over").length() > 0)
            {
               var_1011 = param1.@state_over;
            }
            if(param1.attribute("state_default").length() > 0)
            {
               var_832 = param1.@state_default;
            }
            _loc3_ = 0;
            while(_loc3_ < _loc2_.length())
            {
               _loc4_ = _loc2_[_loc3_];
               _loc5_ = new StateItem(_loc4_,param1.@id.toLowerCase());
               var_1013.push(_loc5_.id);
               var_1469.push(_loc5_);
               if(_loc3_ == 0)
               {
                  if(var_1011 == "-1")
                  {
                     var_1011 = _loc5_.id;
                  }
                  if(var_832 == "-1")
                  {
                     var_832 = _loc5_.id;
                  }
               }
               _loc3_++;
            }
         }
         var_31 = var_832;
      }
      
      public function setIconBitmapData(param1:BitmapData = null) : void
      {
         exists = true;
         _bitmapData = param1;
         setAnimator();
      }
      
      public function hideWindow(param1:String, param2:IWindowContainer, param3:Number, param4:String) : void
      {
         if(var_258 != null)
         {
            var_258.hideWindow(param1,param2,var_676,param3);
         }
      }
      
      public function positionWindow(param1:String, param2:IWindowContainer, param3:Number, param4:String) : void
      {
         if(var_258 != null)
         {
            var_258.positionWindow(this,param1,param2,var_676,param3,getMenuYieldList(param1));
         }
      }
      
      public function animateWindowOut(param1:String, param2:IWindowContainer, param3:String) : void
      {
         if(var_258 != null)
         {
            var_258.animateWindowOut(this,param1,param2,param3);
         }
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get exists() : Boolean
      {
         return var_1012;
      }
      
      private function updateBouncer(param1:Event) : void
      {
         if(var_1010 != null && _window != null)
         {
            var_1010.update();
            _window.y = var_1010.location;
         }
      }
      
      private function setAnimator() : void
      {
         if(var_675 != null)
         {
            var_675.stop();
            var_675 = null;
         }
         var _loc1_:StateItem = getCurrentStateObject();
         if(_loc1_ != null && var_1012)
         {
            if(_loc1_.frames == null)
            {
               return;
            }
            var_400 = new ToolbarIconAnimator(_loc1_,_assetLibrary,_window,var_84,_y,_bitmapData);
            if(false)
            {
               var_675 = new Timer(_loc1_.timer);
               var_675.addEventListener(TimerEvent.TIMER,updateAnimator);
               var_675.start();
            }
            if(_loc1_.bounce)
            {
               var_1010.reset(-7);
               var_1191.reset();
               var_1191.start();
            }
         }
         else
         {
            var_400 = null;
            _window.bitmap = null;
         }
      }
      
      public function get windowMargin() : Number
      {
         return var_1863 + var_479.windowMargin;
      }
      
      private function getCurrentStateObject() : StateItem
      {
         return getStateObject(var_31);
      }
      
      public function get window() : IWindow
      {
         return var_95;
      }
      
      public function get x() : Number
      {
         return var_84;
      }
      
      private function getMenuYieldList(param1:String) : Array
      {
         if(!docksMenu(param1))
         {
            return null;
         }
         var _loc2_:MenuSettingsItem = var_833[var_565.indexOf(param1)];
         return _loc2_.yieldList;
      }
      
      public function get group() : ToolbarIconGroup
      {
         return var_479;
      }
   }
}
