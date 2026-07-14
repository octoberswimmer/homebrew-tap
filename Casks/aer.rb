cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.2.15"
  sha256 arm:          "118383390e199c71521fc5a7b5003972f34b81110caac4d1d11889a3e1a89ab5",
         x86_64:       "e368becf98b3884ae9b6d7d6e2770cc4d19484ebfcf5632d8f2a6bc12473e03c",
         arm64_linux:  "e9e2f5bedaf59627a727b50adb249a1245c06e35ca6bd337d66b602fb2ba9e6e",
         x86_64_linux: "0e826a455901457e949c21d67856bf0b2ccac213c23c6be93d23c4933a601f9d"

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
