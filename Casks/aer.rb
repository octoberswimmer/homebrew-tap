cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.2.38"
  sha256 arm:          "4d23797b68df8e5cc317aa8c23e877f84a0797d0d6990a362f6ddb504ac9b581",
         x86_64:       "7cec63895e98195db74da7d26ea242f6f80b6298a6f2907f66718459946847b8",
         arm64_linux:  "0df6cef0032bc56202a6cb20243ad0da6a76ee2a1a639a9ebb601b1244cba897",
         x86_64_linux: "39bee92ac43236ff9270c1515a949b960a56559b4b00944d036fce4c4af4e0b6"

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
