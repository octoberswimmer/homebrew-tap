cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.2.39"
  sha256 arm:          "6d3cad38c3aaa47f94989ee48dbe29f238b94d9b8df766cf61f7668695380a27",
         x86_64:       "7c7895bbc2e70dce1c375820ad9516e200d749a494bf9be6d57f43238a9abfa0",
         arm64_linux:  "bbc3d09fefee6d0a67a00100d50a396607af317be6268ed78a1794a88e5f8fd5",
         x86_64_linux: "b292fb44947004ae9e5997a19e2b3c168f514fe8be25ba56e11340c1fddb9c97"

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
