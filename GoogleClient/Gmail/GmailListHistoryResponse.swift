//
//  GmailListHistoryResponse.swift
//  GoogleAPISwiftClient
//
//  Created by Matthew Wyskiel on 12/15/15.
//  Copyright © 2015 Matthew Wyskiel. All rights reserved.
//

import Foundation
import ObjectMapper

public class GmailListHistoryResponse: GoogleObject {
	/// List of history records. Any messages contained in the response will typically only have id and threadId fields populated.
	public var history: [GmailHistory]!
	/// Page token to retrieve the next page of results in the list.
	public var nextPageToken: String!
	/// The ID of the mailbox's current history record.
	public var historyId: UInt64!
	
	public required init?(_ map: Map) {

	}

	public func mapping(map: Map) {
		history <- map["history"]
		nextPageToken <- map["nextPageToken"]
		historyId <- map["historyId"]
	}
}

