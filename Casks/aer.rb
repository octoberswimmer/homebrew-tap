cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.2.36"
  sha256 arm:          "213f8032f3f9595487dfec3b3f4b36e0417d048aba94c6d3f17b6a6dc4f27f49",
         x86_64:       "3b014fb4eadaaa9e28c8da86565b0dda0593721cc36c5b73a9f0ab2a7cedf94e",
         arm64_linux:  "8ca1e96e3eae97de11811fb54258301d19a872afc99d34df93bbedb5b4aa78ef",
         x86_64_linux: "5f8fc8024b7cd291bc39a60d9e17f5d905b3e4476047dc1a461db40cfba8bb3a"

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
