class Stew < Formula
  desc "CLI for append-only markdown project memory ledgers"
  homepage "https://github.com/ankitvg/stew"
  version "0.1.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ankitvg/stew/releases/download/v#{version}/stew_v#{version}_darwin_arm64.tar.gz"
      sha256 "5ee63baba6c35edd08cd783781b3bc4ea525722ae5c1a705bc98190fcd309fc1"
    end

    on_intel do
      url "https://github.com/ankitvg/stew/releases/download/v#{version}/stew_v#{version}_darwin_amd64.tar.gz"
      sha256 "bb601b7a06f980773333371d6821bf3ae01bb244bf9be450eee0741efe550928"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ankitvg/stew/releases/download/v#{version}/stew_v#{version}_linux_arm64.tar.gz"
      sha256 "f28c429e882918371586c4d768c861e0907d72a518bdba9ec5ff9b5067438295"
    end

    on_intel do
      url "https://github.com/ankitvg/stew/releases/download/v#{version}/stew_v#{version}_linux_amd64.tar.gz"
      sha256 "66fdb0884adf605064ad134aa37b6b3ebc9cc62c3160c73191f2b116b272b6d3"
    end
  end

  def install
    bin.install "stew"
  end

  test do
    assert_match "version: v#{version}", shell_output("#{bin}/stew version")
  end
end
