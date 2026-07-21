cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.2.22"
  sha256 arm:          "41bd4bdae78ddd39e90b8b59250542ef8d8d791ca69368fb05a48eb8cefe25d4",
         x86_64:       "8c81e34cf264510a972e3d1d77b47c44137ba3a8cf45227eafdab2f25620544d",
         arm64_linux:  "176cd0ee8634f3772055d2a799237ee278e73d91ed94c78475b02a43cc5c447a",
         x86_64_linux: "fe92229c1d71e40a72021181a97494f9436bd42efc39a9ae67f5b330b1897ece"

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
