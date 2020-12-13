class HelloRust < Formula
  desc "Rust that simply prints 'Hello, rust!'"
  homepage "https://github.com/etng/homebrew_hello_rust"
  url "https://github.com/etng/hello_rust/archive/0.1.0.tar.gz"
  version "0.1.0"
  sha256 "d08db6b99cfd3123f7107842db3597ccb40a4e20f727eaade420ee24aa5e7523"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "--bin", "hello_rust"
    bin.install "target/release/hello_rust"
  end

  test do
    # This test is not good!
    system "#{bin}/hello_rust", "--version"
  end
end
