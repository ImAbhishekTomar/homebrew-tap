class Kora < Formula
  desc "Agent-first programming language"
  homepage "https://github.com/ImAbhishekTomar/kora-lang"
  version "0.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ImAbhishekTomar/kora-lang/releases/download/v0.0.2/kora-0.0.2-aarch64-apple-darwin.tar.gz"
      sha256 "6b80c1f9d7fbab2056cc4c87367712ad1b3929856a0d830fb7074e79dae7952d"
    end
    on_intel do
      url "https://github.com/ImAbhishekTomar/kora-lang/releases/download/v0.0.2/kora-0.0.2-x86_64-apple-darwin.tar.gz"
      sha256 "b557710fd0cf9b47f1d4b845526a8c0ce83c7f5bf629a11720162dc1108774bc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ImAbhishekTomar/kora-lang/releases/download/v0.0.2/kora-0.0.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f1fbbe90b1f9ea57ca5255c978488dfeaa1c8e55e41a1be4c770c952ac1d168d"
    end
    on_intel do
      url "https://github.com/ImAbhishekTomar/kora-lang/releases/download/v0.0.2/kora-0.0.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "30249e02a97ef8aaa6e4aed381ed5c9c20b7818174afacf7891829d76635dc4c"
    end
  end

  def install
    bin.install "kora"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kora --version")
  end
end
