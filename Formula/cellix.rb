class Cellix < Formula
  desc "AI companion IDE inside your coding agent"
  homepage "https://github.com/quill-27f/cellix"
  version "0.5.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.5.1/cellix-aarch64-apple-darwin.tar.gz"
      sha256 "81324bc9de45b6b2c899a4264108b28a6f51c79e59bddd8b0f1678745fb58237"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.5.1/cellix-x86_64-apple-darwin.tar.gz"
      sha256 "0c6b4be0116a12b76b9679e1bf0e789831d09d876bb7f3c68ed4983e7e32e38c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.5.1/cellix-aarch64-unknown-linux-musl.tar.gz"
      sha256 "cc742d9c3bc67d4c5514a07e5bcdc1fe130d65a9182acb5512bcb12ccf8c5e3d"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.5.1/cellix-x86_64-unknown-linux-musl.tar.gz"
      sha256 "dea65b5eaf4b78512994b495a9e87283b6942f9e173927316a8062af78efae45"
    end
  end

  def install
    bin.install "cellix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cellix --version")
  end
end
