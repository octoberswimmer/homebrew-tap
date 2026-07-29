cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.2.26"
  sha256 arm:          "88e814087505a531fe88466bad78fe2f4cdfeb6159022bb57db7c975ada791c0",
         x86_64:       "72c22456bdf477752e24216d193252bab8fc40d925debc7c8a615f8203f8cd28",
         arm64_linux:  "8ba623cdba774b0cd6649efc6c02d1d8cbf1119224acf76367106ec40806439b",
         x86_64_linux: "180602d991fec87aa594d21e3b45c9a045ce7f59da9f9380dc63ef2fc928ac51"

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
