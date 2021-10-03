package com.sulake.habbo.friendlist
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.friendlist.events.HabboFriendListTrackingEvent;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.events.HabboToolbarShowMenuEvent;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import flash.utils.Dictionary;
   
   public class FriendListView
   {
      
      private static const const_1417:String = "noconvinfo";
      
      private static const const_1418:String = "messageinput";
       
      
      private var var_1464:int = -1;
      
      private var var_885:IWindowContainer;
      
      private var _friendList:HabboFriendList;
      
      private var var_1465:int = -1;
      
      private var var_1190:ITextWindow;
      
      private var var_1189:FriendListTabsView;
      
      private var var_13:IFrameWindow;
      
      private var var_266:IWindowContainer;
      
      private var var_1853:Boolean;
      
      public function FriendListView(param1:HabboFriendList)
      {
         super();
         _friendList = param1;
         var_1189 = new FriendListTabsView(_friendList);
      }
      
      private function prepare() : void
      {
         var_13 = IFrameWindow(_friendList.getXmlWindow("main_window"));
         var_13.findChildByTag("close").procedure = onWindowClose;
         var_885 = IWindowContainer(var_13.content.findChildByName("main_content"));
         var_266 = IWindowContainer(var_13.content.findChildByName("footer"));
         var_1189.prepare(var_885);
         var_13.procedure = onWindow;
         var_13.content.setParamFlag(HabboWindowParam.const_1002,false);
         var_13.content.setParamFlag(HabboWindowParam.const_1223,true);
         var_13.header.setParamFlag(HabboWindowParam.const_613,false);
         var_13.header.setParamFlag(HabboWindowParam.const_1011,true);
         var_13.content.setParamFlag(HabboWindowParam.const_613,false);
         var_13.content.setParamFlag(HabboWindowParam.const_1011,true);
         var_13.findChildByName("open_edit_ctgs_but").procedure = onEditCategoriesButtonClick;
         var_1190 = ITextWindow(var_13.findChildByName("info_text"));
         var_1190.text = "";
         _friendList.refreshButton(var_13,"open_edit_ctgs",true,null,0);
         var_13.title.color = 4294623744;
         var_13.title.textColor = 4287851525;
         refresh("prepare");
         var_13.height = 350;
         var_13.width = 230;
      }
      
      private function onWindowClose(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("Close window");
         var_13.visible = false;
         _friendList.trackFriendListEvent(HabboFriendListTrackingEvent.HABBO_FRIENDLIST_TRACKIG_EVENT_CLOSED);
      }
      
      public function showInfo(param1:WindowEvent, param2:String) : void
      {
         var _loc3_:WindowMouseEvent = param1 as WindowMouseEvent;
         if(_loc3_ == null)
         {
            return;
         }
         if(_loc3_.type == WindowMouseEvent.const_30)
         {
            var_1190.text = "";
         }
         else if(_loc3_.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER)
         {
            var_1190.text = param2;
         }
      }
      
      public function openFriendList() : void
      {
         if(var_13 == null)
         {
            prepare();
            _friendList.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_47,HabboToolbarIconEnum.FRIENDLIST,var_13));
         }
         else
         {
            var_13.visible = true;
            var_13.activate();
         }
      }
      
      private function getTitleBar() : IWindowContainer
      {
         return var_13.findChildByName("titlebar") as IWindowContainer;
      }
      
      public function get tabsView() : FriendListTabsView
      {
         return var_1189;
      }
      
      private function refreshWindowSize() : void
      {
         this.var_1853 = true;
         var_266.visible = false;
         var_266.y = Util.getLowestPoint(var_13.content);
         var_266.width = _friendList.tabs.windowWidth;
         var_266.visible = true;
         var_13.content.height = Util.getLowestPoint(var_13.content);
         var_13.content.width = _friendList.tabs.windowWidth - 10;
         var_13.header.width = _friendList.tabs.windowWidth - 10;
         var_13.height = var_13.content.height + 30;
         var_13.width = _friendList.tabs.windowWidth;
         this.var_1853 = false;
         var_13.scaler.setParamFlag(HabboWindowParam.const_629,false);
         var_13.scaler.setParamFlag(HabboWindowParam.const_910,this._friendList.tabs.findSelectedTab() != null);
         var_13.scaler.setParamFlag(HabboWindowParam.const_613,false);
         var_13.scaler.setParamFlag(HabboWindowParam.const_1002,false);
         var_13.scaler.x = 0 - var_13.scaler.width;
         var_13.scaler.y = 0 - var_13.scaler.height;
         var_1465 = var_13.height;
         var_1464 = var_13.width;
         Logger.log("RESIZED: " + _friendList.tabs.windowWidth);
      }
      
      public function isFriendListOpen() : Boolean
      {
         return var_13 != null && false;
      }
      
      public function refresh(param1:String) : void
      {
         if(this.var_13 == null)
         {
            return;
         }
         var_1189.refresh(param1);
         refreshWindowSize();
      }
      
      public function get mainWindow() : IWindowContainer
      {
         return var_13;
      }
      
      private function onWindow(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_45 || param2 != var_13)
         {
            return;
         }
         if(this.var_1853)
         {
            return;
         }
         var _loc3_:int = var_1465 == -1 ? 0 : int(0 - var_1465);
         var _loc4_:int = var_1464 == -1 ? 0 : int(0 - var_1464);
         _friendList.tabs.tabContentHeight = Math.max(100,_friendList.tabs.tabContentHeight + _loc3_);
         _friendList.tabs.windowWidth = Math.max(147,_friendList.tabs.windowWidth + _loc4_);
         refresh("resize: " + _loc3_);
      }
      
      private function onEditCategoriesButtonClick(param1:WindowEvent, param2:IWindow) : void
      {
         _friendList.view.showInfo(param1,"${friendlist.tip.preferences}");
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("Edit categories clicked");
         var _loc3_:WindowMouseEvent = param1 as WindowMouseEvent;
         _friendList.openHabboWebPage("link.format.friendlist.pref",new Dictionary(),_loc3_.stageX,_loc3_.stageY);
      }
      
      public function close() : void
      {
         if(this.var_13 != null)
         {
            this.var_13.visible = false;
         }
      }
   }
}
