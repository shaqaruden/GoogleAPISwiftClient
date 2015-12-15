//
//  Gmail.swift
//  GoogleAPISwiftClient
//
//  Created by Matthew Wyskiel on 12/15/15.
//  Copyright © 2015 Matthew Wyskiel. All rights reserved.
//

import Foundation
import ObjectMapper

public class Gmail: GoogleService {
	var apiNameInURL: String = "gmail"
	var apiVersionString: String = "v1"

	/// OAuth 2.0 token for the current user.
	public var accessToken: String? {
		didSet {
			GoogleServiceFetcher.sharedInstance.accessToken = accessToken
		}
	}
	/// API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
	public var apiKey: String? {
		didSet {
			GoogleServiceFetcher.sharedInstance.apiKey = apiKey
		}
	}
	public static let sharedInstance = Gmail()
	private init() {

	}

	/// IP address of the site where the request originates. Use this if you want to enforce per-user limits.
	public var userIp: String!
	/// Returns response with indentations and line breaks.
	public var prettyPrint: Bool = true
	/// Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
	public var quotaUser: String!
	/// Selector specifying which fields to include in a partial response.
	public var fields: String!
	/// Data format for the response.
	public var alt: GmailAlt = .Json
	/// API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
	public var key: String!
	/// OAuth 2.0 token for the current user.
	public var oauthToken: String!
	
	public func watchUsers(watchRequest watchRequest: GmailWatchRequest, userId: String = Optional("\"me\""), completionHandler: (watchResponse: GmailWatchResponse?, error: ErrorType?) -> ()) {
		let queryParams = setUpQueryParams()
		GoogleServiceFetcher.sharedInstance.performRequest(.POST, serviceName: apiNameInURL, apiVersion: apiVersionString, endpoint: "\(userId)/watch", queryParams: queryParams, postBody: Mapper<GmailWatchRequest>().toJSON(watchRequest)) { (JSON, error) -> () in
			if error != nil {
				completionHandler(watchResponse: nil, error: error)
			} else if JSON != nil {
				let watchResponse = Mapper<GmailWatchResponse>().map(JSON)
				completionHandler(watchResponse: watchResponse, error: nil)
			}
		}
	}

	public func stopUsers(userId userId: String = Optional("\"me\""), completionHandler: (success: Bool?, error: ErrorType?) -> ()) {
		let queryParams = setUpQueryParams()
		GoogleServiceFetcher.sharedInstance.performRequest(.POST, serviceName: apiNameInURL, apiVersion: apiVersionString, endpoint: "\(userId)/stop", queryParams: queryParams) { (JSON, error) -> () in
			if error != nil {
				completionHandler(success: false, error: error)
			} else {
				completionHandler(success: true, error: nil)
			}
		}
	}

	public func getProfileUsers(userId userId: String = Optional("\"me\""), completionHandler: (profile: GmailProfile?, error: ErrorType?) -> ()) {
		let queryParams = setUpQueryParams()
		GoogleServiceFetcher.sharedInstance.performRequest(serviceName: apiNameInURL, apiVersion: apiVersionString, endpoint: "\(userId)/profile", queryParams: queryParams) { (JSON, error) -> () in
			if error != nil {
				completionHandler(profile: nil, error: error)
			} else if JSON != nil {
				let profile = Mapper<GmailProfile>().map(JSON)
				completionHandler(profile: profile, error: nil)
			}
		}
	}

	func setUpQueryParams() -> [String: String] {
		var queryParams = [String: String]()
		if let userIp = userIp {
			queryParams.updateValue(userIp, forKey: "userIp")
		}
		
		queryParams.updateValue(prettyPrint.toJSONString(), forKey: "prettyPrint")
		if let quotaUser = quotaUser {
			queryParams.updateValue(quotaUser, forKey: "quotaUser")
		}
		if let fields = fields {
			queryParams.updateValue(fields, forKey: "fields")
		}
		
		queryParams.updateValue(alt.rawValue, forKey: "alt")
		if let key = key {
			queryParams.updateValue(key, forKey: "key")
		}
		if let oauthToken = oauthToken {
			queryParams.updateValue(oauthToken, forKey: "oauthToken")
		}
		return queryParams
	}
}

public enum GmailOAuthScopes: String {
	case Insert = "https://www.googleapis.com/auth/gmail.insert"
	case Modify = "https://www.googleapis.com/auth/gmail.modify"
	case Labels = "https://www.googleapis.com/auth/gmail.labels"
	case Compose = "https://www.googleapis.com/auth/gmail.compose"
	case Readonly = "https://www.googleapis.com/auth/gmail.readonly"
	case  = "https://mail.google.com/"
	case Send = "https://www.googleapis.com/auth/gmail.send"
}

public enum GmailAlt: String {
	case Json = "json"
}

