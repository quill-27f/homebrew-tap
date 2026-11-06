class Cellix < Formula
  desc "AI companion IDE inside your coding agent"
  homepage "https://github.com/quill-27f/cellix"
  version "0.5.4"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.5.4/cellix-aarch64-apple-darwin.tar.gz"
      sha256 "6d48cf5b9e5efc6e695b77799960c9175de854ac61a00ba618799b8299544247"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.5.4/cellix-x86_64-apple-darwin.tar.gz"
      sha256 "97df0f5e67a1a69eb5bac500a3d9381aa22fe3e1597d7e58a4514f521327bb70"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.5.4/cellix-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0220353c0a9ce6114004492fa0742556378853e54b3fe773e999a52284bd4301"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.5.4/cellix-x86_64-unknown-linux-musl.tar.gz"
      sha256 "24ab3b8ed0ed561361cabf37229c16421330bfb614c31a476404c0faa53da748"
    end
  end

  def install
    bin.install "cellix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cellix --version")
  end
end
