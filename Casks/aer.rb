cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.4.15"
  sha256 arm:          "3fc7b9547335d4831b6aa16be48fadd8f02264a54546c50c2bdae0626f75e783",
         x86_64:       "c33a08a8dde963875bfffdd5fa57e939cadc3b788be6e709f8f4218761ba32ac",
         arm64_linux:  "e1e1f8c3bba9bac8b08357b09f1ca6ebc823ae99f1c07764ce184208ea38eb96",
         x86_64_linux: "c2b3089fb2a0354d26359c568292d7fa4b65126ac2271670bbc54e64eeb6625f"

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
