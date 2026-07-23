cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.2.23"
  sha256 arm:          "a03c1c59dc84faef43b3d7c45a6f57878a66295f3a4f12c3a639da7d01545066",
         x86_64:       "968343dd89d735a6ee3914b47b13836c9338c7673c08072157056ae258d72e6d",
         arm64_linux:  "0a77199b812574682811d07d943b44caffa25e80ebfc0df7c63473f9e3f56d4d",
         x86_64_linux: "e6ea7f39c88055e906222c75ec692f44bd6fa60a119ac74783b7aa520b8d7c12"

  url "https://github.com/octoberswimmer/aer-dist/releases/download/v#{version}/aer_#{os}_#{arch}_v#{version}.zip",
      verified: "github.com/octoberswimmer/aer-dist/"
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
