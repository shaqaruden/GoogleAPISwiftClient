//
//  GmailHistoryLabelAdded.swift
//  GoogleAPISwiftClient
//
//  Created by Matthew Wyskiel on 12/15/15.
//  Copyright © 2015 Matthew Wyskiel. All rights reserved.
//

import Foundation
import ObjectMapper

public class GmailHistoryLabelAdded: GoogleObject {
	public var message: GmailMessage!
	/// Label IDs added to the message.
	public var labelIds: [String]!
	
	public required init?(_ map: Map) {

	}

	public func mapping(map: Map) {
		message <- map["message"]
		labelIds <- map["labelIds"]
	}
}

