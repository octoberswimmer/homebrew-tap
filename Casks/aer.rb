cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.6.26"
  sha256 arm:          "cc4cfd55112d67670cbfc1820337c56abe40987b4fab3cb3fff51fa52b6c7e09",
         x86_64:       "92a35715f26044dc6139a989cfd1919bab2ff4c374dbc166c877fde2dded5172",
         arm64_linux:  "5e276383f608a75913ab0f3625b0ee54e47e1cbdea82c2d2804e44a52bb73f34",
         x86_64_linux: "e27aae7daf6dc7a75e24d1228ecabb15f3feac569503a5bff190119e4c32771c"

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
