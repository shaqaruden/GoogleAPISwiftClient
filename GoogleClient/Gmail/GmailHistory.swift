//
//  GmailHistory.swift
//  GoogleAPISwiftClient
//
//  Created by Matthew Wyskiel on 12/15/15.
//  Copyright © 2015 Matthew Wyskiel. All rights reserved.
//

import Foundation
import ObjectMapper

public class GmailHistory: GoogleObject {
	/// Labels removed from messages in this history record.
	public var labelsRemoved: [GmailHistoryLabelRemoved]!
	/// Messages added to the mailbox in this history record.
	public var messagesAdded: [GmailHistoryMessageAdded]!
	/// List of messages changed in this history record. The fields for specific change types, such as messagesAdded may duplicate messages in this field. We recommend using the specific change-type fields instead of this.
	public var messages: [GmailMessage]!
	/// The mailbox sequence ID.
	public var id: UInt64!
	/// Labels added to messages in this history record.
	public var labelsAdded: [GmailHistoryLabelAdded]!
	/// Messages deleted (not Trashed) from the mailbox in this history record.
	public var messagesDeleted: [GmailHistoryMessageDeleted]!
	
	public required init?(_ map: Map) {

	}

	public func mapping(map: Map) {
		labelsRemoved <- map["labelsRemoved"]
		messagesAdded <- map["messagesAdded"]
		messages <- map["messages"]
		id <- map["id"]
		labelsAdded <- map["labelsAdded"]
		messagesDeleted <- map["messagesDeleted"]
	}
}

