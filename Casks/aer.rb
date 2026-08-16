cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.2.34"
  sha256 arm:          "3db00fb69b1135a327e89af440c81ac913e1bd3967fe89c3a82cf9e666f6e02e",
         x86_64:       "ff2329f878792f514a20d64b59d7c238615d65e67f67b4a7608f43402644ade9",
         arm64_linux:  "bbe3f326c054250b58f23cbd8e55c96fb3d1d33467413df62b6171ae949162a4",
         x86_64_linux: "445afdebe0ea2b0a68881a25d18659a093546a10538b402cdd96ab81b8871ef0"

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
