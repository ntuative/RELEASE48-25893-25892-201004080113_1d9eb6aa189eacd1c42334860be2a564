package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowEvent extends Event
   {
      
      public static const const_269:String = "WE_CHILD_RESIZED";
      
      public static const const_1174:String = "WE_CLOSE";
      
      public static const const_1343:String = "WE_DESTROY";
      
      public static const const_143:String = "WE_CHANGE";
      
      public static const const_1168:String = "WE_RESIZE";
      
      public static const WINDOW_EVENT_MESSAGE:String = "WE_MESSAGE";
      
      public static const const_1556:String = "WE_PARENT_RESIZE";
      
      public static const const_92:String = "WE_UPDATE";
      
      public static const const_1179:String = "WE_MAXIMIZE";
      
      public static const const_401:String = "WE_DESTROYED";
      
      public static const const_936:String = "WE_UNSELECT";
      
      public static const const_1389:String = "WE_MAXIMIZED";
      
      public static const const_1547:String = "WE_UNLOCKED";
      
      public static const const_477:String = "WE_CHILD_REMOVED";
      
      public static const const_178:String = "WE_OK";
      
      public static const const_45:String = "WE_RESIZED";
      
      public static const const_1138:String = "WE_ACTIVATE";
      
      public static const const_274:String = "WE_ENABLED";
      
      public static const const_397:String = "WE_CHILD_RELOCATED";
      
      public static const const_1162:String = "WE_CREATE";
      
      public static const const_673:String = "WE_SELECT";
      
      public static const const_159:String = "";
      
      public static const const_1438:String = "WE_LOCKED";
      
      public static const const_1449:String = "WE_PARENT_RELOCATE";
      
      public static const const_1500:String = "WE_CHILD_REMOVE";
      
      public static const const_1568:String = "WE_CHILD_RELOCATE";
      
      public static const const_1446:String = "WE_LOCK";
      
      public static const const_210:String = "WE_FOCUSED";
      
      public static const const_502:String = "WE_UNSELECTED";
      
      public static const const_890:String = "WE_DEACTIVATED";
      
      public static const const_1270:String = "WE_MINIMIZED";
      
      public static const const_1589:String = "WE_ARRANGED";
      
      public static const const_1465:String = "WE_UNLOCK";
      
      public static const const_1454:String = "WE_ATTACH";
      
      public static const const_1334:String = "WE_OPEN";
      
      public static const const_1300:String = "WE_RESTORE";
      
      public static const const_1607:String = "WE_PARENT_RELOCATED";
      
      public static const const_1201:String = "WE_RELOCATE";
      
      public static const const_1499:String = "WE_CHILD_RESIZE";
      
      public static const const_1616:String = "WE_ARRANGE";
      
      public static const const_1392:String = "WE_OPENED";
      
      public static const const_1269:String = "WE_CLOSED";
      
      public static const const_1605:String = "WE_DETACHED";
      
      public static const const_1483:String = "WE_UPDATED";
      
      public static const const_1200:String = "WE_UNFOCUSED";
      
      public static const const_460:String = "WE_RELOCATED";
      
      public static const const_1274:String = "WE_DEACTIVATE";
      
      public static const const_227:String = "WE_DISABLED";
      
      public static const const_709:String = "WE_CANCEL";
      
      public static const const_514:String = "WE_ENABLE";
      
      public static const const_1181:String = "WE_ACTIVATED";
      
      public static const const_1250:String = "WE_FOCUS";
      
      public static const const_1460:String = "WE_DETACH";
      
      public static const const_1363:String = "WE_RESTORED";
      
      public static const const_1329:String = "WE_UNFOCUS";
      
      public static const const_55:String = "WE_SELECTED";
      
      public static const const_1198:String = "WE_PARENT_RESIZED";
      
      public static const const_1189:String = "WE_CREATED";
      
      public static const const_1482:String = "WE_ATTACHED";
      
      public static const const_1291:String = "WE_MINIMIZE";
      
      public static const WINDOW_EVENT_DISABLE:String = "WE_DISABLE";
       
      
      protected var _type:String = "";
      
      protected var var_1601:IWindow;
      
      protected var _window:IWindow;
      
      protected var var_1383:Boolean;
      
      public function WindowEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false, param5:Boolean = false)
      {
         _type = param1;
         _window = param2;
         var_1601 = param3;
         var_1383 = false;
         super(param1,param4,param5);
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return var_1383;
      }
      
      public function get related() : IWindow
      {
         return var_1601;
      }
      
      public function get window() : IWindow
      {
         return _window;
      }
      
      public function set type(param1:String) : void
      {
         _type = param1;
      }
      
      override public function get type() : String
      {
         return _type;
      }
      
      override public function toString() : String
      {
         return formatToString("WindowEvent","type","bubbles","cancelable","window");
      }
      
      override public function clone() : Event
      {
         return new WindowEvent(_type,window,related,bubbles,cancelable);
      }
      
      public function preventWindowOperation() : void
      {
         if(cancelable)
         {
            var_1383 = true;
            stopImmediatePropagation();
            return;
         }
         throw new Error("Attempted to prevent window operation that is not canceable!");
      }
   }
}
