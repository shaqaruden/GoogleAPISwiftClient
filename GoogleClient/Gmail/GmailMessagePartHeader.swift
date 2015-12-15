//
//  GmailMessagePartHeader.swift
//  GoogleAPISwiftClient
//
//  Created by Matthew Wyskiel on 12/15/15.
//  Copyright © 2015 Matthew Wyskiel. All rights reserved.
//

import Foundation
import ObjectMapper

public class GmailMessagePartHeader: GoogleObject {
	/// The name of the header before the : separator. For example, To.
	public var name: String!
	/// The value of the header after the : separator. For example, someuser@example.com.
	public var value: String!
	
	public required init?(_ map: Map) {

	}

	public func mapping(map: Map) {
		name <- map["name"]
		value <- map["value"]
	}
}

