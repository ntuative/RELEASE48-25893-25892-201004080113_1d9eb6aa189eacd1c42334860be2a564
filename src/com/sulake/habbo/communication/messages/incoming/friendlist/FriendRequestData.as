package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendRequestData
   {
       
      
      private var var_2210:int;
      
      private var var_2209:String;
      
      private var var_998:int;
      
      public function FriendRequestData(param1:IMessageDataWrapper)
      {
         super();
         this.var_998 = param1.readInteger();
         this.var_2209 = param1.readString();
         this.var_2210 = int(param1.readString());
      }
      
      public function get requestId() : int
      {
         return this.var_998;
      }
      
      public function get requesterUserId() : int
      {
         return this.var_2210;
      }
      
      public function get requesterName() : String
      {
         return this.var_2209;
      }
   }
}
