class Cellix < Formula
  desc "AI companion IDE inside your coding agent"
  homepage "https://github.com/quill-27f/cellix"
  version "0.4.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.4.1/cellix-aarch64-apple-darwin.tar.gz"
      sha256 "01bc9eab6ec3dd3026adfcc9c0b7a49e9f0a27e706b2deb30d200f1fd2dd138c"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.4.1/cellix-x86_64-apple-darwin.tar.gz"
      sha256 "3636b3ff9e6c01bfa997824f493e497d29ee4d415183591c8a7f831e3ca5565b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.4.1/cellix-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5e7295f91c66214cbe43e9dd3f7bac7eb74ee00845e313cbd09f92024438b50a"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.4.1/cellix-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e886fa530ae336a248a4a71ac6f71895370b3e69fff2eb369b9a64db4444bccc"
    end
  end

  def install
    bin.install "cellix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cellix --version")
  end
end
