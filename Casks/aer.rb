cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.2.21"
  sha256 arm:          "897903849e1b009e035533d5c59d6f96ab454156a0c580ec09356662f6d16927",
         x86_64:       "f18e66d490caa9ca8bdef221788cd1736f469b05dd4722c2e1d4b2773d1d3f04",
         arm64_linux:  "63e3e881b4bb0ec82ee7162a7dd1d083c22ca243f01db067e03d5230a3a131ec",
         x86_64_linux: "7fd1c3b0437410f4edbae7bbda5f8e46d1c7ebe18d58fc284e141b3e86d80493"

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
