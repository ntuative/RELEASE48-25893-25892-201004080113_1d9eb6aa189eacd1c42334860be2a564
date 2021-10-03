package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_616;
         param1["bitmap"] = const_737;
         param1["border"] = const_696;
         param1["border_notify"] = const_1279;
         param1["button"] = const_425;
         param1["button_thick"] = const_661;
         param1["button_icon"] = const_1314;
         param1["button_group_left"] = const_736;
         param1["button_group_center"] = const_503;
         param1["button_group_right"] = const_726;
         param1["canvas"] = const_725;
         param1["checkbox"] = const_739;
         param1["closebutton"] = const_912;
         param1["container"] = const_304;
         param1["container_button"] = const_500;
         param1["display_object_wrapper"] = const_681;
         param1["dropmenu"] = const_480;
         param1["dropmenu_item"] = const_463;
         param1["frame"] = const_290;
         param1["frame_notify"] = const_1214;
         param1["header"] = const_738;
         param1["icon"] = const_880;
         param1["itemgrid"] = const_968;
         param1["itemgrid_horizontal"] = const_392;
         param1["itemgrid_vertical"] = const_644;
         param1["itemlist"] = const_887;
         param1["itemlist_horizontal"] = const_313;
         param1["itemlist_vertical"] = const_298;
         param1["maximizebox"] = const_1281;
         param1["menu"] = const_1366;
         param1["menu_item"] = WINDOW_TYPE_MENU_ITEM;
         param1["submenu"] = const_874;
         param1["minimizebox"] = const_1297;
         param1["notify"] = const_1384;
         param1["com.sulake.habbo.widget.memenu"] = const_674;
         param1["password"] = const_715;
         param1["radiobutton"] = const_713;
         param1["region"] = const_428;
         param1["restorebox"] = const_1292;
         param1["scaler"] = const_732;
         param1["scaler_horizontal"] = const_1163;
         param1["scaler_vertical"] = const_1361;
         param1["scrollbar_horizontal"] = const_438;
         param1["scrollbar_vertical"] = const_527;
         param1["scrollbar_slider_button_up"] = const_847;
         param1["scrollbar_slider_button_down"] = const_814;
         param1["scrollbar_slider_button_left"] = const_810;
         param1["scrollbar_slider_button_right"] = const_949;
         param1["scrollbar_slider_bar_horizontal"] = const_922;
         param1["scrollbar_slider_bar_vertical"] = const_884;
         param1["scrollbar_slider_track_horizontal"] = const_964;
         param1["scrollbar_slider_track_vertical"] = const_1012;
         param1["scrollable_itemlist"] = const_1146;
         param1["scrollable_itemlist_vertical"] = const_360;
         param1["scrollable_itemlist_horizontal"] = const_831;
         param1["selector"] = const_532;
         param1["selector_list"] = const_610;
         param1["submenu"] = const_874;
         param1["tab_button"] = const_700;
         param1["tab_container_button"] = const_923;
         param1["tab_context"] = const_469;
         param1["tab_content"] = const_1018;
         param1["tab_selector"] = WINDOW_TYPE_TAB_SELECTOR;
         param1["text"] = const_522;
         param1["input"] = const_578;
         param1["toolbar"] = const_1248;
         param1["tooltip"] = const_283;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  Logger.log("Overlapping window type code " + _loc3_ + "!");
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
