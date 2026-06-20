cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.0.15"
  sha256 arm:          "f4aedc32b32961d700784e65c0b45898c1ee1357b5380140ae4bfe67a9babe0c",
         x86_64:       "f5dbb33f041ac07dcc3f3d8588d5edd6cecf5153fd6a0e914156f6bce8578092",
         arm64_linux:  "a21566c0e2e7e8018a7df982801e452ccb792f3c79d12d1909832c6304dd6dea",
         x86_64_linux: "0f73947054c977502467657171a7aee13d1a40f663aae3bc257f43aa36d50597"

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
