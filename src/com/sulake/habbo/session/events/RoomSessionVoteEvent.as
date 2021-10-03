package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionVoteEvent extends RoomSessionEvent
   {
      
      public static const const_108:String = "RSPE_VOTE_RESULT";
      
      public static const const_113:String = "RSPE_VOTE_QUESTION";
       
      
      private var var_1170:int = 0;
      
      private var var_1044:String = "";
      
      private var var_644:Array;
      
      private var var_994:Array;
      
      public function RoomSessionVoteEvent(param1:String, param2:IRoomSession, param3:String, param4:Array, param5:Array = null, param6:int = 0, param7:Boolean = false, param8:Boolean = false)
      {
         var_994 = [];
         var_644 = [];
         super(param1,param2,param7,param8);
         var_1044 = param3;
         var_994 = param4;
         var_644 = param5;
         if(var_644 == null)
         {
            var_644 = [];
         }
         var_1170 = param6;
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
