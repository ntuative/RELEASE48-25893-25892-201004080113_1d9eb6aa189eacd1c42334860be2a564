package com.sulake.habbo.widget.events
{
   public class RoomWidgetVoteUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_108:String = "RWPUE_VOTE_RESULT";
      
      public static const const_113:String = "RWPUE_VOTE_QUESTION";
       
      
      private var var_1170:int;
      
      private var var_1044:String;
      
      private var var_644:Array;
      
      private var var_994:Array;
      
      public function RoomWidgetVoteUpdateEvent(param1:String, param2:String, param3:Array, param4:Array = null, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_1044 = param2;
         var_994 = param3;
         var_644 = param4;
         if(var_644 == null)
         {
            var_644 = [];
         }
         var_1170 = param5;
      }
      
      public function get votes() : Array
      {
         return var_644.slice();
      }
      
      public function get totalVotes() : int
      {
         return var_1170;
      }
      
      public function get question() : String
      {
         return var_1044;
      }
      
      public function get choices() : Array
      {
         return var_994.slice();
      }
   }
}
