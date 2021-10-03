package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetPetInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const PET_INFO:String = "RWPIUE_PET_INFO";
       
      
      private var var_1745:int;
      
      private var var_1762:int;
      
      private var var_1764:int;
      
      private var _nutrition:int;
      
      private var var_1760:int;
      
      private var var_1765:int;
      
      private var _energy:int;
      
      private var var_1032:int;
      
      private var var_1763:int;
      
      private var var_2024:int;
      
      private var var_1766:int;
      
      private var _id:int;
      
      private var _petRespect:int;
      
      private var _canOwnerBeKicked:Boolean;
      
      private var var_2023:int;
      
      private var _image:BitmapData;
      
      private var _ownerName:String;
      
      private var var_2025:Boolean;
      
      private var _name:String;
      
      private var var_500:int;
      
      private var var_1750:int;
      
      public function RoomWidgetPetInfoUpdateEvent(param1:int, param2:int, param3:String, param4:int, param5:BitmapData, param6:Boolean, param7:int, param8:String, param9:int, param10:Boolean = false, param11:Boolean = false)
      {
         super(RoomWidgetPetInfoUpdateEvent.PET_INFO,param10,param11);
         var_1032 = param1;
         var_2023 = param2;
         _name = param3;
         _id = param4;
         _image = param5;
         var_2025 = param6;
         var_1750 = param7;
         _ownerName = param8;
         var_2024 = param9;
      }
      
      public function get isOwnPet() : Boolean
      {
         return var_2025;
      }
      
      public function get level() : int
      {
         return var_1745;
      }
      
      public function set levelMax(param1:int) : void
      {
         var_1765 = param1;
      }
      
      public function get energy() : int
      {
         return _energy;
      }
      
      public function set level(param1:int) : void
      {
         var_1745 = param1;
      }
      
      public function get petRace() : int
      {
         return var_2023;
      }
      
      public function set energy(param1:int) : void
      {
         _energy = param1;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set petRespectLeft(param1:int) : void
      {
         var_500 = param1;
      }
      
      public function get experienceMax() : int
      {
         return var_1760;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get nutritionMax() : int
      {
         return var_1764;
      }
      
      public function get ownerId() : int
      {
         return var_1750;
      }
      
      public function set nutrition(param1:int) : void
      {
         _nutrition = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         var_1760 = param1;
      }
      
      public function get roomIndex() : int
      {
         return var_2024;
      }
      
      public function get energyMax() : int
      {
         return var_1763;
      }
      
      public function get levelMax() : int
      {
         return var_1765;
      }
      
      public function get petRespect() : int
      {
         return _petRespect;
      }
      
      public function get petRespectLeft() : int
      {
         return var_500;
      }
      
      public function set canOwnerBeKicked(param1:Boolean) : void
      {
         _canOwnerBeKicked = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         var_1764 = param1;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function set petRespect(param1:int) : void
      {
         _petRespect = param1;
      }
      
      public function set experience(param1:int) : void
      {
         var_1762 = param1;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get canOwnerBeKicked() : Boolean
      {
         return _canOwnerBeKicked;
      }
      
      public function get experience() : int
      {
         return var_1762;
      }
      
      public function set energyMax(param1:int) : void
      {
         var_1763 = param1;
      }
      
      public function get petType() : int
      {
         return var_1032;
      }
      
      public function set age(param1:int) : void
      {
         var_1766 = param1;
      }
      
      public function get age() : int
      {
         return var_1766;
      }
   }
}
