cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.0.12"
  sha256 arm:          "3d770c76ae0e88f7fa46e9b77fa70fc6195a3b65ac2063b869e310c4fcaacea9",
         x86_64:       "994931726b5151a3ca04668030a88fd09ca166640d474d6dd3053c02b7f034c1",
         arm64_linux:  "2ab5e9d37956a805eb2a2d707d73668b1ee5623c26d9806db0c9d1e00e533f1f",
         x86_64_linux: "8313e3ee1a56aae2f74883c76024ad9ba354be679508c7ae47cd802e13e76a16"

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
