Pod::Spec.new do |s|
  s.name         = "microhttpd"
  s.version      = "0.9.26"
  s.summary      = "GNU libmicrohttpd is a small C library that is supposed to make it easy to run an HTTP server as part of another application."
  s.description  = <<-DESC
GNU libmicrohttpd is a small C library that is supposed to make it easy to run an HTTP server as part of another application. GNU GNU Libmicrohttpd is free software and part of the GNU project. Key features that distinguish GNU Libmicrohttpd from other projects are:

C library: fast and small
API is simple, expressive and fully reentrant
Implementation is HTTP 1.1 compliant
HTTP server can listen on multiple ports
Four different threading models (select, poll, pthread, thread pool)
Supported platforms include GNU/Linux, FreeBSD, OpenBSD, NetBSD, Android, OS X, W32, Symbian and z/OS
Support for IPv6
Support for SHOUTcast
Support for incremental processing of POST data (optional)
Support for basic and digest authentication (optional)
Support for SSL3 and TLS (requires libgcrypt and libgnutls, optional)
Binary is only about 32k (without TLS/SSL support and other optional features)
GNU Libmicrohttpd was started because the author needed an easy way to add a concurrent HTTP server to other projects. Existing alternatives were either non-free, not reentrant, standalone, of terrible code quality or a combination thereof. Do not use GNU Libmicrohttpd if you are looking for a standalone HTTP server, there are many other projects out there that provide that kind of functionality already. However, if you want to be able to serve simple WWW pages from within your C or C++ application, check it out.
GNU libmicrohttpd is a GNU package. Our official GNU website can be found at http://www.gnu.org/software/libmicrohttpd/.
                   DESC
  s.homepage     = "https://www.gnu.org/software/libmicrohttpd/"
  s.screenshots  = 
  s.license      = 'LGPL'
  s.author       = { "waTeim" => "truthset@gmail.com" }
  s.source       = { :git => "https://github.com/waTeim/microhttpd.git", :tag => s.version.to_s }

  s.platform     = :osx, '10.6'
  s.requires_arc = false
  s.vendored_libraries = 'lib/*.a'
  s.source_files = 'include/*.h'
  s.public_header_files = 'include/*.h'
  s.preserve_paths = 'include'
end
