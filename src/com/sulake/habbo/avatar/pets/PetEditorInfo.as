package com.sulake.habbo.avatar.pets
{
   public class PetEditorInfo
   {
       
      
      private var var_2165:Boolean;
      
      private var var_1943:Boolean;
      
      public function PetEditorInfo(param1:XML)
      {
         super();
         var_2165 = Boolean(parseInt(param1.@club));
         var_1943 = Boolean(parseInt(param1.@selectable));
      }
      
      public function get isClub() : Boolean
      {
         return var_2165;
      }
      
      public function get isSelectable() : Boolean
      {
         return var_1943;
      }
   }
}
