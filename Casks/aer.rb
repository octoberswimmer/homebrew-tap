cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.2.10"
  sha256 arm:          "52abd87cde8ee4bc260f056af2438f65831ef793b95420ef875cf8e28d60c5fb",
         x86_64:       "17e8eba1ad151a55ceeecee16e1b2561562074356006498263e047f70df3f6c1",
         arm64_linux:  "ce1fb800ed20426a125c87706a97374aa25b90771aa595f2510238ca33e80c3c",
         x86_64_linux: "ddfbb5f17adcc066556387ff9ffdfadac308b048a53017bac747ae21c6b786a9"

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
