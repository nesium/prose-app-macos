# prose-app-macos

**Prose macOS application. Built in Swift / SwiftUI.**

_Tested at Swift version: `5.5.2` and Xcode version: `13.2`._

## Architecture

The Prose macOS app consists mostly of SwiftUI views, bound to core libraries, the [client](https://github.com/prose-im/prose-core-client) and the [views](https://github.com/prose-im/prose-core-views), that are common to all platforms Prose runs on.

The app uses the core client library to connect to XMPP. It calls programmatic methods in order to interact with its internal database and the network. It binds as well to an event bus to receive network events, or update events from the store. Messages are shown in their own view, which is provided by the core views library.

This decoupling makes things extremely clean, and enables common code sharing between platforms (eg. macOS, iOS, etc.).

## Design

![Prose login screen](https://prose-im.github.io/prose-app-macos/images/app/login.jpg)

![Prose main view](https://prose-im.github.io/prose-app-macos/images/app/messaging.jpg)

_👉 The Prose macOS app reference design [can be found there](https://github.com/prose-im/prose-medley/blob/master/designs/prose-app-macos.sketch)._

## License

Licensing information can be found in the [LICENSE.md](./LICENSE.md) document.

## :fire: Report A Vulnerability

If you find a vulnerability in any Prose system, you are more than welcome to report it directly to [@valeriansaliou](https://github.com/valeriansaliou) by sending an encrypted email to [valerian@valeriansaliou.name](mailto:valerian@valeriansaliou.name). Do not report vulnerabilities in public GitHub issues, as they may be exploited by malicious people to target production systems running an unpatched version.

**:warning: You must encrypt your email using [@valeriansaliou](https://github.com/valeriansaliou) GPG public key: [:key:valeriansaliou.gpg.pub.asc](https://valeriansaliou.name/files/keys/valeriansaliou.gpg.pub.asc).**
