cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.0.0"
  sha256 arm:          "7ac417b4a2bace07085d18553de95b212f4317e91945ba6fec6d5d68f6e4d878",
         x86_64:       "96dc6f5c94fbe16ad47140d7c2ada9630e531c44cefb79024953961663643468",
         arm64_linux:  "ba8ae49e9c0a1d41a0ee504c65b6e7fedec36a088545998fc1c62b2eadb1acad",
         x86_64_linux: "8bdcc4cabf62a37a695eee6ecba8114445433b2eeffea079cd368a03e3a36fdc"

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
