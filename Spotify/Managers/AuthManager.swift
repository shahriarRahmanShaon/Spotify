//
//  Auth.swift
//  Spotify
//
//  Created by sergio shaon on 23/6/22.
//

import Foundation

final class AuthManager{
    static let shared = AuthManager()
    private init(){}
    
    struct Constants{
        static let clientId = "df06fa9ecdd042c9be29e566dbaa9dc2"
        static let clientSecret = "5ed9c7523ef94337b615e314df987cfe"
    }
    
    public var signInUrl: URL?{
        let base = "https://accounts.spotify.com/authorize"
        let redirectUrl = "https://github.com/shahriarRahmanShaon"
        let scope = "user-read-private"
        let string = "\(base)?response_type=token&client_id=\(Constants.clientId)&scope=\(scope)&redirect_uri=\(redirectUrl)"
        return URL(string: string)
    }
    var isSignedIn: Bool{
        return false
    }
    
    private var accessToken: String?{
        return nil
    }
    
    private var refreshToken: String?{
        return nil
    }
    
    private var tokenExpirationDate: String?{
        return nil
    }
    
    private var shouldRefreshToken: String?{
        return nil
    }
}
