package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowNotifyEvent extends WindowEvent
   {
      
      public static const const_1193:String = "WN_CREATED";
      
      public static const const_849:String = "WN_DISABLE";
      
      public static const const_975:String = "WN_DEACTIVATED";
      
      public static const const_1021:String = "WN_OPENED";
      
      public static const const_882:String = "WN_CLOSED";
      
      public static const const_937:String = "WN_DESTROY";
      
      public static const const_1576:String = "WN_ARRANGED";
      
      public static const const_421:String = "WN_PARENT_RESIZED";
      
      public static const const_812:String = "WN_ENABLE";
      
      public static const const_989:String = "WN_RELOCATE";
      
      public static const const_863:String = "WN_FOCUS";
      
      public static const const_956:String = "WN_PARENT_RELOCATED";
      
      public static const const_366:String = "WN_PARAM_UPDATED";
      
      public static const const_593:String = "WN_PARENT_ACTIVATED";
      
      public static const const_171:String = "WN_RESIZED";
      
      public static const const_832:String = "WN_CLOSE";
      
      public static const const_940:String = "WN_PARENT_REMOVED";
      
      public static const const_248:String = "WN_CHILD_RELOCATED";
      
      public static const const_519:String = "WN_ENABLED";
      
      public static const const_252:String = "WN_CHILD_RESIZED";
      
      public static const const_934:String = "WN_MINIMIZED";
      
      public static const const_622:String = "WN_DISABLED";
      
      public static const const_207:String = "WN_CHILD_ACTIVATED";
      
      public static const const_357:String = "WN_STATE_UPDATED";
      
      public static const const_513:String = "WN_UNSELECTED";
      
      public static const const_413:String = "WN_STYLE_UPDATED";
      
      public static const const_1570:String = "WN_UPDATE";
      
      public static const const_380:String = "WN_PARENT_ADDED";
      
      public static const const_646:String = "WN_RESIZE";
      
      public static const const_567:String = "WN_CHILD_REMOVED";
      
      public static const const_1443:String = "";
      
      public static const const_981:String = "WN_RESTORED";
      
      public static const const_312:String = "WN_SELECTED";
      
      public static const const_860:String = "WN_MINIMIZE";
      
      public static const const_834:String = "WN_FOCUSED";
      
      public static const const_1203:String = "WN_LOCK";
      
      public static const const_288:String = "WN_CHILD_ADDED";
      
      public static const const_965:String = "WN_UNFOCUSED";
      
      public static const const_411:String = "WN_RELOCATED";
      
      public static const const_793:String = "WN_DEACTIVATE";
      
      public static const const_1140:String = "WN_CRETAE";
      
      public static const const_1010:String = "WN_RESTORE";
      
      public static const const_306:String = "WN_ACTVATED";
      
      public static const const_1372:String = "WN_LOCKED";
      
      public static const const_446:String = "WN_SELECT";
      
      public static const const_802:String = "WN_MAXIMIZE";
      
      public static const const_932:String = "WN_OPEN";
      
      public static const const_672:String = "WN_UNSELECT";
      
      public static const const_1445:String = "WN_ARRANGE";
      
      public static const const_1254:String = "WN_UNLOCKED";
      
      public static const const_1455:String = "WN_UPDATED";
      
      public static const const_951:String = "WN_ACTIVATE";
      
      public static const const_1375:String = "WN_UNLOCK";
      
      public static const const_796:String = "WN_MAXIMIZED";
      
      public static const const_827:String = "WN_DESTROYED";
      
      public static const const_841:String = "WN_UNFOCUS";
       
      
      public function WindowNotifyEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false)
      {
         super(param1,param2,param3,false,param4);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowNotifyEvent","type","cancelable");
      }
      
      override public function clone() : Event
      {
         return new WindowNotifyEvent(type,_window,var_1601,cancelable);
      }
   }
}
