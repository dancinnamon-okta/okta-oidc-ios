/*
* Copyright (c) 2017-Present, Okta, Inc. and/or its affiliates. All rights reserved.
* The Okta software accompanied by this notice is provided pursuant to the Apache License, Version 2.0 (the "License.")
*
* You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0.
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
* WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
*
* See the License for the specific language governing permissions and limitations under the License.
*/

import Foundation

public protocol OktaOidcBrowserProtocolIOS {
    func signInWithBrowser(from presenter: UIViewController,
                           callback: @escaping ((OktaOidcStateManager?, Error?) -> Void))
    func signOutOfOkta(_ authStateManager: OktaOidcStateManager,
                       from presenter: UIViewController,
                       callback: @escaping ((Error?) -> Void))
    func signOut(authStateManager: OktaOidcStateManager,
                 from presenter: UIViewController,
                 progressHandler: @escaping ((OktaSignOutOptions) -> Void),
                 completionHandler: @escaping ((Bool, OktaSignOutOptions) -> Void))
    func signOut(with options: OktaSignOutOptions,
                 authStateManager: OktaOidcStateManager,
                 from presenter: UIViewController,
                 progressHandler: @escaping ((OktaSignOutOptions) -> Void),
                 completionHandler: @escaping ((Bool, OktaSignOutOptions) -> Void))
    func cancelBrowserSession(completion: (()-> Void)?)
    @available(iOS, obsoleted: 11.0, message: "Unused on iOS 11+")
    func resume(_ url: URL, options: [UIApplication.OpenURLOptionsKey : Any]) -> Bool
}
