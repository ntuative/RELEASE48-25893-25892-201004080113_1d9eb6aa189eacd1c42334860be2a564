package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1766:int;
      
      private var var_430:String;
      
      private var var_1745:int;
      
      private var var_1761:int;
      
      private var var_1762:int;
      
      private var var_1931:int;
      
      private var _nutrition:int;
      
      private var var_1217:int;
      
      private var var_1930:int;
      
      private var var_1932:int;
      
      private var _energy:int;
      
      private var _name:String;
      
      private var _ownerName:String;
      
      private var var_1750:int;
      
      private var var_1933:int;
      
      public function PetInfoMessageParser()
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
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get maxEnergy() : int
      {
         return var_1931;
      }
      
      public function flush() : Boolean
      {
         var_1217 = -1;
         return true;
      }
      
      public function get maxLevel() : int
      {
         return var_1930;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return var_1932;
      }
      
      public function get maxNutrition() : int
      {
         return var_1933;
      }
      
      public function get figure() : String
      {
         return var_430;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get respect() : int
      {
         return var_1761;
      }
      
      public function get petId() : int
      {
         return var_1217;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         var_1217 = param1.readInteger();
         _name = param1.readString();
         var_1745 = param1.readInteger();
         var_1930 = param1.readInteger();
         var_1762 = param1.readInteger();
         var_1932 = param1.readInteger();
         _energy = param1.readInteger();
         var_1931 = param1.readInteger();
         _nutrition = param1.readInteger();
         var_1933 = param1.readInteger();
         var_430 = param1.readString();
         var_1761 = param1.readInteger();
         var_1750 = param1.readInteger();
         var_1766 = param1.readInteger();
         _ownerName = param1.readString();
         return true;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function get experience() : int
      {
         return var_1762;
      }
      
      public function get ownerId() : int
      {
         return var_1750;
      }
      
      public function get age() : int
      {
         return var_1766;
      }
   }
}
