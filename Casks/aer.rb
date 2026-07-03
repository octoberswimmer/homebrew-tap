cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.2.7"
  sha256 arm:          "0461c7102860f0ce2c4fa6a6ef7ea61d10794b523a2285656709c9dd13ef5ec7",
         x86_64:       "93300060bad19714b67bb0b1d1c4d22e11fbf09fa4c76cc3a3fe53803687e4cd",
         arm64_linux:  "81c019a29ecf02c6311a4830725520cf0b1c53a0f5780696f60c49513f82a0ca",
         x86_64_linux: "233f21b22d1ae6abb887e3e56760f014b2fb66327b854138ab533092ad1d6da8"

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
