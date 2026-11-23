class Cellix < Formula
  desc "AI companion IDE inside your coding agent"
  homepage "https://github.com/quill-27f/cellix"
  version "0.14.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.14.1/cellix-aarch64-apple-darwin.tar.gz"
      sha256 "6fab3efe4eeb20900bed847c6ad668db933343105eb244900df8fda0d9547717"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.14.1/cellix-x86_64-apple-darwin.tar.gz"
      sha256 "53b786a44e50d652c7acb3b2d102c81927d8d7ec92def0d39acb1a7d61ccd837"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.14.1/cellix-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ee3552ccb7fb905a329d42f29aea3c18d17f9315a9c23b12f86c61a96dd6aac8"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.14.1/cellix-x86_64-unknown-linux-musl.tar.gz"
      sha256 "08c4a67c5950d6c7ab4ff716661202d364cd6f31eb9664abda50e4a7b8666351"
    end
  end

  def install
    bin.install "cellix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cellix --version")
  end
end
