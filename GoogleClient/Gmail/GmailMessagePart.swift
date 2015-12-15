//
//  GmailMessagePart.swift
//  GoogleAPISwiftClient
//
//  Created by Matthew Wyskiel on 12/15/15.
//  Copyright © 2015 Matthew Wyskiel. All rights reserved.
//

import Foundation
import ObjectMapper

public class GmailMessagePart: GoogleObject {
	/// The MIME type of the message part.
	public var mimeType: String!
	/// The child MIME message parts of this part. This only applies to container MIME message parts, for example multipart/*. For non- container MIME message part types, such as text/plain, this field is empty. For more information, see RFC 1521.
	public var parts: [GmailMessagePart]!
	/// The immutable ID of the message part.
	public var partId: String!
	/// The message part body for this part, which may be empty for container MIME message parts.
	public var body: GmailMessagePartBody!
	/// List of headers on this message part. For the top-level message part, representing the entire message payload, it will contain the standard RFC 2822 email headers such as To, From, and Subject.
	public var headers: [GmailMessagePartHeader]!
	/// The filename of the attachment. Only present if this message part represents an attachment.
	public var filename: String!
	
	public required init?(_ map: Map) {

	}

	public func mapping(map: Map) {
		mimeType <- map["mimeType"]
		parts <- map["parts"]
		partId <- map["partId"]
		body <- map["body"]
		headers <- map["headers"]
		filename <- map["filename"]
	}
}

