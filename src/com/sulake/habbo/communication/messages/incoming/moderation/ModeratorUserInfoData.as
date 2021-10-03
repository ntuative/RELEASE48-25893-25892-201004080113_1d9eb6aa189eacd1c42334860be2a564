package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ModeratorUserInfoData
   {
       
      
      private var var_1823:int;
      
      private var var_1825:int;
      
      private var var_1826:int;
      
      private var _userName:String;
      
      private var var_1827:int;
      
      private var var_1822:int;
      
      private var var_1824:int;
      
      private var _userId:int;
      
      private var var_756:Boolean;
      
      public function ModeratorUserInfoData(param1:IMessageDataWrapper)
      {
         super();
         _userId = param1.readInteger();
         _userName = param1.readString();
         var_1822 = param1.readInteger();
         var_1827 = param1.readInteger();
         var_756 = param1.readBoolean();
         var_1826 = param1.readInteger();
         var_1825 = param1.readInteger();
         var_1823 = param1.readInteger();
         var_1824 = param1.readInteger();
      }
      
      public function get banCount() : int
      {
         return var_1824;
      }
      
      public function get userId() : int
      {
         return _userId;
      }
      
      public function get online() : Boolean
      {
         return var_756;
      }
      
      public function get minutesSinceLastLogin() : int
      {
         return var_1827;
      }
      
      public function get abusiveCfhCount() : int
      {
         return var_1825;
      }
      
      public function get cautionCount() : int
      {
         return var_1823;
      }
      
      public function get cfhCount() : int
      {
         return var_1826;
      }
      
      public function get minutesSinceRegistration() : int
      {
         return var_1822;
      }
      
      public function get userName() : String
      {
         return _userName;
      }
   }
}
