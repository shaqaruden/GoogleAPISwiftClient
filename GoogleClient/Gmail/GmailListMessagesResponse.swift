//
//  GmailListMessagesResponse.swift
//  GoogleAPISwiftClient
//
//  Created by Matthew Wyskiel on 12/15/15.
//  Copyright © 2015 Matthew Wyskiel. All rights reserved.
//

import Foundation
import ObjectMapper

public class GmailListMessagesResponse: GoogleObject {
	/// Token to retrieve the next page of results in the list.
	public var nextPageToken: String!
	/// List of messages.
	public var messages: [GmailMessage]!
	/// Estimated total number of results.
	public var resultSizeEstimate: UInt!
	
	public required init?(_ map: Map) {

	}

	public func mapping(map: Map) {
		nextPageToken <- map["nextPageToken"]
		messages <- map["messages"]
		resultSizeEstimate <- map["resultSizeEstimate"]
	}
}

