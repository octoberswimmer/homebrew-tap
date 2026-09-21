cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.4.12"
  sha256 arm:          "906704306585bdd67205d27ea0327ac8f02692f27d16506ddaaf53bd728055ed",
         x86_64:       "80af4c1ef368a3d46343725d22c6d9ce29bd15b4372ebca6311201a458f2e406",
         arm64_linux:  "357b40732d4e033721632b79195d498657af0a837cbe9095b6ad29855921bce7",
         x86_64_linux: "320ad134cee52a2890a5c8e6a8b66d711e93a2bff5db56ea88ecb5475450aa0d"

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
