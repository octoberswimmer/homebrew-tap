cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.0.4"
  sha256 arm:          "e00430712c05b2063abf97058872ce4b236bf5b07f3d56fbf5dc23d531ee75a6",
         x86_64:       "3ea7f6e94ab1bc1421fe07954052da6ce6796871f895de0235f978a52f2d87da",
         arm64_linux:  "a4e3474bf67413ca380fe359845fe847a27b62ff2e9db80788fcc51865bf3c4b",
         x86_64_linux: "351bfacd310bec25345f5090a1174eee2a984eb520c6af44d5eb4ad012a4fda3"

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
