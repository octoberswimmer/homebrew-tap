cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.2.5"
  sha256 arm:          "f3e83d73e7a06de3a095fbea9a127c3119a728ffdef7f51378bfe60190b2d467",
         x86_64:       "44b6858498436bfc85cf56b5aa38b2b1e2aa98dd769640ecb09fb373383eba54",
         arm64_linux:  "1f2838ff12bef5cd65a8c7e217c3253c314f2da54a553f1e092907c65908bdac",
         x86_64_linux: "dda46082e9c2b9af07e56d562b31a9172c06aa13b393ca7dab7c09829e1c94b0"

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
