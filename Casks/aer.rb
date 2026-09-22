cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.4.13"
  sha256 arm:          "00cb81d4b572bdc31122147559bd2f68b1b41c7d074bfe88e64891da3eceb1c9",
         x86_64:       "5d98915c6e797a8f91bb5885daba82c2f402ba077ce209cdf8d5f184684b945d",
         arm64_linux:  "2772811fbd788b478a42bd9d3aed23d8a4c997c49992716726c7db108761d949",
         x86_64_linux: "e8868759c7fe6396970bf16ed76d36568c56f0cfaa7c3154a6761059deb1b797"

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
