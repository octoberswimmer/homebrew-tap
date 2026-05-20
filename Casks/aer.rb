cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.0.0-beta.6"
  sha256 arm:          "bf2123821955246d6b268bb63ecbe322353fab36ac799870a5c2264bf9af083e",
         x86_64:       "e1a95623e791e08300b7c7cfbed0c0363d3fc42107945a99af4eb96d2fc97f51",
         arm64_linux:  "2d28a5e4cc33bdbcb027456ea1b534ad87981ea79a0b90e9924456d6dc1a601b",
         x86_64_linux: "62977b0af97777b04c81cf8fe7eceae05124a71ca6ba488d9aed5f28e18974a6"

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
