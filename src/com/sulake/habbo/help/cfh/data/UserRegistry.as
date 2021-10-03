package com.sulake.habbo.help.cfh.data
{
   import com.sulake.core.utils.Map;
   
   public class UserRegistry
   {
      
      private static const const_1052:int = 80;
       
      
      private var var_466:Map;
      
      private var var_663:String = "";
      
      private var var_1156:Array;
      
      public function UserRegistry()
      {
         var_466 = new Map();
         var_1156 = new Array();
         super();
      }
      
      private function addRoomNameForMissing() : void
      {
         var _loc1_:* = null;
         while(false)
         {
            _loc1_ = var_466.getValue(var_1156.shift());
            if(_loc1_ != null)
            {
               _loc1_.roomName = var_663;
            }
         }
      }
      
      public function registerUser(param1:int, param2:String, param3:Boolean = true) : void
      {
         var _loc4_:* = null;
         if(var_466.getValue(param1) != null)
         {
            var_466.remove(param1);
         }
         if(param3)
         {
            _loc4_ = new UserRegistryItem(param1,param2,var_663);
         }
         else
         {
            _loc4_ = new UserRegistryItem(param1,param2);
         }
         if(param3 && var_663 == "")
         {
            var_1156.push(param1);
         }
         var_466.add(param1,_loc4_);
         purgeUserIndex();
      }
      
      public function getRegistry() : Map
      {
         return var_466;
      }
      
      public function unregisterRoom() : void
      {
         var_663 = "";
      }
      
      private function purgeUserIndex() : void
      {
         var _loc1_:int = 0;
         while(var_466.length > const_1052)
         {
            _loc1_ = var_466.getKey(0);
            var_466.remove(_loc1_);
         }
      }
      
      public function registerRoom(param1:String) : void
      {
         var_663 = param1;
         if(var_663 != "")
         {
            addRoomNameForMissing();
         }
      }
   }
}
