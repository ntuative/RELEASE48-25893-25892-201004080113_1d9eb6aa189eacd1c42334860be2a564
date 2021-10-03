package com.sulake.habbo.communication.messages.parser.moderation
{
   import flash.utils.getTimer;
   
   public class IssueMessageData
   {
      
      public static const const_144:int = 1;
      
      public static const const_1183:int = 3;
      
      public static const const_368:int = 2;
       
      
      private var var_1712:int;
      
      private var var_1709:int;
      
      private var var_1717:int;
      
      private var var_1713:int;
      
      private var var_31:int;
      
      private var var_432:int;
      
      private var var_1328:int;
      
      private var var_1651:int;
      
      private var var_1048:int;
      
      private var _roomResources:String;
      
      private var var_1711:int;
      
      private var var_1715:int;
      
      private var var_1718:String;
      
      private var var_1650:String;
      
      private var var_1714:int = 0;
      
      private var var_1269:String;
      
      private var _message:String;
      
      private var var_1719:int;
      
      private var var_1716:String;
      
      private var var_1133:int;
      
      private var var_663:String;
      
      private var var_1710:String;
      
      private var var_1425:int;
      
      public function IssueMessageData()
      {
         super();
      }
      
      public function set reportedUserId(param1:int) : void
      {
         var_1048 = param1;
      }
      
      public function set temporalPriority(param1:int) : void
      {
         var_1714 = param1;
      }
      
      public function get reporterUserId() : int
      {
         return var_1715;
      }
      
      public function set roomName(param1:String) : void
      {
         var_663 = param1;
      }
      
      public function set chatRecordId(param1:int) : void
      {
         var_1711 = param1;
      }
      
      public function get state() : int
      {
         return var_31;
      }
      
      public function get roomResources() : String
      {
         return _roomResources;
      }
      
      public function set roomResources(param1:String) : void
      {
         _roomResources = param1;
      }
      
      public function get roomName() : String
      {
         return var_663;
      }
      
      public function get message() : String
      {
         return _message;
      }
      
      public function set worldId(param1:int) : void
      {
         var_1713 = param1;
      }
      
      public function set state(param1:int) : void
      {
         var_31 = param1;
      }
      
      public function get unitPort() : int
      {
         return var_1709;
      }
      
      public function get priority() : int
      {
         return var_1712 + var_1714;
      }
      
      public function set issueId(param1:int) : void
      {
         var_1651 = param1;
      }
      
      public function get pickerUserName() : String
      {
         return var_1650;
      }
      
      public function getOpenTime() : String
      {
         var _loc1_:int = (getTimer() - var_1425) / 1000;
         var _loc2_:int = _loc1_ % 60;
         var _loc3_:int = _loc1_ / 60;
         var _loc4_:int = _loc3_ % 60;
         var _loc5_:int = _loc3_ / 60;
         var _loc6_:String = _loc2_ < 10 ? "0" + _loc2_ : "" + _loc2_;
         var _loc7_:String = _loc4_ < 10 ? "0" + _loc4_ : "" + _loc4_;
         var _loc8_:String = _loc5_ < 10 ? "0" + _loc5_ : "" + _loc5_;
         return _loc8_ + ":" + _loc7_ + ":" + _loc6_;
      }
      
      public function get categoryId() : int
      {
         return var_1133;
      }
      
      public function set reporterUserId(param1:int) : void
      {
         var_1715 = param1;
      }
      
      public function get roomType() : int
      {
         return var_1328;
      }
      
      public function set flatType(param1:String) : void
      {
         var_1718 = param1;
      }
      
      public function get chatRecordId() : int
      {
         return var_1711;
      }
      
      public function set message(param1:String) : void
      {
         _message = param1;
      }
      
      public function get worldId() : int
      {
         return var_1713;
      }
      
      public function set flatOwnerName(param1:String) : void
      {
         var_1710 = param1;
      }
      
      public function set reportedUserName(param1:String) : void
      {
         var_1269 = param1;
      }
      
      public function get issueId() : int
      {
         return var_1651;
      }
      
      public function set priority(param1:int) : void
      {
         var_1712 = param1;
      }
      
      public function set unitPort(param1:int) : void
      {
         var_1709 = param1;
      }
      
      public function get flatType() : String
      {
         return var_1718;
      }
      
      public function set reportedCategoryId(param1:int) : void
      {
         var_1717 = param1;
      }
      
      public function set pickerUserName(param1:String) : void
      {
         var_1650 = param1;
      }
      
      public function set pickerUserId(param1:int) : void
      {
         var_1719 = param1;
      }
      
      public function get reportedUserName() : String
      {
         return var_1269;
      }
      
      public function set roomType(param1:int) : void
      {
         var_1328 = param1;
      }
      
      public function get reportedCategoryId() : int
      {
         return var_1717;
      }
      
      public function set flatId(param1:int) : void
      {
         var_432 = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1133 = param1;
      }
      
      public function set timeStamp(param1:int) : void
      {
         var_1425 = param1;
      }
      
      public function get pickerUserId() : int
      {
         return var_1719;
      }
      
      public function set reporterUserName(param1:String) : void
      {
         var_1716 = param1;
      }
      
      public function get timeStamp() : int
      {
         return var_1425;
      }
      
      public function get reportedUserId() : int
      {
         return var_1048;
      }
      
      public function get flatId() : int
      {
         return var_432;
      }
      
      public function get flatOwnerName() : String
      {
         return var_1710;
      }
      
      public function get reporterUserName() : String
      {
         return var_1716;
      }
   }
}
