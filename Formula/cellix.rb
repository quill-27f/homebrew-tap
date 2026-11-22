class Cellix < Formula
  desc "AI companion IDE inside your coding agent"
  homepage "https://github.com/quill-27f/cellix"
  version "0.13.2"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.13.2/cellix-aarch64-apple-darwin.tar.gz"
      sha256 "0f8bf7453c8f8da4bf06d1c399dd180564c15a119c6d744cc3a219f3fc853240"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.13.2/cellix-x86_64-apple-darwin.tar.gz"
      sha256 "fae1773bd7b2c7e4faa51ecf7f555f678acb727c10a0b0ff966c9eb38dbaa2aa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.13.2/cellix-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d522e129befff380ecee054cf6d6b519eaad8b0d2e8f79f658ccdcd287c8e8f7"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.13.2/cellix-x86_64-unknown-linux-musl.tar.gz"
      sha256 "97c41a01628b9f8785fbc25dcce85e7c5463566b0a4c721d6de3b93faaae34e6"
    end
  end

  def install
    bin.install "cellix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cellix --version")
  end
end
