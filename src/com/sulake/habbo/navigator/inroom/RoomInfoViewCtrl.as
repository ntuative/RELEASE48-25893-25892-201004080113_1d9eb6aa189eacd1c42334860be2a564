package com.sulake.habbo.navigator.inroom
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.IContainerButtonWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.outgoing.navigator.AddFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.CanCreateEventMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.DeleteFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.RateFlatMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.UpdateNavigatorSettingsMessageComposer;
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.SimpleAlertView;
   import com.sulake.habbo.navigator.TagRenderer;
   import com.sulake.habbo.navigator.Util;
   import com.sulake.habbo.navigator.events.HabboRoomSettingsTrackingEvent;
   import com.sulake.habbo.navigator.roomsettings.IRoomSettingsCtrlOwner;
   import com.sulake.habbo.navigator.roomsettings.RoomSettingsCtrl;
   import com.sulake.habbo.navigator.roomthumbnails.RoomThumbnailCtrl;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.events.HabboToolbarShowMenuEvent;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class RoomInfoViewCtrl implements IRoomSettingsCtrlOwner
   {
       
      
      private var var_722:IWindowContainer;
      
      private var var_1063:ITextWindow;
      
      private var var_204:RoomSettingsCtrl;
      
      private var var_1300:IContainerButtonWindow;
      
      private var _window:IWindowContainer;
      
      private var _hideInfoTimer:Timer;
      
      private var var_1301:ITextWindow;
      
      private var var_354:IWindowContainer;
      
      private var var_2105:IWindowContainer;
      
      private var var_2103:ITextWindow;
      
      private var var_892:IWindowContainer;
      
      private var var_1535:IButtonWindow;
      
      private var _ownerName:ITextWindow;
      
      private var var_663:ITextWindow;
      
      private var var_1536:IWindowContainer;
      
      private var var_1296:IWindowContainer;
      
      private var var_890:ITextWindow;
      
      private var var_1062:ITextFieldWindow;
      
      private var var_307:IWindowContainer;
      
      private var var_891:ITextWindow;
      
      private var var_1534:IButtonWindow;
      
      private var var_1064:ITextWindow;
      
      private var var_2323:int;
      
      private var var_1298:IContainerButtonWindow;
      
      private var var_889:IWindowContainer;
      
      private var var_1297:ITextWindow;
      
      private var var_1302:IContainerButtonWindow;
      
      private var var_1537:ITextWindow;
      
      private var var_1533:IButtonWindow;
      
      private var var_769:TagRenderer;
      
      private var var_2101:ITextWindow;
      
      private var var_353:RoomEventViewCtrl;
      
      private var _navigator:HabboNavigator;
      
      private var var_723:ITextWindow;
      
      private var var_274:RoomThumbnailCtrl;
      
      private var var_1299:IContainerButtonWindow;
      
      private var var_2104:IWindowContainer;
      
      private var var_275:IWindowContainer;
      
      public function RoomInfoViewCtrl(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
         var_353 = new RoomEventViewCtrl(_navigator);
         var_204 = new RoomSettingsCtrl(_navigator,this,true);
         var_274 = new RoomThumbnailCtrl(_navigator);
         var_769 = new TagRenderer(_navigator);
         _navigator.roomSettingsCtrls.push(this.var_204);
         _hideInfoTimer = new Timer(6000,1);
         _hideInfoTimer.addEventListener(TimerEvent.TIMER,hideInfo);
      }
      
      public function backToRoomSettings() : void
      {
         this.var_204.active = true;
         this.var_353.active = false;
         this.var_274.active = false;
         this.reload();
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      private function refreshEventButtons(param1:RoomEventData) : void
      {
         if(false)
         {
            return;
         }
         var_1535.visible = param1 == null && _navigator.data.currentRoomOwner;
         var_1533.visible = param1 != null && (_navigator.data.currentRoomOwner || _navigator.data.eventMod);
         var_1536.visible = Util.hasVisibleChildren(var_1536);
      }
      
      private function refreshRoomDetails(param1:GuestRoomData, param2:Boolean) : void
      {
         if(param1 == null || false || false)
         {
            return;
         }
         var_663.text = param1.roomName;
         var_663.height = NaN;
         _ownerName.text = param1.ownerName;
         var_890.text = param1.description;
         var_769.refreshTags(var_354,param1.tags);
         var_890.visible = false;
         if(param1.description != "")
         {
            var_890.height = NaN;
            var_890.visible = true;
         }
         var _loc3_:* = _navigator.data.currentRoomRating == -1;
         _navigator.refreshButton(var_354,"thumb_up",_loc3_,onThumbUp,0);
         _navigator.refreshButton(var_354,"thumb_down",_loc3_,onThumbDown,0);
         var_2103.visible = _loc3_;
         var_891.visible = !_loc3_;
         var_1537.visible = !_loc3_;
         var_1537.text = "" + _navigator.data.currentRoomRating;
         _navigator.refreshButton(var_354,"home",param2,null,0);
         _navigator.refreshButton(var_354,"favourite",!param2 && _navigator.data.isCurrentRoomFavourite(),null,0);
         Util.moveChildrenToColumn(var_354,["room_name","owner_name_cont","tags","room_desc","rating_cont"],var_663.y,0);
         var_354.visible = true;
         var_354.height = Util.getLowestPoint(var_354);
      }
      
      private function getButtonsMinHeight() : int
      {
         return !!_navigator.data.currentRoomOwner ? 0 : 21;
      }
      
      public function dispose() : void
      {
         if(_hideInfoTimer)
         {
            _hideInfoTimer.removeEventListener(TimerEvent.TIMER,hideInfo);
            _hideInfoTimer.reset();
            _hideInfoTimer = null;
         }
      }
      
      private function onThumbUp(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         _navigator.send(new RateFlatMessageComposer(1));
      }
      
      private function hideInfo(param1:Event) : void
      {
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_382,HabboToolbarIconEnum.ROOMINFO,_window,false));
      }
      
      private function getRoomInfoMinHeight() : int
      {
         return 37;
      }
      
      public function onAddFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc3_:* = null;
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         if(_navigator.data.isFavouritesFull())
         {
            _loc3_ = new SimpleAlertView(_navigator,"${navigator.favouritesfull.title}","${navigator.favouritesfull.body}");
            _loc3_.show();
         }
         else
         {
            _navigator.send(new AddFavouriteRoomMessageComposer(_navigator.data.enteredGuestRoom.flatId));
         }
      }
      
      private function refreshRoomButtons(param1:Boolean) : void
      {
         if(_navigator.data.enteredGuestRoom == null || false || false)
         {
            return;
         }
         var_1534.visible = _navigator.data.canEditRoomSettings;
         var _loc2_:Boolean = _navigator.data.isCurrentRoomFavourite();
         var_1300.visible = _navigator.data.canAddFavourite && !_loc2_;
         var_1299.visible = _navigator.data.canAddFavourite && _loc2_;
         var_1298.visible = _navigator.data.canEditRoomSettings && !param1;
         var_1302.visible = _navigator.data.canEditRoomSettings && param1;
         var_1296.visible = Util.hasVisibleChildren(var_1296);
      }
      
      public function open(param1:Boolean) : void
      {
         this._hideInfoTimer.reset();
         this.var_353.active = false;
         this.var_204.active = false;
         this.var_274.active = false;
         if(param1)
         {
            this.startRoomSettingsEdit(_navigator.data.enteredGuestRoom.flatId);
         }
         refresh();
         _window.visible = true;
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_47,HabboToolbarIconEnum.ROOMINFO,_window,false));
         _window.parent.activate();
         _window.activate();
         if(!param1)
         {
            this._hideInfoTimer.start();
         }
      }
      
      public function method_10() : void
      {
         this._hideInfoTimer.reset();
         this.var_353.active = false;
         this.var_204.active = false;
         this.var_274.active = false;
         refresh();
         if(true)
         {
            _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_47,HabboToolbarIconEnum.ROOMINFO,_window,false));
            _window.parent.activate();
         }
         else
         {
            _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_382,HabboToolbarIconEnum.ROOMINFO,_window,false));
         }
      }
      
      private function refreshRoom() : void
      {
         Util.hideChildren(var_307);
         var_307.findChildByName("close").visible = true;
         var _loc1_:GuestRoomData = _navigator.data.enteredGuestRoom;
         var _loc2_:Boolean = _navigator.data.settings != null && _loc1_ != null && _loc1_.flatId == _navigator.data.settings.homeRoomId;
         refreshRoomDetails(_loc1_,_loc2_);
         refreshPublicSpaceDetails(_navigator.data.enteredPublicSpace);
         refreshRoomButtons(_loc2_);
         this.var_204.refresh(var_307);
         this.var_274.refresh(var_307);
         Util.moveChildrenToColumn(var_307,["room_details","room_buttons"],0,2);
         var_307.height = Util.getLowestPoint(var_307);
         var_307.visible = true;
         Logger.log("XORP: undefined, undefined, undefined, undefined, undefined");
      }
      
      private function onCloseButtonClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         hideInfo(null);
      }
      
      private function onEmbedSrcClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var_1062.setSelection(0,var_1062.text.length);
      }
      
      private function getEmbedData() : String
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(_navigator.data.enteredGuestRoom != null)
         {
            _loc1_ = "private";
            _loc2_ = "" + _navigator.data.enteredGuestRoom.flatId;
         }
         else
         {
            _loc1_ = "public";
            _loc2_ = "" + _navigator.data.publicSpaceNodeId;
            Logger.log("Node id is: " + _loc2_);
         }
         var _loc3_:String = _navigator.configuration.getKey("user.hash","");
         _navigator.registerParameter("navigator.embed.src","roomType",_loc1_);
         _navigator.registerParameter("navigator.embed.src","embedCode",_loc3_);
         _navigator.registerParameter("navigator.embed.src","roomId",_loc2_);
         return _navigator.getText("navigator.embed.src");
      }
      
      private function onThumbDown(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         _navigator.send(new RateFlatMessageComposer(-1));
      }
      
      private function refreshEvent() : void
      {
         Util.hideChildren(var_275);
         var _loc1_:RoomEventData = _navigator.data.roomEventData;
         refreshEventDetails(_loc1_);
         refreshEventButtons(_loc1_);
         this.var_353.refresh(var_275);
         if(Util.hasVisibleChildren(var_275) && !this.var_274.active)
         {
            Util.moveChildrenToColumn(var_275,["event_details","event_buttons"],0,2);
            var_275.height = Util.getLowestPoint(var_275);
            var_275.visible = true;
         }
         else
         {
            var_275.visible = false;
         }
         Logger.log("EVENT: undefined, undefined");
      }
      
      public function startEventEdit() : void
      {
         this._hideInfoTimer.reset();
         this.var_353.active = true;
         this.var_204.active = false;
         this.var_274.active = false;
         this.reload();
      }
      
      private function getEventInfoMinHeight() : int
      {
         return 18;
      }
      
      public function onRemoveFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         _navigator.send(new DeleteFavouriteRoomMessageComposer(_navigator.data.enteredGuestRoom.flatId));
      }
      
      private function onHover(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER)
         {
            return;
         }
         _hideInfoTimer.reset();
      }
      
      private function refreshPublicSpaceDetails(param1:PublicRoomShortData) : void
      {
         if(param1 == null || false || false)
         {
            return;
         }
         var_1063.text = _navigator.getPublicSpaceName(param1.unitPropertySet,param1.worldId);
         var_1063.height = NaN;
         var_1301.text = _navigator.getPublicSpaceDesc(param1.unitPropertySet,param1.worldId);
         var_1301.height = NaN;
         Util.moveChildrenToColumn(var_722,["public_space_name","public_space_desc"],var_1063.y,0);
         var_722.visible = true;
         var_722.height = Math.max(86,Util.getLowestPoint(var_722));
      }
      
      public function reload() : void
      {
         if(_window != null && false)
         {
            refresh();
         }
      }
      
      private function find(param1:String) : IWindow
      {
         var _loc2_:IWindow = _window.findChildByName(param1);
         if(_loc2_ == null)
         {
            throw new Error("Window element with name: " + param1 + " cannot be found!");
         }
         return _loc2_;
      }
      
      private function refreshEmbed() : void
      {
         var _loc1_:* = _navigator.configuration.getKey("embed.showInRoomInfo","false") == "true";
         if(_loc1_ && true && true && true)
         {
            var_889.visible = true;
            var_1062.text = this.getEmbedData();
         }
         else
         {
            var_889.visible = false;
         }
      }
      
      public function startRoomSettingsEdit(param1:int) : void
      {
         this._hideInfoTimer.reset();
         this.var_204.load(param1);
         this.var_204.active = true;
         this.var_353.active = false;
         this.var_274.active = false;
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function startThumbnailEdit() : void
      {
         this._hideInfoTimer.reset();
         this.var_204.active = false;
         this.var_353.active = false;
         this.var_274.active = true;
         this.reload();
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_THUMBS));
      }
      
      private function prepareWindow() : void
      {
         if(_window != null)
         {
            return;
         }
         _window = IWindowContainer(_navigator.getXmlWindow("iro_room_details"));
         _window.setParamFlag(HabboWindowParam.const_68,false);
         _window.setParamFlag(HabboWindowParam.const_1187,true);
         _window.visible = false;
         var_307 = IWindowContainer(find("room_info"));
         var_354 = IWindowContainer(find("room_details"));
         var_722 = IWindowContainer(find("public_space_details"));
         var_2104 = IWindowContainer(find("owner_name_cont"));
         var_2105 = IWindowContainer(find("rating_cont"));
         var_1296 = IWindowContainer(find("room_buttons"));
         var_663 = ITextWindow(find("room_name"));
         var_1063 = ITextWindow(find("public_space_name"));
         _ownerName = ITextWindow(find("owner_name"));
         var_890 = ITextWindow(find("room_desc"));
         var_1301 = ITextWindow(find("public_space_desc"));
         var_1064 = ITextWindow(find("owner_caption"));
         var_891 = ITextWindow(find("rating_caption"));
         var_2103 = ITextWindow(find("rate_caption"));
         var_1537 = ITextWindow(find("rating_txt"));
         var_275 = IWindowContainer(find("event_info"));
         var_892 = IWindowContainer(find("event_details"));
         var_1536 = IWindowContainer(find("event_buttons"));
         var_2101 = ITextWindow(find("event_name"));
         var_723 = ITextWindow(find("event_desc"));
         var_1300 = IContainerButtonWindow(find("add_favourite_button"));
         var_1299 = IContainerButtonWindow(find("rem_favourite_button"));
         var_1298 = IContainerButtonWindow(find("make_home_button"));
         var_1302 = IContainerButtonWindow(find("unmake_home_button"));
         var_1534 = IButtonWindow(find("room_settings_button"));
         var_1535 = IButtonWindow(find("create_event_button"));
         var_1533 = IButtonWindow(find("edit_event_button"));
         var_889 = IWindowContainer(find("embed_info"));
         var_1297 = ITextWindow(find("embed_info_txt"));
         var_1062 = ITextFieldWindow(find("embed_src_txt"));
         Util.setProcDirectly(var_1300,onAddFavouriteClick);
         Util.setProcDirectly(var_1299,onRemoveFavouriteClick);
         Util.setProcDirectly(var_1534,onRoomSettingsClick);
         Util.setProcDirectly(var_1298,onMakeHomeClick);
         Util.setProcDirectly(var_1302,onUnmakeHomeClick);
         Util.setProcDirectly(var_1535,onEventSettingsClick);
         Util.setProcDirectly(var_1533,onEventSettingsClick);
         Util.setProcDirectly(var_1062,onEmbedSrcClick);
         _navigator.refreshButton(var_1300,"favourite",true,null,0);
         _navigator.refreshButton(var_1299,"favourite",true,null,0);
         _navigator.refreshButton(var_1298,"home",true,null,0);
         _navigator.refreshButton(var_1302,"home",true,null,0);
         _window.findChildByName("close").procedure = onCloseButtonClick;
         Util.setProcDirectly(var_307,onHover);
         Util.setProcDirectly(var_275,onHover);
         var_1064.width = var_1064.textWidth;
         Util.moveChildrenToRow(var_2104,["owner_caption","owner_name"],var_1064.x,var_1064.y,3);
         var_891.width = var_891.textWidth;
         Util.moveChildrenToRow(var_2105,["rating_caption","rating_txt"],var_891.x,var_891.y,3);
         var_1297.height = NaN;
         Util.moveChildrenToColumn(var_889,["embed_info_txt","embed_src_txt"],var_1297.y,2);
         var_889.height = Util.getLowestPoint(var_889) + 5;
         var_2323 = NaN;
      }
      
      private function refreshEventDetails(param1:RoomEventData) : void
      {
         if(param1 == null || false)
         {
            return;
         }
         var_2101.text = param1.eventName;
         var_723.text = param1.eventDescription;
         var_769.refreshTags(var_892,[_navigator.getText("roomevent_type_" + param1.eventType),param1.tags[0],param1.tags[1]]);
         var_723.visible = false;
         if(param1.eventDescription != "")
         {
            var_723.height = NaN;
            var_723.y = Util.getLowestPoint(var_892) + 2;
            var_723.visible = true;
         }
         var_892.visible = true;
         var_892.height = Util.getLowestPoint(var_892);
      }
      
      private function refresh() : void
      {
         prepareWindow();
         refreshRoom();
         refreshEvent();
         refreshEmbed();
         Util.moveChildrenToColumn(this._window,["room_info","event_info","embed_info"],0,2);
         _window.height = Util.getLowestPoint(_window);
         _window.y = _window.desktop.height - 0 - 5;
         Logger.log("MAIN: undefined, undefined, undefined");
      }
      
      private function onRoomSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = _navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         startRoomSettingsEdit(_loc3_.flatId);
      }
      
      private function onUnmakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("CLEARING HOME ROOM:");
         _navigator.send(new UpdateNavigatorSettingsMessageComposer(0));
      }
      
      private function onEventSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.roomEventData == null)
         {
            if(_navigator.data.currentRoomOwner)
            {
               _navigator.send(new CanCreateEventMessageComposer());
            }
         }
         else
         {
            startEventEdit();
         }
      }
      
      public function roomSettingsRefreshNeeded() : void
      {
         refresh();
      }
      
      public function close() : void
      {
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_795,HabboToolbarIconEnum.ROOMINFO,_window,false));
         if(_window == null)
         {
            return;
         }
         this._window.visible = false;
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_CLOSED));
      }
      
      private function onMakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = _navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         Logger.log("SETTING HOME ROOM TO: " + _loc3_.flatId);
         _navigator.send(new UpdateNavigatorSettingsMessageComposer(_loc3_.flatId));
      }
   }
}
