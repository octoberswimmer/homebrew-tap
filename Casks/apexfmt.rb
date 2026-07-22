cask "apexfmt" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.59.0"
  sha256 arm:          "850a509ff0d728b47331c403fd247076102fae70874283ad0a3d2419cc1721e9",
         x86_64:       "935c1bb899f1c52c125fc11dd4ba15f52a389f1bccdc4245817f6ee7c1bc9430",
         arm64_linux:  "157e27401314147ad8e02c618597fe47561d7e3c2a438e846ef1545e567c877c",
         x86_64_linux: "d709e309c2d92c3d21615ebbf692bea90341f98aba7182ca5877eb85067b37e0"

  url "https://github.com/octoberswimmer/apexfmt/releases/download/v#{version}/apexfmt_#{os}_#{arch}_v#{version}.zip",
      verified: "github.com/octoberswimmer/apexfmt/"
  name "apexfmt"
  desc "Format Apex code automatically"
  homepage "https://www.octoberswimmer.com/tools/apexfmt/"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "apexfmt"
end
