package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.navigator.NavigatorSettingsMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_1424:int = 10;
       
      
      private var var_1496:NavigatorSettingsMessageParser;
      
      private var var_1258:int;
      
      private var var_1998:int;
      
      private var var_1997:Boolean;
      
      private var var_1042:Array;
      
      private var var_865:Dictionary;
      
      private var var_1041:Array;
      
      private var var_2314:int;
      
      private var var_1995:int;
      
      private var var_1683:int;
      
      private var var_2000:int;
      
      private var var_584:PublicRoomShortData;
      
      private var var_416:RoomEventData;
      
      private var var_129:MsgWithRequestId;
      
      private var var_1996:Boolean;
      
      private var _navigator:HabboNavigator;
      
      private var var_1999:Boolean;
      
      private var var_202:GuestRoomData;
      
      private var var_704:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         var_1042 = new Array();
         var_1041 = new Array();
         var_865 = new Dictionary();
         super();
         _navigator = param1;
      }
      
      public function get createdFlatId() : int
      {
         return var_1998;
      }
      
      public function get eventMod() : Boolean
      {
         return var_1999;
      }
      
      public function startLoading() : void
      {
         this.var_704 = true;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return false;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         var_1999 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(var_416 != null)
         {
            var_416.dispose();
         }
         var_416 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return var_129 != null && var_129 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return var_129 != null && var_129 as GuestRoomSearchResultData != null;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return var_129 as GuestRoomSearchResultData;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return var_202;
      }
      
      public function get allCategories() : Array
      {
         return var_1042;
      }
      
      public function onRoomExit() : void
      {
         if(var_416 != null)
         {
            var_416.dispose();
            var_416 = null;
         }
         if(var_584 != null)
         {
            var_584.dispose();
            var_584 = null;
         }
         if(var_202 != null)
         {
            var_202.dispose();
            var_202 = null;
         }
         _currentRoomOwner = false;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         disposeCurrentMsg();
         var_129 = param1;
         var_704 = false;
      }
      
      public function get settings() : NavigatorSettingsMessageParser
      {
         return var_1496;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         disposeCurrentMsg();
         var_129 = param1;
         var_704 = false;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         var_584 = null;
         var_202 = null;
         _currentRoomOwner = false;
         if(param1.guestRoom)
         {
            _currentRoomOwner = param1.owner;
         }
         else
         {
            var_584 = param1.publicSpace;
            var_416 = null;
         }
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return _currentRoomOwner;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2314 = param1.limit;
         this.var_1258 = param1.favouriteRoomIds.length;
         this.var_865 = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this.var_865[_loc2_] = "yes";
         }
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return var_129 as PopularRoomTagsData;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return var_584;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return var_1997;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         disposeCurrentMsg();
         var_129 = param1;
         var_704 = false;
      }
      
      public function set avatarId(param1:int) : void
      {
         var_1683 = param1;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return var_202 != null && _currentRoomOwner;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_704;
      }
      
      public function get visibleCategories() : Array
      {
         return var_1041;
      }
      
      public function set categories(param1:Array) : void
      {
         var _loc2_:* = null;
         var_1042 = param1;
         var_1041 = new Array();
         for each(_loc2_ in var_1042)
         {
            if(_loc2_.visible)
            {
               var_1041.push(_loc2_);
            }
         }
      }
      
      public function get currentRoomRating() : int
      {
         return var_1995;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return var_2000;
      }
      
      public function set settings(param1:NavigatorSettingsMessageParser) : void
      {
         var_1496 = param1;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(var_129 == null)
         {
            return;
         }
         var_129.dispose();
         var_129 = null;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return var_416;
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         var_865[param1] = !!param2 ? "yes" : null;
         var_1258 += !!param2 ? 1 : -1;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return var_129 as OfficialRoomsData;
      }
      
      public function get avatarId() : int
      {
         return var_1683;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = 0;
         return false;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return var_129 != null && var_129 as OfficialRoomsData != null;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         var_1997 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         var_1995 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         var_1996 = param1;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(var_202 != null)
         {
            var_202.dispose();
         }
         var_202 = param1;
      }
      
      public function method_13() : Boolean
      {
         if(var_202 == null)
         {
            return false;
         }
         var _loc1_:int = 0;
         return this.var_1496.homeRoomId == _loc1_;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return var_1258 >= var_2314;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         var_2000 = param1;
      }
      
      public function get hcMember() : Boolean
      {
         return var_1996;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return var_202 != null && !_currentRoomOwner;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         var_1998 = param1;
      }
   }
}
