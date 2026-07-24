cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.2.25"
  sha256 arm:          "20a0425cebb86d31142a33b0cc9af884c9e0c81d6426e7663d7ed6fbd99588cd",
         x86_64:       "c355a7e403e14b859a53c633a56c384cec6dcb3fcde453ed66dcfcb4a7d2efba",
         arm64_linux:  "58d1774d808eaee7c0f1bd16802c0ab8ec09cc0bbde4b3871051e4bf82daabf0",
         x86_64_linux: "18a2854b0c0dfa5767a6e3f16bef85134c3b0ec957158958ee4b89cc4d9477cb"

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
