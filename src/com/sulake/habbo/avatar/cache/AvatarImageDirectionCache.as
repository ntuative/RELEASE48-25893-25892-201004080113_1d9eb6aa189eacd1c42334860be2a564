package com.sulake.habbo.avatar.cache
{
   import com.sulake.habbo.avatar.AvatarImageBodyPartContainer;
   import com.sulake.habbo.avatar.AvatarImagePartContainer;
   import flash.utils.Dictionary;
   
   public class AvatarImageDirectionCache
   {
       
      
      private var var_669:Array;
      
      private var var_796:Dictionary;
      
      public function AvatarImageDirectionCache(param1:Array)
      {
         super();
         var_796 = new Dictionary();
         var_669 = param1;
      }
      
      public function updateImageContainer(param1:AvatarImageBodyPartContainer, param2:int) : void
      {
         var _loc3_:String = getCacheKey(param2);
         var_796[_loc3_] = param1;
      }
      
      public function getPartList() : Array
      {
         return var_669;
      }
      
      private function debugInfo(param1:String) : void
      {
      }
      
      private function getCacheKey(param1:int) : String
      {
         var _loc3_:* = null;
         var _loc2_:* = "";
         for each(_loc3_ in var_669)
         {
            _loc2_ = _loc2_ + _loc3_.partId + ":" + _loc3_.getFrameIndex(param1) + "/";
         }
         return _loc2_;
      }
      
      public function getImageContainer(param1:int) : AvatarImageBodyPartContainer
      {
         var _loc2_:String = getCacheKey(param1);
         return var_796[_loc2_];
      }
      
      public function comparePartList(param1:Array) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc2_:Boolean = true;
         if(var_669.length == param1.length)
         {
            _loc3_ = 0;
            while(_loc3_ < var_669.length)
            {
               _loc4_ = var_669[_loc3_];
               _loc5_ = var_669[_loc3_];
               if(_loc4_ != _loc5_)
               {
                  _loc2_ = false;
                  break;
               }
               _loc3_++;
            }
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      public function dispose() : void
      {
         debugInfo("[dispose]");
         var_796 = null;
      }
   }
}
