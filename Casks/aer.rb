cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.4.20"
  sha256 arm:          "929daeaac8c037aded5b8a7402a763378023a67651da8dd66e31423211dce4db",
         x86_64:       "9a5b337cdcd42b53f8ac860601bb063a728e2220247ae466fc0a92305585c622",
         arm64_linux:  "e93cb7d31a3e7c1ff31872bae6122ccc0cebf47109df41d40391c8df99d38aaf",
         x86_64_linux: "7b00ae9e801b64c14f709a29c50eb87a02d3a95b860d58a639344ef0b536be32"

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
