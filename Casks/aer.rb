cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.2.12"
  sha256 arm:          "2092a4e5cc264d16f0a8fe7502a592af2b24b5e48fc759c806877f27d34bc3fa",
         x86_64:       "959311b12445ee169efe06b9fa5d6759bba898c43c3241fafaea8203f754c819",
         arm64_linux:  "7f293b7e864d9e400d15dd93da213fd47d954ede72f223d9be11d32769878337",
         x86_64_linux: "1a05e20af7a9e9c1865036757a0a7db55314093923e8261b055aa5c5272566f0"

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
