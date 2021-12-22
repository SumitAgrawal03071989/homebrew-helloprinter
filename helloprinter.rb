# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Helloprinter < Formula
    desc "Simple hello message printer"
    homepage "https://github.com/SumitAgrawal03071989/helloprinter"
    url "https://github.com/SumitAgrawal03071989/helloprinter/archive/refs/tags/0.0.1.tar.gz"
    sha256 "f080576a879ae462a1ed95a94cab41dee96f26d68fd7e7a484eb8624a9d57abc"
    license "Apache-2.0"
  
    depends_on "python@3.10"
  
    def install
      # ENV.deparallelize  # if your formula fails when building in parallel
      # Remove unrecognized options if warned by configure
      # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
      # system "./configure", *std_configure_args, "--disable-silent-rules"
      # system "cmake", "-S", ".", "-B", "build", *std_cmake_args
      bin.install 'main.py'
    end
  
    test do
      # `test do` will create, run in and delete a temporary directory.
      #
      # This test will fail and we won't accept that! For Homebrew/homebrew-core
      # this will need to be a test that verifies the functionality of the
      # software. Run the test with `brew test helloprinter`. Options passed
      # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
      #
      # The installed folder is not in the path, so use the entire path to any
      # executables being tested: `system "#{bin}/program", "do", "something"`.
      system "false"
    end
  end
  