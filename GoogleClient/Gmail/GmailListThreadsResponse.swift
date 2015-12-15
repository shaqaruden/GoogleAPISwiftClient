//
//  GmailListThreadsResponse.swift
//  GoogleAPISwiftClient
//
//  Created by Matthew Wyskiel on 12/15/15.
//  Copyright © 2015 Matthew Wyskiel. All rights reserved.
//

import Foundation
import ObjectMapper

public class GmailListThreadsResponse: GoogleObject {
	/// Page token to retrieve the next page of results in the list.
	public var nextPageToken: String!
	/// List of threads.
	public var threads: [GmailThread]!
	/// Estimated total number of results.
	public var resultSizeEstimate: UInt!
	
	public required init?(_ map: Map) {

	}

	public func mapping(map: Map) {
		nextPageToken <- map["nextPageToken"]
		threads <- map["threads"]
		resultSizeEstimate <- map["resultSizeEstimate"]
	}
}

