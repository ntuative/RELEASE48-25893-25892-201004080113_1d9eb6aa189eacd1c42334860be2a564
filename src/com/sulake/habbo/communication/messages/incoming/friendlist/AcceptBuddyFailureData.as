package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AcceptBuddyFailureData
   {
       
      
      private var var_1157:int;
      
      private var var_670:String;
      
      public function AcceptBuddyFailureData(param1:IMessageDataWrapper)
      {
         super();
         this.var_670 = param1.readString();
         this.var_1157 = param1.readInteger();
      }
      
      public function get senderName() : String
      {
         return this.var_670;
      }
      
      public function get errorCode() : int
      {
         return this.var_1157;
      }
   }
}
