//
//  GmailThread.swift
//  GoogleAPISwiftClient
//
//  Created by Matthew Wyskiel on 12/15/15.
//  Copyright © 2015 Matthew Wyskiel. All rights reserved.
//

import Foundation
import ObjectMapper

public class GmailThread: GoogleObject {
	/// A short part of the message text.
	public var snippet: String!
	/// The ID of the last history record that modified this thread.
	public var historyId: UInt64!
	/// The list of messages in the thread.
	public var messages: [GmailMessage]!
	/// The unique ID of the thread.
	public var id: String!
	
	public required init?(_ map: Map) {

	}

	public func mapping(map: Map) {
		snippet <- map["snippet"]
		historyId <- map["historyId"]
		messages <- map["messages"]
		id <- map["id"]
	}
}

