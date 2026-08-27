cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.2.40"
  sha256 arm:          "b3f3722faf7d16061e72419960141f8b06a381dc1c612bf022cc2bf9d1cafb4b",
         x86_64:       "58ac76210d60f219ef0faa21d630a4d8509f88efeb0bb5fef4404b26e98eb2ec",
         arm64_linux:  "3a2537b69c17d4df95476270a9c1545de2a38db1b1a177f4f750cce2610c3dfa",
         x86_64_linux: "5e76f8d2695c28fa8a5dc68e4d2ec617cc5421ebc4e5c35eb3dca0dc09bcf693"

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
