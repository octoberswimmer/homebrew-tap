cask "ufo" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.0.1"
  sha256 arm:          "13b335c5b8fa3accf114cf1af4741b662e95bed899909095f9255b258174cd61",
         x86_64:       "983341bfd46654a60dcd2e793effc870f5d519a12f1fa23f70292615200ec0d1",
         arm64_linux:  "9689f6c405a5506153cbbb8826b50b221f0d11d4db201903fd764c94cb6273e9",
         x86_64_linux: "45fc56bd119b720b59bdefe43f37cc0ad1c0f7af2e1212338dfd147c07ffb13a"

  url "https://github.com/octoberswimmer/ufo/releases/download/v#{version}/ufo_#{os}_#{arch}_v#{version}.zip"
  name "ufo"
  desc "Render HTML and CSS to PDF with a Go port of Flying Saucer"
  homepage "https://github.com/octoberswimmer/ufo"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "ufo"
end
