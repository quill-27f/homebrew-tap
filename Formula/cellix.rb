class Cellix < Formula
  desc "AI companion IDE inside your coding agent"
  homepage "https://github.com/quill-27f/cellix"
  version "0.10.2"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.10.2/cellix-aarch64-apple-darwin.tar.gz"
      sha256 "6cdbfcee2f8ef7a6ca8f0c84bf0bba5e5cdc45dc2c99a81bba52757dcb220b87"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.10.2/cellix-x86_64-apple-darwin.tar.gz"
      sha256 "0bb1ddbd7cb69d6fc9316ac52ef6395fb8958af311e4b89a081425acecebfccb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.10.2/cellix-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5ba7e313cebd920953a6d2082182b47ad7306a71308e1f31546188be7a813d0f"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.10.2/cellix-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c7851a84a972a985b00149b568d3a4d13dc81bfc92014430b38e6ff68ff3a22b"
    end
  end

  def install
    bin.install "cellix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cellix --version")
  end
end
