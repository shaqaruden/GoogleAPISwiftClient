//
//  GmailListLabelsResponse.swift
//  GoogleAPISwiftClient
//
//  Created by Matthew Wyskiel on 12/15/15.
//  Copyright © 2015 Matthew Wyskiel. All rights reserved.
//

import Foundation
import ObjectMapper

public class GmailListLabelsResponse: GoogleObject {
	/// List of labels.
	public var labels: [GmailLabel]!
	
	public required init?(_ map: Map) {

	}

	public func mapping(map: Map) {
		labels <- map["labels"]
	}
}

