package com.sulake.habbo.avatar
{
   import com.sulake.habbo.avatar.actions.IActionDefinition;
   import com.sulake.habbo.avatar.structure.figure.IPartColor;
   import flash.geom.ColorTransform;
   
   public class AvatarImagePartContainer
   {
       
      
      private var _frames:Array;
      
      private var var_1929:int;
      
      private var var_1928:String;
      
      private var var_1420:IActionDefinition;
      
      private var var_1926:Boolean;
      
      private var _color:IPartColor;
      
      private var var_1925:String;
      
      private var var_1927:String;
      
      private var var_1883:Boolean;
      
      private var var_1923:ColorTransform;
      
      private var var_1924:int;
      
      public function AvatarImagePartContainer(param1:String, param2:String, param3:int, param4:IPartColor, param5:Array, param6:IActionDefinition, param7:Boolean, param8:int, param9:String = "", param10:Boolean = false, param11:Number = 1)
      {
         super();
         var_1928 = param1;
         var_1925 = param2;
         var_1929 = param3;
         _color = param4;
         _frames = param5;
         var_1420 = param6;
         var_1883 = param7;
         var_1924 = param8;
         var_1927 = param9;
         var_1926 = param10;
         var_1923 = new ColorTransform(1,1,1,param11);
      }
      
      public function get isColorable() : Boolean
      {
         return var_1883;
      }
      
      public function get partType() : String
      {
         return var_1925;
      }
      
      public function getFrameIndex(param1:int) : int
      {
         return 0;
      }
      
      public function get paletteMapId() : int
      {
         return var_1924;
      }
      
      public function get isBlendable() : Boolean
      {
         return var_1926;
      }
      
      public function get color() : IPartColor
      {
         return _color;
      }
      
      public function get partId() : int
      {
         return var_1929;
      }
      
      public function get flippedPartType() : String
      {
         return var_1927;
      }
      
      public function get bodyPartId() : String
      {
         return var_1928;
      }
      
      public function get action() : IActionDefinition
      {
         return var_1420;
      }
      
      public function get blendTransform() : ColorTransform
      {
         return var_1923;
      }
   }
}
