class Cellix < Formula
  desc "AI companion IDE inside your coding agent"
  homepage "https://github.com/quill-27f/cellix"
  version "0.6.4"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.6.4/cellix-aarch64-apple-darwin.tar.gz"
      sha256 "50b89bd54355ca970dcbefa90bfcd7bc97016fc2263c0a4e98a4e65fa64c6502"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.6.4/cellix-x86_64-apple-darwin.tar.gz"
      sha256 "179afde701cda0cc0df033dbf14f9e23ac49cd9d25ae14765fa53c6dc02efe25"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.6.4/cellix-aarch64-unknown-linux-musl.tar.gz"
      sha256 "446104be999fc0aa707fd727a23f8dfe8ef52dc87fb5edac537ce260ff1c5b93"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.6.4/cellix-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9b726fa83ecc01f46e758a246127947dd17c12c6639e20ee107190021f009532"
    end
  end

  def install
    bin.install "cellix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cellix --version")
  end
end
