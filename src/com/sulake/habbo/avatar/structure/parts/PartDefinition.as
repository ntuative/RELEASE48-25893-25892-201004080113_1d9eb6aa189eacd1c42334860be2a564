package com.sulake.habbo.avatar.structure.parts
{
   public class PartDefinition
   {
       
      
      private var _removeSetType:String;
      
      private var var_1405:int = -1;
      
      private var var_1126:Boolean;
      
      private var var_1127:String;
      
      private var var_1644:String;
      
      public function PartDefinition(param1:XML)
      {
         super();
         var_1644 = String(param1["set-type"]);
         var_1127 = String(param1["flipped-set-type"]);
         _removeSetType = String(param1["remove-set-type"]);
         var_1126 = false;
      }
      
      public function hasStaticId() : Boolean
      {
         return var_1405 >= 0;
      }
      
      public function get flippedSetType() : String
      {
         return var_1127;
      }
      
      public function get staticId() : int
      {
         return var_1405;
      }
      
      public function set staticId(param1:int) : void
      {
         var_1405 = param1;
      }
      
      public function get appendToFigure() : Boolean
      {
         return var_1126;
      }
      
      public function set appendToFigure(param1:Boolean) : void
      {
         var_1126 = param1;
      }
      
      public function set flippedSetType(param1:String) : void
      {
         var_1127 = param1;
      }
      
      public function get setType() : String
      {
         return var_1644;
      }
      
      public function get removeSetType() : String
      {
         return _removeSetType;
      }
   }
}
