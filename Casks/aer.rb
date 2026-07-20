cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.2.20"
  sha256 arm:          "3191aa0b243db1e413d173087181209b8f0ef3f3bbbb26ac69cf34b65daa7918",
         x86_64:       "007c69ec827dd87da08105f8be02ba9679c0ebf505cf954806ba87d73ad12615",
         arm64_linux:  "d566d055fe573d6a7c2b02246966b38e35417befaebc2150dad561c376cc5d99",
         x86_64_linux: "3f230af71253dc2dce9377a6b778aa48226e10ff92f7c7532edf5c8d694cdb74"

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
