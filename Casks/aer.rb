cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.2.9"
  sha256 arm:          "a9209431f6464571a7a511b0d8e241e9b699f7492aa3e36bfec554bf9fa74689",
         x86_64:       "7a3dd018512c4a4d5e5ecec74e3533463f7e65cc8c5c66d8303f70093be02175",
         arm64_linux:  "75d4b46d1b1ef732234aa92d6ae1abf07db24ed20a99c20052dda06599b8e94d",
         x86_64_linux: "69c848aa88433f112a7212d2c5413d715da7c1cb774574c4dcd8241a8390daef"

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
