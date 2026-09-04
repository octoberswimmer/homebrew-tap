cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.4.1"
  sha256 arm:          "0214a7a4963f12da8f00ee69c08c3f6c8e8ae7545a3c5012ca08aeb5b3d9abb8",
         x86_64:       "77451097237ffdb478240ffa35b2490541d1d913e55e5ba84af11c5174abccf6",
         arm64_linux:  "88e928e24682c9812e7bade196ae678bb79282d0cb1bc472077aeb588d3be983",
         x86_64_linux: "db148102f8106785668e5a52d5107641167beac1e6ea49302d48b4a31f643247"

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
