cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.4.17"
  sha256 arm:          "5d778e715f45058058b8a9300a93e4c90d42c6f036932e32bd54d44bb70fcbbc",
         x86_64:       "6ee9d355b67411bae2a9e7795cd52557de1a1e40697d9d838a14920f714bd0bb",
         arm64_linux:  "2cbfacd119366d96ab7a77f461ebea14a0c7134a7414746221c75b0d2bd89c29",
         x86_64_linux: "688f67644dfe18fb4ddb3bb1322a17f4c3b9ff436ec094d7eae2fc3a33f9dd32"

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
