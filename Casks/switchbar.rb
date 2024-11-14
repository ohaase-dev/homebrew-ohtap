cask "switchbar" do
    version "20.0.0"
    sha256 "8348c7310297e319d6646a3a75e30a265aee93760d6c2e836e6dadb4d11c8c42"
  
    url "https://cdn-2.webcatalog.io/switchbar/Switchbar-#{version}-universal.dmg",
        verified: "https://cdn-2.webcatalog.io/switchbar"
    name "Switchbar"
    desc "Browser Picker for Mac and PC"
    homepage "https://switchbar.com/"
  
    livecheck do
        url "https://switchbar.com/api/download/?platform=macos"
        strategy :header_match
    end
  
    app "Switchbar.app"
  
    zap trash: [
      "~/Library/Application Support/Switchbar"
    ]
  end