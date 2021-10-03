package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2289:Boolean;
      
      private var var_2291:int;
      
      private var var_2292:Boolean;
      
      private var var_1596:String;
      
      private var var_1137:String;
      
      private var var_1683:int;
      
      private var var_2245:String;
      
      private var var_2290:String;
      
      private var var_2246:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1683 = param1.readInteger();
         this.var_1596 = param1.readString();
         this.var_2245 = param1.readString();
         this.var_2289 = param1.readBoolean();
         this.var_2292 = param1.readBoolean();
         param1.readString();
         this.var_2291 = param1.readInteger();
         this.var_2246 = param1.readString();
         this.var_2290 = param1.readString();
         this.var_1137 = param1.readString();
      }
      
      public function get realName() : String
      {
         return this.var_1137;
      }
      
      public function get avatarName() : String
      {
         return this.var_1596;
      }
      
      public function get avatarId() : int
      {
         return this.var_1683;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2289;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2290;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_2246;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2292;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_2245;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2291;
      }
   }
}
