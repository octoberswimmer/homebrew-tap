cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.4.16"
  sha256 arm:          "f058248e3dc7d3b8ee4b816c2126836e718bed21cb007d39b537f543607c8e64",
         x86_64:       "9cca722a864c39d9495f2ebf788fd218642634425cfb95f02a75785061d74c1e",
         arm64_linux:  "900114cd572c24c4ca3d01541b21dc5db085d5ae1bdb54e636e6ce1ba837960b",
         x86_64_linux: "fbcc29219247fc2fffe00519739ae8d7a4d4daaadc94cf78f6a33c9bfa0f8298"

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
