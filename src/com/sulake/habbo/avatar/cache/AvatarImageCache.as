package com.sulake.habbo.avatar.cache
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.AvatarImage;
   import com.sulake.habbo.avatar.AvatarImageBodyPartContainer;
   import com.sulake.habbo.avatar.AvatarImagePartContainer;
   import com.sulake.habbo.avatar.AvatarStructure;
   import com.sulake.habbo.avatar.IAvatarImage;
   import com.sulake.habbo.avatar.actions.IActionDefinition;
   import com.sulake.habbo.avatar.actions.IActiveActionData;
   import com.sulake.habbo.avatar.alias.AssetAliasCollection;
   import com.sulake.habbo.avatar.animation.Animation;
   import com.sulake.habbo.avatar.animation.AnimationLayerData;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import com.sulake.habbo.avatar.enum.AvatarBodyPartType;
   import com.sulake.habbo.avatar.enum.AvatarDirectionAngle;
   import com.sulake.habbo.avatar.enum.AvatarScaleType;
   import com.sulake.habbo.avatar.palette.PaletteMap;
   import com.sulake.habbo.avatar.structure.AvatarCanvas;
   import com.sulake.habbo.avatar.structure.figure.IPartColor;
   import flash.display.BitmapData;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   
   public class AvatarImageCache
   {
      
      private static const const_1434:int = 60000;
       
      
      private var var_139:Map;
      
      private var var_197:String;
      
      private var _assets:AssetAliasCollection;
      
      private var var_1361:String;
      
      private var var_69:AvatarStructure;
      
      private var var_867:IAvatarImage;
      
      public function AvatarImageCache(param1:AvatarStructure, param2:IAvatarImage, param3:AssetAliasCollection, param4:String)
      {
         super();
         var_69 = param1;
         var_867 = param2;
         _assets = param3;
         var_197 = param4;
         var_139 = new Map();
      }
      
      private function updateBodyPartCache(param1:String, param2:AvatarImageBodyPartCache) : void
      {
         if(var_139 == null)
         {
            var_139 = new Map();
         }
         var_139.add(param1,param2);
      }
      
      private function calculateUnionRect(param1:Array) : ImageData
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc4_:Rectangle = new Rectangle();
         for each(_loc5_ in param1)
         {
            _loc4_ = _loc4_.union(_loc5_.offsetRect);
         }
         _loc3_ = new Point(-_loc4_.left,-_loc4_.top);
         _loc2_ = new BitmapData(_loc4_.width,_loc4_.height,true,16777215);
         for each(_loc5_ in param1)
         {
            _loc6_ = _loc3_.subtract(_loc5_.regpoint);
            _loc2_.copyPixels(_loc5_.bitmap,_loc5_.bitmap.rect,_loc6_,null,null,true);
         }
         return new ImageData(_loc2_,_loc3_);
      }
      
      public function setGeometryType(param1:String) : void
      {
         if(var_1361 != param1)
         {
            disposeInactiveActions(0);
            var_1361 = param1;
         }
      }
      
      public function getAnimationDataInFrame(param1:String, param2:int) : AnimationLayerData
      {
         var _loc5_:* = null;
         var _loc3_:AvatarImageBodyPartCache = getBodyPartCache(param1);
         if(_loc3_ == null)
         {
            return null;
         }
         var _loc4_:IActiveActionData = _loc3_.getAction();
         if(_loc4_ == null || !_loc4_.definition.isAnimation)
         {
            return null;
         }
         return var_69.getBodyPartData(_loc4_.definition.state + "." + _loc4_.actionParameter,param2,param1);
      }
      
      public function getBodyPartCache(param1:String) : AvatarImageBodyPartCache
      {
         if(var_139 == null)
         {
            var_139 = new Map();
         }
         var _loc2_:AvatarImageBodyPartCache = var_139.getValue(param1) as AvatarImageBodyPartCache;
         if(_loc2_ == null)
         {
            _loc2_ = new AvatarImageBodyPartCache();
            var_139.add(param1,_loc2_);
         }
         return _loc2_;
      }
      
      public function getImageContainer(param1:String, param2:int) : AvatarImageBodyPartContainer
      {
         var _loc10_:* = null;
         var _loc11_:* = null;
         var _loc17_:* = null;
         var _loc18_:* = null;
         var _loc19_:* = null;
         var _loc3_:AvatarImageBodyPartCache = getBodyPartCache(param1);
         if(_loc3_ == null)
         {
            debugInfo("[CacheMiss (getBodyPartCache)] [AvatarImageCache.getImageContainer] bodyPartId: " + param1);
            _loc3_ = new AvatarImageBodyPartCache();
            updateBodyPartCache(param1,_loc3_);
         }
         var _loc4_:int = _loc3_.getDirection();
         var _loc5_:IActiveActionData = _loc3_.getAction();
         var _loc6_:IActiveActionData = _loc5_;
         var _loc7_:Boolean = false;
         var _loc8_:int = _loc4_;
         var _loc9_:Point = new Point(0,0);
         var _loc12_:int = param2;
         var _loc13_:* = [];
         var _loc14_:Dictionary = new Dictionary();
         if(_loc5_ == null)
         {
            debugInfo("Action not found!!");
         }
         else if(_loc5_.definition.isAnimation)
         {
            _loc17_ = var_69.getAnimation(_loc5_.definition.state + "." + _loc5_.actionParameter);
            if(_loc17_ != null)
            {
               _loc18_ = _loc17_.getLayerData(param2,param1);
               if(_loc18_ != null)
               {
                  _loc8_ = _loc4_ + _loc18_.directionOffset;
                  if(_loc18_.directionOffset < 0)
                  {
                     if(_loc8_ < 0)
                     {
                        _loc8_ = 8 + _loc8_;
                     }
                     if(_loc8_ > 7)
                     {
                        _loc8_ = 8 - _loc8_;
                     }
                  }
                  else
                  {
                     if(_loc8_ < 0)
                     {
                        _loc8_ += 8;
                     }
                     if(_loc8_ > 7)
                     {
                        _loc8_ -= 8;
                     }
                  }
                  if(var_197 == AvatarScaleType.const_96)
                  {
                     _loc9_.x = _loc18_.dx / 2;
                     _loc9_.y = _loc18_.dy / 2;
                  }
                  else
                  {
                     _loc9_.x = _loc18_.dx;
                     _loc9_.y = _loc18_.dy;
                  }
                  _loc12_ = _loc18_.animationFrame;
                  if(_loc18_.action != null)
                  {
                     _loc5_ = _loc18_.action;
                  }
                  if(_loc18_.type == AnimationLayerData.const_735)
                  {
                     if(_loc18_.action != null)
                     {
                        _loc6_ = _loc18_.action;
                     }
                     _loc4_ = _loc8_;
                  }
                  else if(_loc18_.type == AnimationLayerData.const_377)
                  {
                     _loc4_ = _loc8_;
                  }
                  _loc7_ = true;
               }
               _loc13_ = _loc17_.removeData;
               _loc14_ = _loc18_.items;
            }
         }
         var _loc15_:AvatarImageActionCache = _loc3_.getActionCache(_loc6_);
         if(_loc15_ == null)
         {
            debugInfo("[CacheMiss (bodyPartCache.getActionCache)] [AvatarImageCache.getImageContainer] action.id: " + [param1,_loc5_.id]);
            _loc15_ = new AvatarImageActionCache();
            _loc3_.updateActionCache(_loc6_,_loc15_);
         }
         var _loc16_:AvatarImageDirectionCache = _loc15_.getDirectionCache(_loc4_);
         if(_loc16_ == null)
         {
            debugInfo("[CacheMiss (actionCache.getDirectionCache)] [AvatarImageCache.getImageContainer] direction: " + [param1,_loc4_]);
            _loc10_ = var_69.getParts(param1,(var_867 as AvatarImage).getFigure(),_loc6_,var_1361,_loc4_,_loc13_,_loc14_);
            _loc16_ = new AvatarImageDirectionCache(_loc10_);
            _loc15_.updateDirectionCache(_loc4_,_loc16_);
         }
         _loc11_ = _loc16_.getImageContainer(_loc12_);
         if(_loc11_ == null)
         {
            debugInfo("[ImageContainer (" + _loc5_.id + " " + _loc5_.definition + " type: " + _loc5_.actionType + ")]");
            _loc19_ = _loc16_.getPartList();
            _loc11_ = renderBodyPart(_loc4_,_loc19_,_loc12_,_loc5_);
            if(_loc11_ != null)
            {
               debugInfo("[ImageContainer creation (" + _loc5_.id + " " + _loc5_.definition + " type: " + _loc5_.actionType + ")]");
               _loc16_.updateImageContainer(_loc11_,_loc12_);
            }
            else
            {
               debugInfo("[ImageContainer was null: " + param1 + "]");
            }
         }
         if(_loc11_ != null)
         {
            _loc11_.offset = _loc9_;
         }
         return _loc11_;
      }
      
      public function dispose() : void
      {
         debugInfo("[AvatarImageCache dispose]");
         var_69 = null;
         var_867 = null;
         _assets = null;
         if(var_139 != null)
         {
            var_139.dispose();
         }
      }
      
      private function debugInfo(param1:String) : void
      {
      }
      
      private function renderBodyPart(param1:int, param2:Array, param3:int, param4:IActiveActionData) : AvatarImageBodyPartContainer
      {
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc14_:* = null;
         var _loc16_:* = null;
         var _loc18_:* = null;
         var _loc19_:Boolean = false;
         var _loc23_:int = 0;
         var _loc25_:* = null;
         var _loc31_:* = null;
         var _loc32_:* = null;
         var _loc33_:* = null;
         var _loc34_:* = null;
         var _loc35_:* = null;
         var _loc36_:* = null;
         var _loc37_:* = null;
         var _loc38_:* = null;
         var _loc39_:* = NaN;
         var _loc40_:* = null;
         if(param2 == null)
         {
            return null;
         }
         if(param2.length == 0)
         {
            return null;
         }
         var _loc5_:AvatarCanvas = var_69.getCanvas(var_197,var_1361);
         if(_loc5_ == null)
         {
            return null;
         }
         var _loc8_:BitmapData = new BitmapData(_loc5_.width,_loc5_.height,true,16777215);
         var _loc20_:Boolean = false;
         var _loc24_:Boolean = false;
         var _loc26_:Point = new Point(0,_loc5_.height - int(_loc5_.width / 4));
         var _loc27_:Array = new Array();
         var _loc28_:int = param2.length - 1;
         while(_loc28_ >= 0)
         {
            _loc7_ = param2[_loc28_] as AvatarImagePartContainer;
            _loc23_ = param1;
            _loc6_ = _loc7_.bodyPartId;
            _loc7_ = param2[_loc28_];
            _loc11_ = _loc7_.partType;
            _loc12_ = _loc7_.partId;
            _loc13_ = _loc7_.getFrameIndex(param3);
            _loc14_ = _loc7_.color;
            _loc18_ = _loc7_.action;
            _loc19_ = _loc7_.isColorable;
            _loc24_ = _loc7_.isBlendable;
            _loc25_ = _loc7_.blendTransform;
            if(_loc11_ == "ey")
            {
               _loc19_ = false;
            }
            _loc31_ = param4.definition.assetPartDefinition;
            _loc32_ = param4.definition.state;
            if(AvatarDirectionAngle.const_1370[param1])
            {
               if(!((_loc11_ == "lh" || _loc11_ == "ls" || _loc11_ == "lc" || _loc11_ == "lhs") && _loc31_ == "wav"))
               {
                  if(!((_loc11_ == "rh" || _loc11_ == "rs" || _loc11_ == "rc" || _loc11_ == "rhs") && _loc31_ == "drk"))
                  {
                     if(!(_loc11_ == "rhs" && _loc31_ == "crr"))
                     {
                        if(_loc11_ != "ri")
                        {
                           _loc20_ = true;
                           if(param1 == 4)
                           {
                              _loc23_ = 2;
                           }
                           else if(param1 == 5)
                           {
                              _loc23_ = 1;
                           }
                           else if(param1 == 6)
                           {
                              _loc23_ = 0;
                           }
                           if(_loc7_.flippedPartType != _loc11_)
                           {
                              _loc11_ = _loc7_.flippedPartType;
                           }
                        }
                     }
                  }
               }
            }
            _loc10_ = var_197 + "_" + _loc18_.assetPartDefinition + "_" + _loc11_ + "_" + _loc12_ + "_" + _loc23_ + "_" + _loc13_;
            _loc16_ = _assets.getAssetByName(_loc10_) as BitmapDataAsset;
            if(_loc16_ == null)
            {
               _loc10_ = var_197 + "_std_" + _loc11_ + "_" + _loc12_ + "_" + _loc23_ + "_0";
               _loc16_ = _assets.getAssetByName(_loc10_) as BitmapDataAsset;
            }
            if(_loc16_ == null)
            {
               Logger.log("renderBodyPart could not find required asset: " + _loc10_);
            }
            else
            {
               if(_loc7_.paletteMapId > -1)
               {
                  _loc34_ = var_69.renderManager.paletteManager.getPalette(_loc7_.paletteMapId);
                  _loc35_ = _loc16_.content as BitmapData;
                  if(_loc35_ != null && _loc34_ != null)
                  {
                     _loc36_ = _loc35_.getPixels(_loc35_.rect);
                     _loc37_ = _loc34_.colorize(_loc36_);
                     _loc9_ = new BitmapData(_loc35_.width,_loc35_.height);
                     _loc9_.setPixels(_loc9_.rect,_loc37_);
                  }
                  else
                  {
                     _loc9_ = (_loc16_.content as BitmapData).clone();
                  }
               }
               else
               {
                  _loc9_ = (_loc16_.content as BitmapData).clone();
               }
               debugInfo("Render part: " + _loc10_);
               if(_loc9_ == null)
               {
                  Logger.log("renderBodyPart could not find required bitmap: " + _loc10_);
                  return null;
               }
               if((_loc32_ == AvatarAction.const_942 || _loc32_ == AvatarAction.const_731) && (_loc6_ == AvatarBodyPartType.const_332 || _loc6_ == AvatarBodyPartType.const_1374 || _loc6_ == AvatarBodyPartType.const_1349) && _loc7_.color != null)
               {
                  _loc38_ = _loc7_.color.colorTransform;
                  _loc39_ = 0.7;
                  _loc40_ = new ColorTransform(_loc38_.redMultiplier * _loc39_,_loc38_.greenMultiplier * _loc39_ + 0.3,_loc38_.blueMultiplier * _loc39_ + 0.3,_loc38_.alphaMultiplier,0,0,20);
                  _loc9_.colorTransform(_loc9_.rect,_loc40_);
               }
               else if(_loc19_ && _loc7_.color != null)
               {
                  _loc9_.colorTransform(_loc9_.rect,_loc7_.color.colorTransform);
               }
               if(_loc24_)
               {
                  _loc9_.colorTransform(_loc9_.rect,_loc25_);
               }
               _loc33_ = new ImageData(_loc9_,_loc16_.offset);
               _loc27_.push(_loc33_);
            }
            _loc28_--;
         }
         if(_loc27_ == null || _loc27_.length == 0)
         {
            return null;
         }
         var _loc29_:ImageData = calculateUnionRect(_loc27_);
         _loc29_.flipH = _loc20_;
         var _loc30_:Point = new Point(-_loc29_.regpoint.x,_loc26_.y - _loc29_.regpoint.y);
         if(_loc20_)
         {
            if(var_197 == AvatarScaleType.const_51)
            {
               _loc30_.x += 67;
            }
            else
            {
               _loc30_.x += 31;
            }
         }
         return new AvatarImageBodyPartContainer(_loc29_.bitmap,_loc30_);
      }
      
      public function setAction(param1:IActiveActionData) : void
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc2_:Array = var_69.getActiveBodyPartIds(param1);
         for each(_loc3_ in _loc2_)
         {
            _loc4_ = getBodyPartCache(_loc3_);
            if(_loc4_ != null)
            {
               _loc4_.setAction(param1);
            }
         }
      }
      
      public function disposeInactiveActions(param1:int = 60000) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         if(var_139 != null)
         {
            _loc2_ = var_139.getKeys();
            for each(_loc3_ in _loc2_)
            {
               _loc4_ = var_139.getValue(_loc3_) as AvatarImageBodyPartCache;
               if(_loc4_ != null)
               {
                  _loc4_.disposeActions(param1);
               }
            }
         }
      }
      
      public function setDirection(param1:String, param2:int) : void
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc3_:Array = var_69.getBodyPartsUnordered(param1);
         for each(_loc4_ in _loc3_)
         {
            _loc5_ = getBodyPartCache(_loc4_);
            if(_loc5_ != null)
            {
               _loc5_.setDirection(param2);
            }
         }
      }
      
      public function resetBodyPartCache(param1:IActiveActionData) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         if(var_139 != null)
         {
            _loc2_ = var_139.getKeys();
            for each(_loc3_ in _loc2_)
            {
               _loc4_ = var_139.getValue(_loc3_) as AvatarImageBodyPartCache;
               if(_loc4_ != null)
               {
                  _loc4_.setAction(param1);
               }
            }
         }
      }
   }
}
