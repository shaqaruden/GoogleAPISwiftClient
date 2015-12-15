//
//  GmailMessage.swift
//  GoogleAPISwiftClient
//
//  Created by Matthew Wyskiel on 12/15/15.
//  Copyright © 2015 Matthew Wyskiel. All rights reserved.
//

import Foundation
import ObjectMapper

public class GmailMessage: GoogleObject {
	/// The ID of the thread the message belongs to. To add a message or draft to a thread, the following criteria must be met: 
- The requested threadId must be specified on the Message or Draft.Message you supply with your request. 
- The References and In-Reply-To headers must be set in compliance with the RFC 2822 standard. 
- The Subject headers must match.
	public var threadId: String!
	/// The parsed email structure in the message parts.
	public var payload: GmailMessagePart!
	/// The immutable ID of the message.
	public var id: String!
	/// The internal message creation timestamp (epoch ms), which determines ordering in the inbox. For normal SMTP-received email, this represents the time the message was originally accepted by Google, which is more reliable than the Date header. However, for API-migrated mail, it can be configured by client to be based on the Date header.
	public var internalDate: Int64!
	/// Estimated size in bytes of the message.
	public var sizeEstimate: Int!
	/// A short part of the message text.
	public var snippet: String!
	/// List of IDs of labels applied to this message.
	public var labelIds: [String]!
	/// The ID of the last history record that modified this message.
	public var historyId: UInt64!
	/// The entire email message in an RFC 2822 formatted and base64url encoded string. Returned in messages.get and drafts.get responses when the format=RAW parameter is supplied.
	public var raw: NSURL!
	
	public required init?(_ map: Map) {

	}

	public func mapping(map: Map) {
		threadId <- map["threadId"]
		payload <- map["payload"]
		id <- map["id"]
		internalDate <- map["internalDate"]
		sizeEstimate <- map["sizeEstimate"]
		snippet <- map["snippet"]
		labelIds <- map["labelIds"]
		historyId <- map["historyId"]
		raw <- (map["raw"], URLTransform())
	}
}

