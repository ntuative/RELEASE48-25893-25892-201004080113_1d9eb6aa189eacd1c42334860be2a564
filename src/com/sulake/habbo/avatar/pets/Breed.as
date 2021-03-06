package com.sulake.habbo.avatar.pets
{
   public class Breed extends PetEditorInfo implements IBreed
   {
       
      
      private var var_730:String;
      
      private var _id:int;
      
      private var var_1881:String = "";
      
      private var var_1880:int;
      
      private var var_1882:String;
      
      private var var_1883:Boolean;
      
      public function Breed(param1:XML)
      {
         super(param1);
         _id = parseInt(param1.@id);
         var_1880 = parseInt(param1.@pattern);
         var_730 = String(param1.@gender);
         var_1883 = Boolean(parseInt(param1.@colorable));
         var_1881 = String(param1.@localizationKey);
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get localizationKey() : String
      {
         return var_1881;
      }
      
      public function get isColorable() : Boolean
      {
         return var_1883;
      }
      
      public function get gender() : String
      {
         return var_730;
      }
      
      public function get patternId() : int
      {
         return var_1880;
      }
      
      public function get avatarFigureString() : String
      {
         return var_1882;
      }
      
      public function set avatarFigureString(param1:String) : void
      {
         var_1882 = param1;
      }
   }
}
