cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.2.35"
  sha256 arm:          "e3030be6eb84c7025c221027756afa72f5a3d2023c50ea2c418bb218786c0624",
         x86_64:       "c440cb9d7e5a279430defbbc47a6e815c2169e18330e6d4da0a8b9a7130d5099",
         arm64_linux:  "aa977565e762d1c6e7c8a72712d9345da6c3cba9fc42adf4180fd137eb3b5a9d",
         x86_64_linux: "0d591012182bd9f8b4803b75a3f08e25769fcfcfb5ca0b253a0f9beea058fea0"

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
