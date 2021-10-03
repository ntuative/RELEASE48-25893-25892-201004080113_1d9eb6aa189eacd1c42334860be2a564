package com.sulake.habbo.avatar.wardrobe
{
   import com.sulake.habbo.avatar.HabboAvatarEditor;
   import com.sulake.habbo.avatar.IAvatarImage;
   import com.sulake.habbo.avatar.IOutfit;
   import com.sulake.habbo.avatar.enum.AvatarScaleType;
   import com.sulake.habbo.avatar.enum.AvatarSetType;
   import com.sulake.habbo.avatar.figuredata.FigureData;
   import flash.display.BitmapData;
   
   public class Outfit implements IOutfit
   {
       
      
      private var var_730:String;
      
      private var var_430:String;
      
      private var _view:OutfitView;
      
      private var var_1393:IAvatarImage;
      
      private var var_47:HabboAvatarEditor;
      
      private var _image:BitmapData;
      
      public function Outfit(param1:HabboAvatarEditor, param2:String, param3:String)
      {
         super();
         var_47 = param1;
         _view = new OutfitView(param1.windowManager,param1.assets,param2 != "");
         switch(param3)
         {
            case FigureData.const_78:
            case "m":
            case "M":
               param3 = "null";
               break;
            case FigureData.const_85:
            case "f":
            case "F":
               param3 = "null";
         }
         var_430 = param2;
         var_730 = param3;
         update();
      }
      
      public function get gender() : String
      {
         return var_730;
      }
      
      public function get view() : OutfitView
      {
         return _view;
      }
      
      public function update() : void
      {
         var_1393 = var_47.avatarRenderManager.createAvatarImage(figure,AvatarScaleType.const_96);
         var_1393.setDirection(AvatarSetType.const_38,int(FigureData.const_507));
         _image = var_1393.getImage(AvatarSetType.const_38);
         _view.udpate(_image);
      }
      
      public function get figure() : String
      {
         return var_430;
      }
      
      public function dispose() : void
      {
         var_430 = null;
         var_730 = null;
         _image = null;
      }
   }
}
