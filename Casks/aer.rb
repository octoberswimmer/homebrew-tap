cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.2.30"
  sha256 arm:          "c1cc9653510951e1472a83eb4a479ed5b4b50c1558b27e3098d29a4f7aa83855",
         x86_64:       "5a2fbe1c358fd132ee2497ff4653c8b826e6e6190a07faca91696c5f5b6c2317",
         arm64_linux:  "c7cc5371a0656bb839d50fbedeaecaa1d6dee49da2f920c4eb047464540d5ea0",
         x86_64_linux: "028b630b9996180d75a12843f038dccb292929dc5a14dcd79dfe441bbd98603d"

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
