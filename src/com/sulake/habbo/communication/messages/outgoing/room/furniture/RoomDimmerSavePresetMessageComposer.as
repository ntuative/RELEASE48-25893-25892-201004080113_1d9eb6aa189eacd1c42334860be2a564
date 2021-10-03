package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RoomDimmerSavePresetMessageComposer implements IMessageComposer
   {
       
      
      private var var_1611:int;
      
      private var var_1608:int;
      
      private var var_1607:Boolean;
      
      private var var_1610:String;
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_1609:int;
      
      public function RoomDimmerSavePresetMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:int = 0, param7:int = 0)
      {
         super();
         _roomId = param6;
         _roomCategory = param7;
         var_1608 = param1;
         var_1611 = param2;
         var_1610 = param3;
         var_1609 = param4;
         var_1607 = param5;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1608,var_1611,var_1610,var_1609,int(var_1607)];
      }
      
      public function dispose() : void
      {
      }
   }
}
