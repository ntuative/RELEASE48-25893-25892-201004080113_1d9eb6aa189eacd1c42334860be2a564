package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var var_430:String;
      
      private var var_2296:String;
      
      private var var_2298:int;
      
      private var var_2295:int;
      
      private var var_1314:String;
      
      private var var_1137:String;
      
      private var _name:String;
      
      private var var_500:int;
      
      private var var_874:int;
      
      private var var_2297:int;
      
      private var var_2133:int;
      
      private var var_2294:String;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function get directMail() : int
      {
         return this.var_2295;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get realName() : String
      {
         return this.var_1137;
      }
      
      public function get customData() : String
      {
         return this.var_2296;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_500;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2298;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2294;
      }
      
      public function get figure() : String
      {
         return this.var_430;
      }
      
      public function get respectTotal() : int
      {
         return this.var_2133;
      }
      
      public function get sex() : String
      {
         return this.var_1314;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_430 = param1.readString();
         this.var_1314 = param1.readString();
         this.var_2296 = param1.readString();
         this.var_1137 = param1.readString();
         this.var_2297 = param1.readInteger();
         this.var_2294 = param1.readString();
         this.var_2298 = param1.readInteger();
         this.var_2295 = param1.readInteger();
         this.var_2133 = param1.readInteger();
         this.var_874 = param1.readInteger();
         this.var_500 = param1.readInteger();
         return true;
      }
      
      public function get tickets() : int
      {
         return this.var_2297;
      }
      
      public function get respectLeft() : int
      {
         return this.var_874;
      }
   }
}
