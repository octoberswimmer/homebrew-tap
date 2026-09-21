cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.4.11"
  sha256 arm:          "e288b000524508e1fdbd9cb782168f1a319afc1f80d82ecf60eb9b5b67bebca5",
         x86_64:       "9a567322978e9924ddeca79e79d142643d9fcd07cea15a6920a3aaf28a2ac182",
         arm64_linux:  "4baf7abe477977a6ca0118f272221779b116b2806c3d5109c9145bdb3dcb50e4",
         x86_64_linux: "b8c88f4f8508dbdf95a5cce05d0ec0de8c5deb72f3e281685e7a36bc8dafd788"

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
