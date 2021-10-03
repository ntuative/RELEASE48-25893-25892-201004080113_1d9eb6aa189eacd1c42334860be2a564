package com.sulake.habbo.widget.events
{
   public class RoomWidgetPollUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_126:String = "RWPUW_CONTENT";
      
      public static const const_130:String = "RWPUW_OFFER";
      
      public static const const_63:String = "RWPUW_ERROR";
       
      
      private var var_954:Array = null;
      
      private var var_1119:String = "";
      
      private var var_1210:String;
      
      private var var_1120:String = "";
      
      private var var_953:int = 0;
      
      private var _id:int = -1;
      
      public function RoomWidgetPollUpdateEvent(param1:int, param2:String, param3:Boolean = false, param4:Boolean = false)
      {
         _id = param1;
         super(param2,param3,param4);
      }
      
      public function get questionArray() : Array
      {
         return var_954;
      }
      
      public function get startMessage() : String
      {
         return var_1119;
      }
      
      public function get summary() : String
      {
         return var_1210;
      }
      
      public function set startMessage(param1:String) : void
      {
         var_1119 = param1;
      }
      
      public function set numQuestions(param1:int) : void
      {
         var_953 = param1;
      }
      
      public function set summary(param1:String) : void
      {
         var_1210 = param1;
      }
      
      public function get numQuestions() : int
      {
         return var_953;
      }
      
      public function set endMessage(param1:String) : void
      {
         var_1120 = param1;
      }
      
      public function get endMessage() : String
      {
         return var_1120;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set questionArray(param1:Array) : void
      {
         var_954 = param1;
      }
   }
}
