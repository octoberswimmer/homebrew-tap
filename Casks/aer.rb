cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.0.11"
  sha256 arm:          "ca5a0096138d397d6f9b510827f340716ad6eb8692e1862b6543eb9f78ebfb80",
         x86_64:       "d5c4f35754dbc4b35375df95fb6e25b07a0bbc983225574f4b1c91c88b9f9d5b",
         arm64_linux:  "5993377d755e93f186448cddd6f62377d43fcb698b449642def9eb9551b580e4",
         x86_64_linux: "dfe016ebd00d47615bb9d80cc6de7ff041f04ef7526c34150e84173cc6f922b9"

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
