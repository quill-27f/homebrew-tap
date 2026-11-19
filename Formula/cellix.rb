class Cellix < Formula
  desc "AI companion IDE inside your coding agent"
  homepage "https://github.com/quill-27f/cellix"
  version "0.11.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.11.0/cellix-aarch64-apple-darwin.tar.gz"
      sha256 "0d8c8f0cf212558acb0986ed53334d6947cf3a569ef0fd6a26f1dd7a479e2710"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.11.0/cellix-x86_64-apple-darwin.tar.gz"
      sha256 "8cccbbb96adbf6ed9bb3858677e61bc9f89c24f86b138bf53707be9ceae6b9a0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.11.0/cellix-aarch64-unknown-linux-musl.tar.gz"
      sha256 "31ae9a8ec61ebebead63df7ef4b7522a6a8c16aebb7ad4f23095b88a1c77fc90"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.11.0/cellix-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f5512789322ba8bbbd095b4651ab14e745d5c4d5297f2f8a493cfbab4a184f65"
    end
  end

  def install
    bin.install "cellix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cellix --version")
  end
end
