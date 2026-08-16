cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.2.33"
  sha256 arm:          "6c0a1c32bea4ee94985393e92ad21db25e8c7908bec44ef7c120abfebbe6065d",
         x86_64:       "8ad261edfaa8e3278a4635b972918f7c895b4768aee5c3257bf1999af53ffed7",
         arm64_linux:  "d20771d29d842dea2bbc7a2ba0b5a4a1b1a1bb93b82d12c834b86d0721368590",
         x86_64_linux: "4a423f5cba71a1d7df2f1c7bdf8c00b086c846512636c85f67ab6d913caecd13"

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
