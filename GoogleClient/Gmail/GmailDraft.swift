//
//  GmailDraft.swift
//  GoogleAPISwiftClient
//
//  Created by Matthew Wyskiel on 12/15/15.
//  Copyright © 2015 Matthew Wyskiel. All rights reserved.
//

import Foundation
import ObjectMapper

public class GmailDraft: GoogleObject {
	/// The immutable ID of the draft.
	public var id: String!
	/// The message content of the draft.
	public var message: GmailMessage!
	
	public required init?(_ map: Map) {

	}

	public func mapping(map: Map) {
		id <- map["id"]
		message <- map["message"]
	}
}

