cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.2.1"
  sha256 arm:          "b82d46ba3250a9083eae41782fe9ff0c9f614a5c165a8d30e18656ac42003c9a",
         x86_64:       "134f649c26067c914adbb7a5f42e5eb2c887533bab3c1db7458d2e54a2dbcc91",
         arm64_linux:  "8add9e8c500d2c4fecb02fa738562b402973c6250f5accefe41c5182fdcd2cc1",
         x86_64_linux: "75b0a1e9119dcb560f1048781b9de6641b5fa19ebbf2526c3d684857f1b3a840"

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
