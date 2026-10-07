cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.4.22"
  sha256 arm:          "076ca39cedc9a0501f98d246dd58e5d931b97fbd3af27d9e849714ecae389909",
         x86_64:       "82bbefc1bc8a0acda645a7f454c0d406d258e3e30732d2c3fb4d9fcbeb1a76c5",
         arm64_linux:  "1444bc9974bf2b5d96121459e5180fa40138db2834b54a0b9da963eb81798bc9",
         x86_64_linux: "d5e726f8264f5fece3ef81dd60d9a992f3a3e16b4a2d3706853d56b7e82dbb3e"

  url "https://github.com/octoberswimmer/aer-dist/releases/download/v#{version}/aer_#{os}_#{arch}_v#{version}.zip"
  name "aer"
  desc "Apex Execution Runtime"
  homepage "https://www.octoberswimmer.com/tools/aer/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  binary "aer"
end
