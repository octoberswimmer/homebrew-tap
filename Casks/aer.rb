cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.2.4"
  sha256 arm:          "9ac1b621c2e34e743af63f4f8870159bff38b991b7235b962e0dcc6aed801255",
         x86_64:       "1f4e3b0821b0e818e0aeda67c01fb7a8aa0414a3d03bda419236bb1eb572fe91",
         arm64_linux:  "a5971ecce2ff5fe4b06cbb0b97763f64e29e7c02fcedf9aeda2dcb0e00c60224",
         x86_64_linux: "84cc0211ae293f7356489f9b5a0b39eb08158c7fe01950ca48432c9cf40f15d9"

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
