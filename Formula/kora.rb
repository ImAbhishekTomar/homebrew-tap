class Kora < Formula
  desc "Agent-first programming language"
  homepage "https://github.com/ImAbhishekTomar/kora-lang"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ImAbhishekTomar/kora-lang/releases/download/v0.1.0/kora-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "0286a6b7ea86740b6aa154e687e02322b7ce2efd557edfcfd955d441ccc7d6c3"
    end
    on_intel do
      url "https://github.com/ImAbhishekTomar/kora-lang/releases/download/v0.1.0/kora-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "b9479e1648338f6e8a8c112e68e52f18c2450768493ec88b5dbf3f6b4615dc60"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ImAbhishekTomar/kora-lang/releases/download/v0.1.0/kora-0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f01b8d99aa90cbaee19283a6f207892e19fdd13f591183adb4c33c671661b4d5"
    end
    on_intel do
      url "https://github.com/ImAbhishekTomar/kora-lang/releases/download/v0.1.0/kora-0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cce5f3119c96b2f524df16ccd740a9eb69b50cf690760db3f982555a8d7bc5a4"
    end
  end

  def install
    bin.install "kora"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kora --version")
  end
end
