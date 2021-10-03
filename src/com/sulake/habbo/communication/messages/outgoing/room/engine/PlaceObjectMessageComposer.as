package com.sulake.habbo.communication.messages.outgoing.room.engine
{
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.habbo.room.object.RoomObjectCategoryEnum;
   
   public class PlaceObjectMessageComposer implements IMessageComposer
   {
       
      
      private var var_149:int;
      
      private var var_223:int = 0;
      
      private var _roomId:int;
      
      private var var_84:int = 0;
      
      private var _y:int = 0;
      
      private var var_1922:int;
      
      private var var_2216:String;
      
      private var _roomCategory:int;
      
      public function PlaceObjectMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:int, param6:int, param7:int = 0, param8:int = 0)
      {
         super();
         var_149 = param1;
         var_1922 = param2;
         var_2216 = param3;
         var_84 = param4;
         _y = param5;
         var_223 = param6;
         _roomId = param7;
         _roomCategory = param8;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         switch(var_1922)
         {
            case RoomObjectCategoryEnum.const_31:
               return [var_149 + " " + var_84 + " " + _y + " " + var_223];
            case RoomObjectCategoryEnum.const_29:
               return [var_149 + " " + var_2216];
            default:
               return [];
         }
      }
   }
}
