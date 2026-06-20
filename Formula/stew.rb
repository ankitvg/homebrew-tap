class Stew < Formula
  desc "CLI for append-only markdown project memory ledgers"
  homepage "https://github.com/ankitvg/stew"
  version "0.1.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ankitvg/stew/releases/download/v#{version}/stew_v#{version}_darwin_arm64.tar.gz"
      sha256 "8e521f965166ad6cd263bc04b395737862d60f99474ad3b8357b5abf88b39205"
    end

    on_intel do
      url "https://github.com/ankitvg/stew/releases/download/v#{version}/stew_v#{version}_darwin_amd64.tar.gz"
      sha256 "8493ae7b2bd1710ccab74618310c046c33d34362473c6908e53b3353541038b4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ankitvg/stew/releases/download/v#{version}/stew_v#{version}_linux_arm64.tar.gz"
      sha256 "11ee52a278a9930381795a59ba621b1bbe8a1746f830e4836fb72cfaac50f576"
    end

    on_intel do
      url "https://github.com/ankitvg/stew/releases/download/v#{version}/stew_v#{version}_linux_amd64.tar.gz"
      sha256 "fc147578b300843391307b019904f052324d6fdca61d5b2ab658ec4cce50dc78"
    end
  end

  def install
    bin.install "stew"
  end

  test do
    assert_match "version: v#{version}", shell_output("#{bin}/stew version")
  end
end
