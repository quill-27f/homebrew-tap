class Cellix < Formula
  desc "AI companion IDE inside your coding agent"
  homepage "https://github.com/quill-27f/cellix"
  version "0.7.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.7.0/cellix-aarch64-apple-darwin.tar.gz"
      sha256 "3f613caff51ee1b360f87fefe8f5e9169ebb96be8652813a883c209198c48457"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.7.0/cellix-x86_64-apple-darwin.tar.gz"
      sha256 "c01dd2b22abf1e4b8e9b63370eb472578d814bbf2e563a13d55983dc2f2b1d07"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.7.0/cellix-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c0bb7acaf483bbb15e4db8847f5319683a179874923701d58fc976f8bfbeb434"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.7.0/cellix-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c5f38ac709392d4d210ebee741daefd44f1c5dec9612aeed3899055b728f495a"
    end
  end

  def install
    bin.install "cellix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cellix --version")
  end
end
