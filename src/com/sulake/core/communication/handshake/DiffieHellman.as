package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_1207:BigInteger;
      
      private var var_580:BigInteger;
      
      private var var_1477:BigInteger;
      
      private var var_1476:BigInteger;
      
      private var var_1901:BigInteger;
      
      private var var_1900:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         var_1207 = param1;
         var_1477 = param2;
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return var_1901.toRadix(param1);
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         var_1476 = new BigInteger();
         var_1476.fromRadix(param1,param2);
         var_1901 = var_1476.modPow(var_580,var_1207);
         return getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return var_1900.toRadix(param1);
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + var_1207.toString() + ",generator: " + var_1477.toString() + ",secret: " + param1);
         var_580 = new BigInteger();
         var_580.fromRadix(param1,param2);
         var_1900 = var_1477.modPow(var_580,var_1207);
         return true;
      }
   }
}
