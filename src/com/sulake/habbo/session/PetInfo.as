package com.sulake.habbo.session
{
   public class PetInfo implements IPetInfo
   {
       
      
      private var var_1745:int;
      
      private var var_1761:int;
      
      private var var_1762:int;
      
      private var var_1764:int;
      
      private var _nutrition:int;
      
      private var var_1217:int;
      
      private var var_1765:int;
      
      private var var_1760:int;
      
      private var _energy:int;
      
      private var var_1766:int;
      
      private var var_1763:int;
      
      private var _ownerName:String;
      
      private var var_1750:int;
      
      public function PetInfo()
      {
         super();
      }
      
      public function get level() : int
      {
         return var_1745;
      }
      
      public function get energy() : int
      {
         return _energy;
      }
      
      public function set respect(param1:int) : void
      {
         var_1761 = param1;
      }
      
      public function set energy(param1:int) : void
      {
         _energy = param1;
      }
      
      public function set level(param1:int) : void
      {
         var_1745 = param1;
      }
      
      public function get petId() : int
      {
         return var_1217;
      }
      
      public function get experienceMax() : int
      {
         return var_1760;
      }
      
      public function get nutritionMax() : int
      {
         return var_1764;
      }
      
      public function set levelMax(param1:int) : void
      {
         var_1765 = param1;
      }
      
      public function get ownerId() : int
      {
         return var_1750;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function set petId(param1:int) : void
      {
         var_1217 = param1;
      }
      
      public function set nutrition(param1:int) : void
      {
         _nutrition = param1;
      }
      
      public function get energyMax() : int
      {
         return var_1763;
      }
      
      public function get respect() : int
      {
         return var_1761;
      }
      
      public function get levelMax() : int
      {
         return var_1765;
      }
      
      public function set ownerName(param1:String) : void
      {
         _ownerName = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         var_1760 = param1;
      }
      
      public function set experience(param1:int) : void
      {
         var_1762 = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         var_1764 = param1;
      }
      
      public function set ownerId(param1:int) : void
      {
         var_1750 = param1;
      }
      
      public function get experience() : int
      {
         return var_1762;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function set energyMax(param1:int) : void
      {
         var_1763 = param1;
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
