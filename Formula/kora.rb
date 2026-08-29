class Kora < Formula
  desc "Agent-first programming language"
  homepage "https://github.com/ImAbhishekTomar/kora-lang"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ImAbhishekTomar/kora-lang/releases/download/v0.2.0/kora-0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "640345f3551f7d221c6ddc37cc30df3a4da8bbc438b164da13aca7145704d561"
    end
    on_intel do
      url "https://github.com/ImAbhishekTomar/kora-lang/releases/download/v0.2.0/kora-0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "fc9f8767f143fb79ab4fd42b649c00cd326190104e607435ae0fe6d7d33ab479"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ImAbhishekTomar/kora-lang/releases/download/v0.2.0/kora-0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "db6179c38620ee53d2b61077a6ec49c0944ae6c985c73da9149b3a7edd892b19"
    end
    on_intel do
      url "https://github.com/ImAbhishekTomar/kora-lang/releases/download/v0.2.0/kora-0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bf492547b6ec726d9ce1e5e5d777c2263724f4abc56321e26fda5e90ba1e1554"
    end
  end

  def install
    bin.install "kora"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kora --version")
  end
end
