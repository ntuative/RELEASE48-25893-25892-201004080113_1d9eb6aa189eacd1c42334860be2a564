package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_605:int = 2;
      
      public static const const_928:int = 6;
      
      public static const const_570:int = 1;
      
      public static const const_730:int = 3;
      
      public static const const_807:int = 4;
      
      public static const const_560:int = 5;
       
      
      private var var_1902:String;
      
      private var var_991:int;
      
      private var var_1878:String;
      
      private var _type:int;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         _type = param1;
         var_991 = param2;
         var_1878 = param3;
         var_1902 = param4;
      }
      
      public function get time() : String
      {
         return var_1902;
      }
      
      public function get senderId() : int
      {
         return var_991;
      }
      
      public function get messageText() : String
      {
         return var_1878;
      }
      
      public function get type() : int
      {
         return _type;
      }
   }
}
