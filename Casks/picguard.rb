cask "picguard" do
  version "5.3.0"
  sha256 "8e8d1b9d61d143859c0eadf89b4155055aca223225a3943d84812bd550708e3e"

  url "https://github.com/picguard/picguard/releases/download/v#{version}/PicGuard-#{version}-macos-universal.dmg",
      verified: "github.com/picguard/picguard/"
  name "PicGuard"
  desc "Your pictures, your signature"
  homepage "https://picguard.app/"

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

  app "PicGuard.app"

  zap trash: [
    "~/Library/Application Support/PicGuard",
    "~/Library/Caches/com.kjxbyz.picguard",
    "~/Library/Caches/PicGuard",
    "~/Library/Preferences/com.kjxbyz.picguard.plist",
    "~/Library/Saved Application State/com.kjxbyz.picguard.savedState",
  ]
end
