//
//  GmailWatchResponse.swift
//  GoogleAPISwiftClient
//
//  Created by Matthew Wyskiel on 12/15/15.
//  Copyright © 2015 Matthew Wyskiel. All rights reserved.
//

import Foundation
import ObjectMapper

public class GmailWatchResponse: GoogleObject {
	/// The ID of the mailbox's current history record.
	public var historyId: UInt64!
	/// When Gmail will stop sending notifications for mailbox updates (epoch millis). Call watch again before this time to renew the watch.
	public var expiration: Int64!
	
	public required init?(_ map: Map) {

	}

	public func mapping(map: Map) {
		historyId <- map["historyId"]
		expiration <- map["expiration"]
	}
}

