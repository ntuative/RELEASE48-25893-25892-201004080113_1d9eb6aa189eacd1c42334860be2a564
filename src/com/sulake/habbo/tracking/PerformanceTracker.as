package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.utils.debug.GarbageMonitor;
   import com.sulake.habbo.communication.messages.outgoing.tracking.PerformanceLogMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.external.ExternalInterface;
   import flash.system.Capabilities;
   import flash.system.System;
   import flash.utils.getTimer;
   
   public class PerformanceTracker
   {
       
      
      private var var_1528:GarbageMonitor = null;
      
      private var var_1293:int = 0;
      
      private var var_1309:Boolean = false;
      
      private var var_2085:String = "";
      
      private var var_1527:String = "";
      
      private var var_352:Number = 0;
      
      private var var_1290:int = 10;
      
      private var var_2322:Array;
      
      private var var_634:int = 0;
      
      private var var_1291:int = 60;
      
      private var var_1059:int = 0;
      
      private var var_1060:int = 0;
      
      private var var_2131:String = "";
      
      private var var_2084:Number = 0;
      
      private var var_1292:int = 1000;
      
      private var var_2083:Boolean = true;
      
      private var var_2086:Number = 0.15;
      
      private var var_147:IHabboConfigurationManager = null;
      
      private var var_2087:String = "";
      
      private var var_1294:int = 0;
      
      private var _connection:IConnection = null;
      
      public function PerformanceTracker()
      {
         var_2322 = [];
         super();
         var_1527 = Capabilities.version;
         var_2085 = Capabilities.os;
         var_1309 = Capabilities.isDebugger;
         var_2087 = !true ? ExternalInterface.call("window.navigator.userAgent.toString") : "unknown";
         var_1528 = new GarbageMonitor();
         updateGarbageMonitor();
         var_1293 = getTimer();
      }
      
      private function updateGarbageMonitor() : Object
      {
         var _loc2_:* = null;
         var _loc1_:Array = var_1528.list;
         if(_loc1_ == null || _loc1_.length == 0)
         {
            _loc2_ = new GarbageTester("tester");
            var_1528.insert(_loc2_,"tester");
            return _loc2_;
         }
         return null;
      }
      
      public function dispose() : void
      {
      }
      
      public function get averageUpdateInterval() : int
      {
         return var_352;
      }
      
      private function differenceInPercents(param1:Number, param2:Number) : Number
      {
         if(param1 == param2)
         {
            return 0;
         }
         var _loc3_:Number = param1;
         var _loc4_:Number = param2;
         if(param2 > param1)
         {
            _loc3_ = param2;
            _loc4_ = param1;
         }
         return 100 * (1 - _loc4_ / _loc3_);
      }
      
      public function set reportInterval(param1:int) : void
      {
         var_1291 = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         _connection = param1;
      }
      
      public function get flashVersion() : String
      {
         return var_1527;
      }
      
      public function update(param1:uint) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Boolean = false;
         var _loc6_:Number = NaN;
         var _loc2_:Object = updateGarbageMonitor();
         if(_loc2_ != null)
         {
            ++var_1060;
            Logger.log("Garbage collection");
         }
         var _loc3_:Boolean = false;
         if(param1 > var_1292)
         {
            ++var_1059;
            _loc3_ = true;
         }
         else
         {
            ++var_634;
            if(var_634 <= 1)
            {
               var_352 = param1;
            }
            else
            {
               _loc4_ = Number(var_634);
               var_352 = var_352 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
            }
         }
         if(getTimer() - var_1293 > var_1291 * 1000 && var_1294 < var_1290)
         {
            Logger.log("*** Performance tracker: average frame rate " + 1000 / var_352);
            _loc5_ = true;
            if(var_2083 && var_1294 > 0)
            {
               _loc6_ = differenceInPercents(var_2084,var_352);
               if(_loc6_ < var_2086)
               {
                  _loc5_ = false;
               }
            }
            var_1293 = getTimer();
            if(_loc5_ || _loc3_)
            {
               var_2084 = var_352;
               if(sendReport())
               {
                  ++var_1294;
               }
            }
         }
      }
      
      public function set reportLimit(param1:int) : void
      {
         var_1290 = param1;
      }
      
      public function set slowUpdateLimit(param1:int) : void
      {
         var_1292 = param1;
      }
      
      private function sendReport() : Boolean
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(_connection != null)
         {
            _loc1_ = null;
            _loc2_ = getTimer() / 1000;
            _loc3_ = -1;
            _loc4_ = 0;
            _loc1_ = new PerformanceLogMessageComposer(_loc2_,var_2087,var_1527,var_2085,var_2131,var_1309,_loc4_,_loc3_,var_1060,var_352,var_1059);
            _connection.send(_loc1_);
            var_1060 = 0;
            var_352 = 0;
            var_634 = 0;
            var_1059 = 0;
            return true;
         }
         return false;
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         var_147 = param1;
         var_1291 = int(var_147.getKey("performancetest.interval","60"));
         var_1292 = int(var_147.getKey("performancetest.slowupdatelimit","1000"));
         var_1290 = int(var_147.getKey("performancetest.reportlimit","10"));
         var_2086 = Number(var_147.getKey("performancetest.distribution.deviancelimit.percent","10"));
         var_2083 = Boolean(int(var_147.getKey("performancetest.distribution.enabled","1")));
      }
   }
}
