package com.sulake.habbo.communication.messages.outgoing.roomsettings
{
   public class SaveableRoomSettingsData
   {
       
      
      private var _password:String;
      
      private var var_2158:int;
      
      private var var_1937:int;
      
      private var var_2154:Boolean;
      
      private var var_2152:Boolean;
      
      private var var_2156:Array;
      
      private var var_2153:Boolean;
      
      private var var_1133:int;
      
      private var _name:String;
      
      private var _roomId:int;
      
      private var var_626:Array;
      
      private var var_1118:String;
      
      public function SaveableRoomSettingsData()
      {
         super();
      }
      
      public function get doorMode() : int
      {
         return var_1937;
      }
      
      public function get description() : String
      {
         return var_1118;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return var_2152;
      }
      
      public function get maximumVisitors() : int
      {
         return var_2158;
      }
      
      public function set description(param1:String) : void
      {
         var_1118 = param1;
      }
      
      public function get password() : String
      {
         return _password;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         var_2153 = param1;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         var_2158 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get categoryId() : int
      {
         return var_1133;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get controllers() : Array
      {
         return var_2156;
      }
      
      public function get tags() : Array
      {
         return var_626;
      }
      
      public function get allowPets() : Boolean
      {
         return var_2153;
      }
      
      public function set doorMode(param1:int) : void
      {
         var_1937 = param1;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         var_2154 = param1;
      }
      
      public function set tags(param1:Array) : void
      {
         var_626 = param1;
      }
      
      public function set roomId(param1:int) : void
      {
         _roomId = param1;
      }
      
      public function set controllers(param1:Array) : void
      {
         var_2156 = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1133 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return var_2154;
      }
      
      public function set password(param1:String) : void
      {
         _password = param1;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         var_2152 = param1;
      }
   }
}
