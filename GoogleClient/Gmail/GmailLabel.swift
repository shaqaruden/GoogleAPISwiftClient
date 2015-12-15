//
//  GmailLabel.swift
//  GoogleAPISwiftClient
//
//  Created by Matthew Wyskiel on 12/15/15.
//  Copyright © 2015 Matthew Wyskiel. All rights reserved.
//

import Foundation
import ObjectMapper

public class GmailLabel: GoogleObject {
	/// The owner type for the label. User labels are created by the user and can be modified and deleted by the user and can be applied to any message or thread. System labels are internally created and cannot be added, modified, or deleted. System labels may be able to be applied to or removed from messages and threads under some circumstances but this is not guaranteed. For example, users can apply and remove the INBOX and UNREAD labels from messages and threads, but cannot apply or remove the DRAFTS or SENT labels from messages or threads.
	public var type: GmailLabelType!
	/// The visibility of the label in the label list in the Gmail web interface.
	public var labelListVisibility: GmailLabelLabelListVisibility!
	/// The number of unread threads with the label.
	public var threadsUnread: Int!
	/// The immutable ID of the label.
	public var id: String!
	/// The number of unread messages with the label.
	public var messagesUnread: Int!
	/// The total number of threads with the label.
	public var threadsTotal: Int!
	/// The total number of messages with the label.
	public var messagesTotal: Int!
	/// The visibility of the label in the message list in the Gmail web interface.
	public var messageListVisibility: GmailLabelMessageListVisibility!
	/// The display name of the label.
	public var name: String!
	
	public required init?(_ map: Map) {

	}

	public func mapping(map: Map) {
		type <- map["type"]
		labelListVisibility <- map["labelListVisibility"]
		threadsUnread <- map["threadsUnread"]
		id <- map["id"]
		messagesUnread <- map["messagesUnread"]
		threadsTotal <- map["threadsTotal"]
		messagesTotal <- map["messagesTotal"]
		messageListVisibility <- map["messageListVisibility"]
		name <- map["name"]
	}
}

