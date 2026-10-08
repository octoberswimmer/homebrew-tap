cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.4.24"
  sha256 arm:          "c34ab35ed74c7116c57debfbc3cffb7c4a3bf5cbb5c2d064f36d56844de36d88",
         x86_64:       "a79d6e8d461253bfcb8e9fb0516aa9ffff604a6263a5e07f58da1a4a630ba40e",
         arm64_linux:  "0cb550e2521a6d2193b70be90a5a254776b7362e0cfdb64ddf0dbd04b2a80820",
         x86_64_linux: "1acc23ebfb1ba21c1e896bf7abf89492b17e36bd89723c497e2a5de82c3d891e"

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
