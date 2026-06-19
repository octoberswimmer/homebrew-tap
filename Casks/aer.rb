cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.0.13"
  sha256 arm:          "302569e9d42e895e77f6af90b6ca3e71d8884ca717c207582609d0cce5a3dbe2",
         x86_64:       "1d8ac7339b2ebc2efcc9e1774c72e19a329279f89dc5fc488d9d9ebb09906919",
         arm64_linux:  "912035e3cb65163e73f8d523502945e115965a94a7fc35175c261dc995e6e2ab",
         x86_64_linux: "304ada9fd46ee255aecc67a29eea0a56c678441076620f73c205b46fbcdf5534"

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
