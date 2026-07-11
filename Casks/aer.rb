cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.2.13"
  sha256 arm:          "7718df93ba2899c15ef50724d0620d68c442d2b088f391163b6907c772fa3128",
         x86_64:       "ad7f142174f629daa75fbf184f14b36bd7a6e2d40e72b187e5da5ce256640c90",
         arm64_linux:  "4813c56e52491df68238dbff864f340d9ef7a69b5e1db86b8464d3a146d0e007",
         x86_64_linux: "fa8e6043b4fee3b3d84992f731d0419ad1fedf501b7bec36a9788502ed4a8bcc"

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
