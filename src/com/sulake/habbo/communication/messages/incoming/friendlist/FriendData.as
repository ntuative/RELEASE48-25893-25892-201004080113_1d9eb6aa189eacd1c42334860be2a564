package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var var_430:String;
      
      private var var_1134:String;
      
      private var var_1136:String;
      
      private var var_1133:int;
      
      private var var_730:int;
      
      private var var_1137:String;
      
      private var _name:String;
      
      private var var_1135:Boolean;
      
      private var var_756:Boolean;
      
      private var _id:int;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_730 = param1.readInteger();
         this.var_756 = param1.readBoolean();
         this.var_1135 = param1.readBoolean();
         this.var_430 = param1.readString();
         this.var_1133 = param1.readInteger();
         this.var_1136 = param1.readString();
         this.var_1134 = param1.readString();
         this.var_1137 = param1.readString();
      }
      
      public function get gender() : int
      {
         return var_730;
      }
      
      public function get realName() : String
      {
         return var_1137;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get motto() : String
      {
         return var_1136;
      }
      
      public function get categoryId() : int
      {
         return var_1133;
      }
      
      public function get online() : Boolean
      {
         return var_756;
      }
      
      public function get followingAllowed() : Boolean
      {
         return var_1135;
      }
      
      public function get lastAccess() : String
      {
         return var_1134;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get figure() : String
      {
         return var_430;
      }
   }
}
