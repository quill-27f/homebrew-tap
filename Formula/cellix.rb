class Cellix < Formula
  desc "AI companion IDE inside your coding agent"
  homepage "https://github.com/quill-27f/cellix"
  version "0.2.2"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.2.2/cellix-aarch64-apple-darwin.tar.gz"
      sha256 "8b427b36cca7b8b23c5790b59fca81c8880b9e763d43f4768f92d64afe8000bf"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.2.2/cellix-x86_64-apple-darwin.tar.gz"
      sha256 "e73870bf5ac26c09a2df37f558e5f11daf2a978728c8aa52c9e1a6d8aa28d1d8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.2.2/cellix-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e8c4100dfabb39ea99f170c6248d59d683c328bcbe04872cd6bbf84afceafeb4"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.2.2/cellix-x86_64-unknown-linux-musl.tar.gz"
      sha256 "acd315053f00e5055a4c692eeadf5c53b09b5f5b29d474ebec623461c28694f0"
    end
  end

  def install
    bin.install "cellix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cellix --version")
  end
end
