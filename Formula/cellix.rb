class Cellix < Formula
  desc "AI companion IDE inside your coding agent"
  homepage "https://github.com/quill-27f/cellix"
  version "0.3.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.3.1/cellix-aarch64-apple-darwin.tar.gz"
      sha256 "2b3cb551879faaf43d5ce844925a705de89e524405caee36f8781a140cac4a71"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.3.1/cellix-x86_64-apple-darwin.tar.gz"
      sha256 "d49a73d59e5d8f4e92494a9805f90433be9e371cc26c992e52805b3d4a9f8023"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.3.1/cellix-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7b5e81f884b63dfa7c2980c3ccdc484441b6581e9a447eaa9d49e9dc7b75905e"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.3.1/cellix-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a424051529f9041444a9bf62cc2340e74d720b04023f014ffa643f4c6bca94a1"
    end
  end

  def install
    bin.install "cellix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cellix --version")
  end
end
