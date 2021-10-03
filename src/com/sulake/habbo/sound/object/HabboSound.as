package com.sulake.habbo.sound.object
{
   import com.sulake.habbo.sound.IHabboSound;
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class HabboSound implements IHabboSound
   {
       
      
      private var var_978:SoundChannel = null;
      
      private var var_801:Boolean;
      
      private var var_977:Sound = null;
      
      private var var_719:Number;
      
      public function HabboSound(param1:Sound)
      {
         super();
         var_977 = param1;
         var_977.addEventListener(Event.COMPLETE,onComplete);
         var_719 = 1;
         var_801 = false;
      }
      
      public function get finished() : Boolean
      {
         return !var_801;
      }
      
      public function stop() : Boolean
      {
         var_978.stop();
         return true;
      }
      
      public function play() : Boolean
      {
         var_801 = false;
         var_978 = var_977.play(0);
         this.volume = var_719;
         return true;
      }
      
      public function set position(param1:Number) : void
      {
      }
      
      public function get volume() : Number
      {
         return var_719;
      }
      
      public function get ready() : Boolean
      {
         return true;
      }
      
      public function get position() : Number
      {
         return var_978.position;
      }
      
      public function get length() : Number
      {
         return var_977.length;
      }
      
      public function set volume(param1:Number) : void
      {
         var_719 = param1;
         if(var_978 != null)
         {
            var_978.soundTransform = new SoundTransform(var_719);
         }
      }
      
      private function onComplete(param1:Event) : void
      {
         var_801 = true;
      }
   }
}
