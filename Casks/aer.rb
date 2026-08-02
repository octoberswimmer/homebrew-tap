cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.2.29"
  sha256 arm:          "d4b54d9291b04fbe06409d417ea07f3e29bdfccbc0917bed277b3d83707cd110",
         x86_64:       "457026680a6811f4f374e100f0b49ebef14f3052cc2ed0e5599d0ff33317b93b",
         arm64_linux:  "6a5fe557294d2dca7cd89c8f3cc9404fe04cf3f04d61d2777fd09df4b428a9ec",
         x86_64_linux: "7fa7ae192fa1ec2f0f0d9b474c9ea58801a396bb4a1dd74458b12afd76c8c533"

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
