//
//  GmailModifyMessageRequest.swift
//  GoogleAPISwiftClient
//
//  Created by Matthew Wyskiel on 12/15/15.
//  Copyright © 2015 Matthew Wyskiel. All rights reserved.
//

import Foundation
import ObjectMapper

public class GmailModifyMessageRequest: GoogleObject {
	/// A list IDs of labels to remove from this message.
	public var removeLabelIds: [String]!
	/// A list of IDs of labels to add to this message.
	public var addLabelIds: [String]!
	
	public required init?(_ map: Map) {

	}

	public func mapping(map: Map) {
		removeLabelIds <- map["removeLabelIds"]
		addLabelIds <- map["addLabelIds"]
	}
}

