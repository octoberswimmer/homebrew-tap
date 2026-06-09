cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.0.10"
  sha256 arm:          "4f86589b57b4f019bc11a6f01b5cacfbd15d254c5398480e3570d0b0949e1b96",
         x86_64:       "bad24e8594176a3f5f6fd10d1e5eb913299a331a21835f008df24c55b7786233",
         arm64_linux:  "6b83c556bc50a07935ed218165566bebc226a7c91e0468612776a7b160407ee8",
         x86_64_linux: "650c9b0c6595ed015c5980a447b88517ffd3bc4b76700b2d9481c07d6251e968"

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
