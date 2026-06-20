class Stew < Formula
  desc "CLI for append-only markdown project memory ledgers"
  homepage "https://github.com/ankitvg/stew"
  url "https://github.com/ankitvg/stew/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "874a4f02a1334740221b0722f9b59da9ae792e33d5a931791d28652c1bea51b9"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    ldflags = %W[
      -s -w
      -X github.com/ankitvg/stew/internal/version.Version=v#{version}
    ]
    system "go", "build", "-trimpath", "-ldflags", ldflags.join(" "), "-o", bin/"stew", "./cmd/stew"
  end

  test do
    assert_match "version: v#{version}", shell_output("#{bin}/stew version")
  end
end
