package com.sulake.habbo.communication.messages.parser.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import flash.utils.getTimer;
   
   public class IssueInfoMessageParser implements IMessageParser
   {
       
      
      private var var_56:IssueMessageData;
      
      public function IssueInfoMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_56 = new IssueMessageData();
         var_56.issueId = param1.readInteger();
         var_56.state = param1.readInteger();
         var_56.categoryId = param1.readInteger();
         var_56.reportedCategoryId = param1.readInteger();
         var_56.timeStamp = getTimer() - param1.readInteger();
         var_56.priority = param1.readInteger();
         var_56.reporterUserId = param1.readInteger();
         var_56.reporterUserName = param1.readString();
         var_56.reportedUserId = param1.readInteger();
         var_56.reportedUserName = param1.readString();
         var_56.pickerUserId = param1.readInteger();
         var_56.pickerUserName = param1.readString();
         var_56.message = param1.readString();
         var_56.chatRecordId = param1.readInteger();
         var_56.roomName = param1.readString();
         var_56.roomType = param1.readInteger();
         if(false)
         {
            var_56.roomResources = param1.readString();
            var_56.unitPort = param1.readInteger();
            var_56.worldId = param1.readInteger();
         }
         if(false)
         {
            var_56.flatType = param1.readString();
            var_56.flatId = param1.readInteger();
            var_56.flatOwnerName = param1.readString();
         }
         return true;
      }
      
      public function get issueData() : IssueMessageData
      {
         return var_56;
      }
      
      public function flush() : Boolean
      {
         var_56 = null;
         return true;
      }
   }
}
