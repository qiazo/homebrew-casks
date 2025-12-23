cask "fafarunner" do
  version "2.6.1"
  sha256 "e38bdab08e2d872e7de75fa332dc390a0b93a2b633c259d443bfcf4a3fb87f44"

  url "https://github.com/fafarunner/fafarunner/releases/download/v#{version}/FaFaRunner-#{version}-macos-universal.dmg",
      verified: "github.com/fafarunner/fafarunner/"
  name "FaFa Runner"
  desc "Enjoy smooth gameplay, stunning graphics, and endless fun"
  homepage "https://fafarunner.com/"

  livecheck do
    url :url
    strategy :git do |tags|
      tags.filter_map do |tag|
        match = tag&.match(/^v?(\d+(?:\.\d+)+(\+\d+)?)$/i)
        next if match.blank?

        match[1]
      end
    end
  end

  depends_on macos: ">= :big_sur"

  app "FaFa Runner.app"

  zap trash: [
    "~/Library/Application Support/FaFa Runner",
    "~/Library/Caches/com.chenyifaer.fafarunner",
    "~/Library/Caches/FaFa Runner",
    "~/Library/Preferences/com.chenyifaer.fafarunner.plist",
    "~/Library/Saved Application State/com.chenyifaer.fafarunner.savedState",
  ]
end
