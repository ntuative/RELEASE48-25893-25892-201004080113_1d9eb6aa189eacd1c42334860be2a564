package com.sulake.habbo.session
{
   public class UserData implements IUserData
   {
       
      
      private var var_430:String = "";
      
      private var var_1907:String = "";
      
      private var var_1906:int = 0;
      
      private var var_1664:int = 0;
      
      private var _type:int = 0;
      
      private var var_1905:String = "";
      
      private var var_1314:String = "";
      
      private var _id:int = -1;
      
      private var _name:String = "";
      
      private var var_1665:int = 0;
      
      public function UserData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function set groupStatus(param1:int) : void
      {
         var_1906 = param1;
      }
      
      public function set groupID(param1:String) : void
      {
         var_1905 = param1;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set figure(param1:String) : void
      {
         var_430 = param1;
      }
      
      public function set sex(param1:String) : void
      {
         var_1314 = param1;
      }
      
      public function get groupStatus() : int
      {
         return var_1906;
      }
      
      public function set webID(param1:int) : void
      {
         var_1665 = param1;
      }
      
      public function get groupID() : String
      {
         return var_1905;
      }
      
      public function set custom(param1:String) : void
      {
         var_1907 = param1;
      }
      
      public function get figure() : String
      {
         return var_430;
      }
      
      public function get sex() : String
      {
         return var_1314;
      }
      
      public function get custom() : String
      {
         return var_1907;
      }
      
      public function get webID() : int
      {
         return var_1665;
      }
      
      public function set xp(param1:int) : void
      {
         var_1664 = param1;
      }
      
      public function set type(param1:int) : void
      {
         _type = param1;
      }
      
      public function get xp() : int
      {
         return var_1664;
      }
   }
}
