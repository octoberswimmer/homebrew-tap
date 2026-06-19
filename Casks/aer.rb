cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.0.14"
  sha256 arm:          "3db31228398755d859d488efdd6a85e680f3a4f2995448b4ab7a637a85ffdf91",
         x86_64:       "551c5b9087824e870458f022a08d7e4d3271dcfc21cdea57f42df2bbb229b08e",
         arm64_linux:  "7e8e5a682e833f8e0229b2d6d488273b9563e2f4f80889b0bac2ba67e2ee80f4",
         x86_64_linux: "f11d4585e5b5f3c6a5ad093b02a3ab80ddfa208632a542d122c9961d9b3830c2"

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
