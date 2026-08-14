cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.2.31"
  sha256 arm:          "6da0ffebfaf0f7b71ca9fb90ab1adaf92cc2687f6b8b9ad177af5deb0453b1ff",
         x86_64:       "7da962209b1dc4174ee61b1d1fa5f01c054a85d59a6c0c65368182eb32377f98",
         arm64_linux:  "a2919802601fd8fac0a55948ea2a1920784108e0e81fbae350d31d20cddb248a",
         x86_64_linux: "f96a4f5e2f4ec3b0d27c13a89dd49995e24c38fa800dc1c49ead8b625d94b165"

  url "https://github.com/octoberswimmer/aer-dist/releases/download/v#{version}/aer_#{os}_#{arch}_v#{version}.zip",
      verified: "github.com/octoberswimmer/aer-dist/"
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
