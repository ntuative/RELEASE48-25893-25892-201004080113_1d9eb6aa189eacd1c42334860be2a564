package com.sulake.habbo.communication.messages.incoming.navigator
{
   public class RoomThumbnailObjectData
   {
       
      
      private var var_1560:int;
      
      private var var_1561:int;
      
      public function RoomThumbnailObjectData()
      {
         super();
      }
      
      public function get pos() : int
      {
         return var_1560;
      }
      
      public function set pos(param1:int) : void
      {
         this.var_1560 = param1;
      }
      
      public function getCopy() : RoomThumbnailObjectData
      {
         var _loc1_:RoomThumbnailObjectData = new RoomThumbnailObjectData();
         _loc1_.var_1560 = this.var_1560;
         _loc1_.var_1561 = this.var_1561;
         return _loc1_;
      }
      
      public function set imgId(param1:int) : void
      {
         this.var_1561 = param1;
      }
      
      public function get imgId() : int
      {
         return var_1561;
      }
   }
}
