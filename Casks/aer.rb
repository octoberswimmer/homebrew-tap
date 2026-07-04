cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.2.8"
  sha256 arm:          "d7702fd9e362e341a0bfaf0e49be4fabd9e995ce1566eb5cce3b758a00bb5a0b",
         x86_64:       "ad91e897abc58d8852851beeec84c19d0950a573741d11b1a1bacd2e2c076d1d",
         arm64_linux:  "90afa1417ffac0140c2943b3f0fda7ad1de41933eeb5fb13fd0cff77aa77f04a",
         x86_64_linux: "36aba46f7ef85341d25af1e2165ab6dbc109fa42b2f9ad61afc644d1e6301e36"

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
