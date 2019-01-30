# ios-jwt-authentication-example
Simple app consuming a aspnet core web api with jwt authentication

#### What are we using here?

* Swift 4.0
* Cocoapods
  * Alamofire
  * Swiftyjson
---


#### Project structure

Folders:
* Extensions: useful extensions for the app.
* Utils: currently holding our constants class.
* Services: or business objects(bo's), here we hold the logic for the app.
* ViewControllers: the app view controllers.
* Storyboards: the storyboards.
---

## IF YOU ARE TESTING WITH NO SSL CERTIFICATE

Add the following key to info.plist to allow http

<key>NSAppTransportSecurity</key>
    <dict>
        <key>NSAllowsArbitraryLoads</key>
        <true/>
        <key>NSExceptionDomains</key>
        <dict>
            <key>yourdomain.com</key>
            <dict>
                <key>NSIncludesSubdomains</key>
                <true/>
                <key>NSThirdPartyExceptionRequiresForwardSecrecy</key>
                <false/>
            </dict>
       </dict>
  </dict>
