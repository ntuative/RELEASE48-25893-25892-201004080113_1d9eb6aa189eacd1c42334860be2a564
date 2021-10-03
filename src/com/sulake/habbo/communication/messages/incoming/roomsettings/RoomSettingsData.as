package com.sulake.habbo.communication.messages.incoming.roomsettings
{
   public class RoomSettingsData
   {
      
      public static const const_410:int = 0;
      
      public static const const_129:int = 2;
      
      public static const const_176:int = 1;
      
      public static const const_690:Array = ["open","closed","password"];
       
      
      private var _name:String;
      
      private var var_2154:Boolean;
      
      private var var_2152:Boolean;
      
      private var var_2157:int;
      
      private var var_2156:Array;
      
      private var var_2155:int;
      
      private var var_2153:Boolean;
      
      private var var_1118:String;
      
      private var var_2158:int;
      
      private var var_1937:int;
      
      private var var_1133:int;
      
      private var _roomId:int;
      
      private var var_626:Array;
      
      public function RoomSettingsData()
      {
         super();
      }
      
      public function get maximumVisitors() : int
      {
         return var_2158;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         var_2158 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function get tags() : Array
      {
         return var_626;
      }
      
      public function get allowPets() : Boolean
      {
         return var_2153;
      }
      
      public function set controllerCount(param1:int) : void
      {
         var_2155 = param1;
      }
      
      public function set roomId(param1:int) : void
      {
         _roomId = param1;
      }
      
      public function set controllers(param1:Array) : void
      {
         var_2156 = param1;
      }
      
      public function set tags(param1:Array) : void
      {
         var_626 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return var_2154;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return var_2152;
      }
      
      public function get maximumVisitorsLimit() : int
      {
         return var_2157;
      }
      
      public function get categoryId() : int
      {
         return var_1133;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         var_2153 = param1;
      }
      
      public function get controllerCount() : int
      {
         return var_2155;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get controllers() : Array
      {
         return var_2156;
      }
      
      public function set doorMode(param1:int) : void
      {
         var_1937 = param1;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         var_2154 = param1;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         var_2152 = param1;
      }
      
      public function set maximumVisitorsLimit(param1:int) : void
      {
         var_2157 = param1;
      }
      
      public function get doorMode() : int
      {
         return var_1937;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1133 = param1;
      }
      
      public function set description(param1:String) : void
      {
         var_1118 = param1;
      }
      
      public function get description() : String
      {
         return var_1118;
      }
   }
}
