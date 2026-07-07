// It is not 100% clear why a plain import of "AuthenticationServices" does not work here,
// but in some cases/configuration it appears to fail.
#if canImport(_AuthenticationServices_SwiftUI)
import _AuthenticationServices_SwiftUI
import SwiftUI


@available(macOS 13.3, iOS 16.4, macCatalyst 16.4, watchOS 9.4, tvOS 16.4, *)
extension WebAuthenticationSession {
	public func userAuthenticator(preferredBrowserSession: BrowserSession? = nil) -> Authenticator.UserAuthenticator {
		return {
			try await self.authenticate(using: $0, callbackURLScheme: $1, preferredBrowserSession: preferredBrowserSession)
		}
	}
}

#endif
