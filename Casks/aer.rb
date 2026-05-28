cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.0.2"
  sha256 arm:          "e608736419f4d544b9c021f5366673301cae102020c8fcb719e7c5b2b53afac3",
         x86_64:       "4fe39aef6a5f414b21da7fc0c3aa106b1808b719c7fc35e9e3313cd8263f7a5d",
         arm64_linux:  "f24d246232b905774e58e53c548eb00cc25bafa421bcd501050c33e618d33107",
         x86_64_linux: "df842cb07a76b87d5d06960165eef733a1b8ff0f00d9193256cb69910fb2badc"

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
