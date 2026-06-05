cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.0.9"
  sha256 arm:          "2ceccf46a826f68b7ddd4d8bac37d0249da37deb73175056bbf00248fe558401",
         x86_64:       "bdf2e4f5bb451a8d69b5697a5a60681e14cf35bb21337f0e39adf31d3c58df73",
         arm64_linux:  "22c99999b84a0bc43296389046a877e0f3be84c01a99f29a0a98ee7b9202e600",
         x86_64_linux: "bf8110aa58b4ffb4547b3f19b6e590682568160e05f075fe79598867525ef044"

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
