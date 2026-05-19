cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.0.0-beta.5"
  sha256 arm:          "0206fa28577f23d34682df0974faf10dae1f028ecfdd795c766979e9f37627bb",
         x86_64:       "47e7fb04055993ec5f3b44e4313979ce3358bce881e751497fc5253fad1afed3",
         arm64_linux:  "73aac15abd2ae6e471005eaa21bc18b4360537e177d788ce309c1139e87f1c8f",
         x86_64_linux: "133d2d51f007244aed1ed94151f3750f59ed892ae982123f884c7ab47e584938"

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
