package com.sulake.habbo.widget.memenu
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.widget.RoomWidgetBase;
   import com.sulake.habbo.widget.events.RoomWidgetAvatarActionUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetAvatarEditorUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetCreditBalanceUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetDanceUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetFrameUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetHabboClubUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetRoomObjectUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetSettingsUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetToolbarClickedUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetTutorialEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUpdateEffectsUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUserInfoUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetWaveUpdateEvent;
   import com.sulake.habbo.widget.memenu.enum.HabboMeMenuTrackingEvent;
   import com.sulake.habbo.widget.messages.RoomWidgetRequestWidgetMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetSelectOutfitMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetToolbarMessage;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import com.sulake.habbo.window.enum.HabboWindowStyle;
   import com.sulake.habbo.window.enum.HabboWindowType;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class MeMenuWidget extends RoomWidgetBase
   {
      
      public static const const_577:String = "me_menu_settings_view";
      
      public static const const_528:String = "me_menu_effects_view";
      
      public static const const_110:String = "me_menu_top_view";
      
      public static const const_1323:String = "me_menu_rooms_view";
      
      public static const const_896:String = "me_menu_dance_moves_view";
      
      public static const const_318:String = "me_menu_my_clothes_view";
       
      
      private var var_2064:Boolean = false;
      
      private var _isAnimating:Boolean = false;
      
      private var _eventDispatcher:IEventDispatcher;
      
      private var var_1515:int = 0;
      
      private var var_2065:int = 0;
      
      private var var_2066:Boolean = false;
      
      private var var_273:Boolean = false;
      
      private var var_2067:int = 0;
      
      private var var_1806:Number = 0;
      
      private var _mainContainer:IWindowContainer;
      
      private var var_598:Boolean = false;
      
      private var _config:IHabboConfigurationManager;
      
      private var var_1280:int = 0;
      
      private var var_2063:Boolean = false;
      
      private var var_1055:Point;
      
      private var var_36:IMeMenuView;
      
      public function MeMenuWidget(param1:IHabboWindowManager, param2:IAssetLibrary, param3:IHabboLocalizationManager, param4:IEventDispatcher, param5:IHabboConfigurationManager)
      {
         super(param1,param2,param3);
         _config = param5;
         var_1055 = new Point(0,0);
         _eventDispatcher = param4;
         if(param5 != null && false)
         {
            var_2063 = param5.getKey("client.news.embed.enabled","false") == "true";
         }
         changeView(const_110);
         hide();
      }
      
      override public function registerUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.addEventListener(RoomWidgetWaveUpdateEvent.const_651,onWaveEvent);
         param1.addEventListener(RoomWidgetDanceUpdateEvent.const_706,onDanceEvent);
         param1.addEventListener(RoomWidgetUpdateEffectsUpdateEvent.const_611,onUpdateEffects);
         param1.addEventListener(RoomWidgetToolbarClickedUpdateEvent.const_705,onToolbarClicked);
         param1.addEventListener(RoomWidgetFrameUpdateEvent.const_321,onUpdate);
         param1.addEventListener(RoomWidgetAvatarEditorUpdateEvent.const_596,onAvatarEditorClosed);
         param1.addEventListener(RoomWidgetRoomObjectUpdateEvent.const_191,onAvatarDeselected);
         param1.addEventListener(RoomWidgetHabboClubUpdateEvent.const_225,onHabboClubEvent);
         param1.addEventListener(RoomWidgetAvatarActionUpdateEvent.const_635,onAvatarActionEvent);
         param1.addEventListener(RoomWidgetUserInfoUpdateEvent.const_217,onUserInfo);
         param1.addEventListener(RoomWidgetSettingsUpdateEvent.const_302,onSettingsUpdate);
         param1.addEventListener(RoomWidgetTutorialEvent.const_104,onTutorialEvent);
         param1.addEventListener(RoomWidgetTutorialEvent.const_457,onTutorialEvent);
         param1.addEventListener(RoomWidgetCreditBalanceUpdateEvent.const_168,onCreditBalance);
         super.registerUpdateEvents(param1);
      }
      
      private function onUpdate(param1:Event = null) : void
      {
         if(!_isAnimating)
         {
            return;
         }
      }
      
      override public function get mainWindow() : IWindow
      {
         return _mainContainer;
      }
      
      public function get hasEffectOn() : Boolean
      {
         return var_598;
      }
      
      private function onSettingsUpdate(param1:RoomWidgetSettingsUpdateEvent) : void
      {
         if(!var_273)
         {
            return;
         }
         if(var_36.window.name == const_577)
         {
            (var_36 as MeMenuSettingsView).updateSettings(param1);
         }
      }
      
      public function get isHabboClubActive() : Boolean
      {
         return var_1280 > 0;
      }
      
      private function onWaveEvent(param1:RoomWidgetWaveUpdateEvent) : void
      {
         Logger.log("[MeMenuWidget] Wave Event received");
      }
      
      private function onCreditBalance(param1:RoomWidgetCreditBalanceUpdateEvent) : void
      {
         if(param1 == null)
         {
            return;
         }
         var_1515 = param1.balance;
         localizations.registerParameter("widget.memenu.credits","credits",var_1515.toString());
      }
      
      private function onUserInfo(param1:RoomWidgetUserInfoUpdateEvent) : void
      {
         var _loc2_:* = null;
         if(!(var_273 && var_36.window.name == const_318))
         {
            _loc2_ = new RoomWidgetRequestWidgetMessage(RoomWidgetRequestWidgetMessage.const_641);
            if(messageListener != null)
            {
               messageListener.processWidgetMessage(_loc2_);
            }
         }
      }
      
      override public function unregisterUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.removeEventListener(RoomWidgetWaveUpdateEvent.const_651,onWaveEvent);
         param1.removeEventListener(RoomWidgetDanceUpdateEvent.const_706,onDanceEvent);
         param1.removeEventListener(RoomWidgetUpdateEffectsUpdateEvent.const_611,onUpdateEffects);
         param1.removeEventListener(RoomWidgetToolbarClickedUpdateEvent.const_705,onToolbarClicked);
         param1.removeEventListener(RoomWidgetFrameUpdateEvent.const_321,onUpdate);
         param1.removeEventListener(RoomWidgetRoomObjectUpdateEvent.const_191,onAvatarDeselected);
         param1.removeEventListener(RoomWidgetHabboClubUpdateEvent.const_225,onHabboClubEvent);
         param1.removeEventListener(RoomWidgetAvatarActionUpdateEvent.const_635,onAvatarActionEvent);
         param1.removeEventListener(RoomWidgetAvatarEditorUpdateEvent.const_596,onAvatarEditorClosed);
         param1.removeEventListener(RoomWidgetUserInfoUpdateEvent.const_217,onUserInfo);
         param1.removeEventListener(RoomWidgetSettingsUpdateEvent.const_302,onSettingsUpdate);
         param1.removeEventListener(RoomWidgetTutorialEvent.const_457,onTutorialEvent);
         param1.removeEventListener(RoomWidgetTutorialEvent.const_104,onTutorialEvent);
         param1.removeEventListener(RoomWidgetCreditBalanceUpdateEvent.const_168,onCreditBalance);
      }
      
      override public function dispose() : void
      {
         hide();
         _eventDispatcher = null;
         if(var_36 != null)
         {
            var_36.dispose();
            var_36 = null;
         }
         super.dispose();
      }
      
      public function get allowHabboClubDances() : Boolean
      {
         return var_2064;
      }
      
      public function changeToOutfit(param1:int) : void
      {
         var_1806 = new Date().valueOf();
         this.messageListener.processWidgetMessage(new RoomWidgetSelectOutfitMessage(param1));
      }
      
      public function get creditBalance() : int
      {
         return var_1515;
      }
      
      public function get isDancing() : Boolean
      {
         return var_2066;
      }
      
      private function onTutorialEvent(param1:RoomWidgetTutorialEvent) : void
      {
         switch(param1.type)
         {
            case RoomWidgetTutorialEvent.const_457:
               Logger.log("* MeMenuWidget: onHighlightClothesIcon " + var_273 + " view: " + var_36.window.name);
               if(var_273 != true || var_36.window.name != const_110)
               {
                  return;
               }
               (var_36 as MeMenuMainView).setIconAssets("clothes_icon",const_110,"clothes_highlighter_blue");
               break;
            case RoomWidgetTutorialEvent.const_104:
               hide();
         }
      }
      
      public function canChangeOutfit() : Boolean
      {
         var _loc1_:Number = new Date().valueOf();
         return _loc1_ - var_1806 > 5000;
      }
      
      public function get habboClubPeriods() : int
      {
         return var_2065;
      }
      
      private function onAvatarActionEvent(param1:RoomWidgetAvatarActionUpdateEvent) : void
      {
         switch(param1.actionType)
         {
            case RoomWidgetAvatarActionUpdateEvent.EFFECT_ACTIVE:
               var_598 = true;
               break;
            case RoomWidgetAvatarActionUpdateEvent.EFFECT_INACTIVE:
               var_598 = false;
               break;
            default:
               trace("MeMenuWidget: unknown avatar action event: " + param1.actionType);
         }
      }
      
      private function onHabboClubEvent(param1:RoomWidgetHabboClubUpdateEvent) : void
      {
         var _loc2_:* = var_1280 > 0;
         var_1280 = param1.daysLeft;
         var_2065 = param1.periodsLeft;
         var_2067 = param1.pastPeriods;
         var_2064 = param1.allowClubDances;
         if(_loc2_ != param1.daysLeft > 0)
         {
            if(var_36 != null)
            {
               changeView(var_36.window.name);
            }
         }
      }
      
      public function set isDancing(param1:Boolean) : void
      {
         var_2066 = param1;
      }
      
      private function onAvatarDeselected(param1:Event) : void
      {
         if(var_36 != null && var_36.window.name != const_318)
         {
            hide();
         }
      }
      
      public function get mainContainer() : IWindowContainer
      {
         if(_mainContainer == null)
         {
            _mainContainer = windowManager.createWindow("me_menu_main_container","",HabboWindowType.const_1312,HabboWindowStyle.const_877,HabboWindowParam.const_39,new Rectangle(0,0,170,260)) as IWindowContainer;
            _mainContainer.tags.push("room_widget_me_menu");
         }
         return _mainContainer;
      }
      
      private function onUpdateEffects(param1:RoomWidgetUpdateEffectsUpdateEvent) : void
      {
         var _loc2_:* = null;
         var_598 = false;
         for each(_loc2_ in param1.effects)
         {
            if(_loc2_.isInUse)
            {
               var_598 = true;
            }
         }
         if(var_36 != null && var_36.window.name == const_528)
         {
            (var_36 as MeMenuEffectsView).updateEffects(param1.effects);
         }
      }
      
      public function get habboClubPastPeriods() : int
      {
         return var_2067;
      }
      
      public function get habboClubDays() : int
      {
         return var_1280;
      }
      
      public function updateSize() : void
      {
         if(var_36 != null)
         {
            var_1055.x = var_36.window.width + 10;
            var_1055.y = var_36.window.height;
            var_36.window.x = 5;
            var_36.window.y = 0;
            _mainContainer.width = var_1055.x;
            _mainContainer.height = var_1055.y;
         }
      }
      
      private function onToolbarClicked(param1:RoomWidgetToolbarClickedUpdateEvent) : void
      {
         switch(param1.iconType)
         {
            case RoomWidgetToolbarClickedUpdateEvent.ICON_TYPE_ME_MENU:
               var_273 = !var_273;
               break;
            case RoomWidgetToolbarClickedUpdateEvent.ICON_TYPE_ROOM_INFO:
               var_273 = false;
               break;
            default:
               return;
         }
         if(var_273)
         {
            show();
         }
         else
         {
            hide();
         }
      }
      
      private function onDanceEvent(param1:RoomWidgetDanceUpdateEvent) : void
      {
         Logger.log("[MeMenuWidget] Dance Event received, style: " + param1.style);
      }
      
      public function hide(param1:RoomWidgetRoomObjectUpdateEvent = null) : void
      {
         var _loc2_:RoomWidgetToolbarMessage = new RoomWidgetToolbarMessage(RoomWidgetToolbarMessage.const_666);
         _loc2_.window = _mainContainer.parent as IWindowContainer;
         if(messageListener != null)
         {
            messageListener.processWidgetMessage(_loc2_);
         }
         if(var_36 != null)
         {
            _mainContainer.removeChild(var_36.window);
            var_36.dispose();
            var_36 = null;
         }
         var_273 = false;
         _eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_CLOSE));
      }
      
      private function onAvatarEditorClosed(param1:RoomWidgetAvatarEditorUpdateEvent) : void
      {
         if(var_36 != null && var_36.window.name == const_318)
         {
            changeView(const_110);
         }
      }
      
      public function get isNewsEnabled() : Boolean
      {
         return var_2063;
      }
      
      public function changeView(param1:String) : void
      {
         var _loc2_:* = null;
         switch(param1)
         {
            case const_110:
               _loc2_ = new MeMenuMainView();
               _eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_DEFAULT));
               break;
            case const_528:
               _loc2_ = new MeMenuEffectsView();
               _eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_EFFECTS));
               break;
            case const_896:
               _loc2_ = new MeMenuDanceView();
               _eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_DANCE));
               break;
            case const_318:
               _loc2_ = new MeMenuClothesView();
               break;
            case const_1323:
               _loc2_ = new MeMenuRoomsView();
               break;
            case const_577:
               _loc2_ = new MeMenuSettingsView();
               break;
            default:
               Logger.log("Me Menu Change view: unknown view: " + param1);
         }
         if(_loc2_ != null)
         {
            if(var_36 != null)
            {
               _mainContainer.removeChild(var_36.window);
               var_36.dispose();
               var_36 = null;
            }
            var_36 = _loc2_;
            var_36.init(this,param1);
         }
         updateSize();
      }
      
      public function get config() : IHabboConfigurationManager
      {
         return _config;
      }
      
      private function show() : void
      {
         if(!_mainContainer || true)
         {
            return;
         }
         changeView(const_110);
         var _loc1_:RoomWidgetToolbarMessage = new RoomWidgetToolbarMessage(RoomWidgetToolbarMessage.const_534);
         _loc1_.window = _mainContainer.parent as IWindowContainer;
         if(messageListener != null)
         {
            messageListener.processWidgetMessage(_loc1_);
         }
         var_273 = true;
      }
   }
}
