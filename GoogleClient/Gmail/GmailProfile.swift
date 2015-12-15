//
//  GmailProfile.swift
//  GoogleAPISwiftClient
//
//  Created by Matthew Wyskiel on 12/15/15.
//  Copyright © 2015 Matthew Wyskiel. All rights reserved.
//

import Foundation
import ObjectMapper

public class GmailProfile: GoogleObject {
	/// The total number of messages in the mailbox.
	public var messagesTotal: Int!
	/// The ID of the mailbox's current history record.
	public var historyId: UInt64!
	/// The user's email address.
	public var emailAddress: String!
	/// The total number of threads in the mailbox.
	public var threadsTotal: Int!
	
	public required init?(_ map: Map) {

	}

	public func mapping(map: Map) {
		messagesTotal <- map["messagesTotal"]
		historyId <- map["historyId"]
		emailAddress <- map["emailAddress"]
		threadsTotal <- map["threadsTotal"]
	}
}

