cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.4.23"
  sha256 arm:          "f4bbef233df47380ca0f9c0b237784a0513c1eec0baecb7f767146ca657e40f4",
         x86_64:       "b66019d0bf42a6e8f4fa1ec28e0e5fc75dc7e97112bfca8e54ede6be1b17630c",
         arm64_linux:  "0792f15b05c5b00dc677983e205347e7d0422fbe8f8f13d282b82bcb9019d4c5",
         x86_64_linux: "a32f80010f97307e259a43913027476de4b14fd1560441f3c802aedfb7b1be6b"

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
