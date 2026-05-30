cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.0.5"
  sha256 arm:          "35dffb91391f30ca9eabdf7f350ff71f374e04f3617ac537d03e02ac660c3401",
         x86_64:       "2b7be9091a3acfa2a74c72a2a1b886a9e813a14384eeec496e61309a2d08fe9f",
         arm64_linux:  "38f4c8c3c1ca8c324f108f0c93c08f87c185f28464cc9f2447d7bdf40fea7e9a",
         x86_64_linux: "d487106a3092c596fa89edaf74b30554650e864b89354866bdfd058c399fc537"

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
