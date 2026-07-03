cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.2.6"
  sha256 arm:          "459598cb5ce72a31ae93329d62fcd8ef311f86e256fc3a4b96e4c8eb954d12b0",
         x86_64:       "c5238018932e70e0827ee5049ce02e3eda6426a08a107b29c4fc9a7685c7c656",
         arm64_linux:  "09b21edbe063422da86f11ef08b6a39cc87270296377dec8106e1e2a17342666",
         x86_64_linux: "fcfa0e9bbd6c564462b0907996e4c4c3c5b96f0c1be2fa774a0c5c7b147a2f82"

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
