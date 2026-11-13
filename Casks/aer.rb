cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.6.10"
  sha256 arm:          "d40e70d19ca62208733fee2db0bfb1486d934daaa0e67c1fed68060e7b147145",
         x86_64:       "a952248fa9b15675b5ceddf94167d194f361dbdc6ba67b4db5ea7328103bc57c",
         arm64_linux:  "1621cb5ee3fdf59be67f2562a3454b8880d349de88e921c0bcc35c5cd88d7165",
         x86_64_linux: "5c3f152028f87610f49cee6d4b53981fa59c3eec43549500aba6d697ed8e93cf"

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
