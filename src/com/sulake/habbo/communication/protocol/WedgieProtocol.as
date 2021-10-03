package com.sulake.habbo.communication.protocol
{
   import com.sulake.core.communication.protocol.IProtocol;
   import com.sulake.core.communication.protocol.IProtocolDecoder;
   import com.sulake.core.communication.protocol.IProtocolEncoder;
   import flash.utils.ByteArray;
   
   public class WedgieProtocol implements IProtocol
   {
      
      public static const const_1205:uint = 1;
      
      public static const const_1337:uint = 2;
       
      
      private var var_777:IProtocolDecoder;
      
      private var var_962:IProtocolEncoder;
      
      public function WedgieProtocol()
      {
         super();
         var_962 = new WedgieEncoder();
         var_777 = new WedgieDecoder();
      }
      
      public function getMessages(param1:ByteArray, param2:Array) : uint
      {
         var _loc5_:* = 0;
         var _loc6_:int = 0;
         param1.position = 0;
         var _loc3_:uint = param1.position;
         var _loc4_:ByteArray = new ByteArray();
         while(param1.bytesAvailable)
         {
            _loc5_ = uint(param1.readUnsignedByte());
            if(_loc5_ == const_1205)
            {
               _loc4_.position = 0;
               _loc6_ = var_777.getID(_loc4_);
               param2.push([_loc6_,_loc4_]);
               _loc4_ = new ByteArray();
               _loc3_ = param1.position;
            }
            else
            {
               _loc4_.writeByte(_loc5_);
            }
         }
         return _loc3_;
      }
      
      public function get encoder() : IProtocolEncoder
      {
         return var_962;
      }
      
      public function get decoder() : IProtocolDecoder
      {
         return var_777;
      }
      
      public function dispose() : void
      {
         var_962.dispose();
         var_777.dispose();
         var_962 = null;
         var_777 = null;
      }
   }
}
