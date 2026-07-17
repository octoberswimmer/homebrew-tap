cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.2.17"
  sha256 arm:          "b8aa876bcc3d6abb83d53be8ae232aaee2f2570fa531af49896186d4ce629025",
         x86_64:       "2d1376c83866303ec17663e42a8f779cc3397c59135dc885e466dcdbcca82896",
         arm64_linux:  "3e50e199e0b5a2fb1bead20827c0ca62c61ca8263a106495df3171d886b43654",
         x86_64_linux: "003db7a550201127db12c9cec9b25305427283427d1371b77f7e82467a630467"

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
