package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["com.sulake.habbo.widget.memenu"] = const_128;
         param1["bound_to_parent_rect"] = const_86;
         param1["child_window"] = const_806;
         param1["embedded_controller"] = const_284;
         param1["resize_to_accommodate_children"] = const_59;
         param1["input_event_processor"] = const_48;
         param1["internal_event_handling"] = const_698;
         param1["mouse_dragging_target"] = const_208;
         param1["mouse_dragging_trigger"] = const_294;
         param1["mouse_scaling_target"] = const_261;
         param1["mouse_scaling_trigger"] = const_455;
         param1["horizontal_mouse_scaling_trigger"] = const_192;
         param1["vertical_mouse_scaling_trigger"] = const_209;
         param1["observe_parent_input_events"] = const_995;
         param1["optimize_region_to_layout_size"] = const_387;
         param1["parent_window"] = const_988;
         param1["relative_horizontal_scale_center"] = const_167;
         param1["relative_horizontal_scale_fixed"] = const_121;
         param1["relative_horizontal_scale_move"] = const_336;
         param1["relative_horizontal_scale_strech"] = const_270;
         param1["relative_scale_center"] = const_838;
         param1["relative_scale_fixed"] = const_537;
         param1["relative_scale_move"] = const_840;
         param1["relative_scale_strech"] = const_815;
         param1["relative_vertical_scale_center"] = const_158;
         param1["relative_vertical_scale_fixed"] = const_112;
         param1["relative_vertical_scale_move"] = const_330;
         param1["relative_vertical_scale_strech"] = const_243;
         param1["on_resize_align_left"] = const_575;
         param1["on_resize_align_right"] = const_454;
         param1["on_resize_align_center"] = const_379;
         param1["on_resize_align_top"] = const_724;
         param1["on_resize_align_bottom"] = const_384;
         param1["on_resize_align_middle"] = const_356;
         param1["on_accommodate_align_left"] = const_883;
         param1["on_accommodate_align_right"] = const_403;
         param1["on_accommodate_align_center"] = const_626;
         param1["on_accommodate_align_top"] = const_972;
         param1["on_accommodate_align_bottom"] = WINDOW_PARAM_ON_ACCOMMODATE_ALIGN_BOTTOM;
         param1["on_accommodate_align_middle"] = const_633;
         param1["route_input_events_to_parent"] = const_419;
         param1["use_parent_graphic_context"] = const_32;
         param1["draggable_with_mouse"] = const_804;
         param1["scalable_with_mouse"] = const_973;
         param1["reflect_horizontal_resize_to_parent"] = const_388;
         param1["reflect_vertical_resize_to_parent"] = WINDOW_PARAM_REFLECT_VERTICAL_RESIZE_TO_PARENT;
         param1["reflect_resize_to_parent"] = const_275;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  if(param1[_loc3_] != 0)
                  {
                     Logger.log("Conflictiong flags in window params: \"" + _loc3_ + "\"!");
                  }
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
