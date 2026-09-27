cask "batchforce" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.12.0"
  sha256 arm:          "faf2e9e245baa8c8a6f7b23ceca762f03cc184368c51f7c79396be50514d30ba",
         x86_64:       "dedf41d19f30e99e598383e6f969cf7daaa69b0e529178817c81db7babc9e265",
         arm64_linux:  "45eb46d31520fd7369f99081ce5fc4a8d11c0e22f88054e6571d185fa2425a03",
         x86_64_linux: "03fd1ceeea77269580c481ab5ffcbbc19999f5b553bb4fd6fb6770ead8290b9a"

  url "https://github.com/octoberswimmer/batchforce/releases/download/v#{version}/batchforce_#{os}_#{arch}_v#{version}.zip"
  name "batchforce"
  desc "Make bulk updates in Salesforce using the Bulk API"
  homepage "https://www.octoberswimmer.com/tools/batchforce/"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "batchforce"
end
