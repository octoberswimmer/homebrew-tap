cask "apexfmt" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.68.0"
  sha256 arm:          "dfab32bdaf31769030a2b8653e06dfba4546d8e13b825c1e2d02ad8fdfff2f52",
         x86_64:       "f5d572aa4ff2c566b7727270cf7f584c91db96fd46128435c93b4bd14e2b2e42",
         arm64_linux:  "0405594bc0764301fc769a373c82a708cfb53409f56ba07599f0484d1ca50ca2",
         x86_64_linux: "580c81e3b88ea4a1919b5c06d83f03cae3671a72bb85a42ff405e030d042d235"

  url "https://github.com/octoberswimmer/apexfmt/releases/download/v#{version}/apexfmt_#{os}_#{arch}_v#{version}.zip"
  name "apexfmt"
  desc "Format Apex code automatically"
  homepage "https://www.octoberswimmer.com/tools/apexfmt/"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "apexfmt"
end
