cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.2.27"
  sha256 arm:          "0e5592943767957e9743bcbe71032cb0e7f1c51998e190c2f8459afee47704b7",
         x86_64:       "891c052ced51ea90e6953293cfd159c4e0187e11061e305819b4c47e01a73099",
         arm64_linux:  "7df2fa5253b4bfff1235e0bc2fc8c7e2914b6d82d609ffff23eaab113761b2e4",
         x86_64_linux: "a8c04a786896c30d55be846266f4af5508993d91f83766327531489726d8dd3a"

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
