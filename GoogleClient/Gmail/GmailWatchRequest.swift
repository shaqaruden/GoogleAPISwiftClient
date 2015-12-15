//
//  GmailWatchRequest.swift
//  GoogleAPISwiftClient
//
//  Created by Matthew Wyskiel on 12/15/15.
//  Copyright © 2015 Matthew Wyskiel. All rights reserved.
//

import Foundation
import ObjectMapper

public class GmailWatchRequest: GoogleObject {
	/// Filtering behavior of labelIds list specified.
	public var labelFilterAction: GmailWatchRequestLabelFilterAction!
	/// List of label_ids to restrict notifications about. By default, if unspecified, all changes are pushed out. If specified then dictates which labels are required for a push notification to be generated.
	public var labelIds: [String]!
	/// A fully qualified Google Cloud Pub/Sub API topic name to publish the events to. This topic name **must** already exist in Cloud Pub/Sub and you **must** have already granted gmail "publish" permission on it. For example, "projects/my-project-identifier/topics/my-topic-name" (using the new Cloud Pub/Sub "v1beta2" topic naming format).

Note that the "my-project-identifier" portion must exactly match your Google developer project id (the one executing this watch request).
	public var topicName: String!
	
	public required init?(_ map: Map) {

	}

	public func mapping(map: Map) {
		labelFilterAction <- map["labelFilterAction"]
		labelIds <- map["labelIds"]
		topicName <- map["topicName"]
	}
}

