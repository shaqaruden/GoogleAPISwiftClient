//
//  GmailMessagePartBody.swift
//  GoogleAPISwiftClient
//
//  Created by Matthew Wyskiel on 12/15/15.
//  Copyright © 2015 Matthew Wyskiel. All rights reserved.
//

import Foundation
import ObjectMapper

public class GmailMessagePartBody: GoogleObject {
	/// Total number of bytes in the body of the message part.
	public var size: Int!
	/// The body data of a MIME message part. May be empty for MIME container types that have no message body or when the body data is sent as a separate attachment. An attachment ID is present if the body data is contained in a separate attachment.
	public var data: NSURL!
	/// When present, contains the ID of an external attachment that can be retrieved in a separate messages.attachments.get request. When not present, the entire content of the message part body is contained in the data field.
	public var attachmentId: String!
	
	public required init?(_ map: Map) {

	}

	public func mapping(map: Map) {
		size <- map["size"]
		data <- (map["data"], URLTransform())
		attachmentId <- map["attachmentId"]
	}
}

