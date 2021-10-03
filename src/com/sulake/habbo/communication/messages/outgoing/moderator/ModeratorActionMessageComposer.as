package com.sulake.habbo.communication.messages.outgoing.moderator
{
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.core.runtime.IDisposable;
   
   public class ModeratorActionMessageComposer implements IMessageComposer, IDisposable
   {
      
      public static const const_1197:int = 1;
      
      public static const const_1167:int = 4;
      
      public static const const_1538:int = 2;
      
      public static const const_1258:int = 1;
      
      public static const const_1239:int = 0;
      
      public static const const_1509:int = 0;
      
      public static const const_1206:int = 3;
       
      
      private var var_28:Array;
      
      public function ModeratorActionMessageComposer(param1:int, param2:int, param3:String, param4:String, param5:String, param6:int = 0)
      {
         var_28 = new Array();
         super();
         this.var_28.push(param1);
         this.var_28.push(param2);
         this.var_28.push(param3);
         this.var_28.push(param4);
         this.var_28.push(param5);
         this.var_28.push(param6);
         this.var_28.push(false);
         this.var_28.push(false);
      }
      
      public function get disposed() : Boolean
      {
         return false;
      }
      
      public function getMessageArray() : Array
      {
         return this.var_28;
      }
      
      public function dispose() : void
      {
         this.var_28 = null;
      }
   }
}
