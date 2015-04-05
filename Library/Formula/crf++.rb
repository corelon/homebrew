require 'formula'

class Crfxx < Formula
  homepage 'http://code.google.com/p/crfpp/'
  url 'https://drive.google.com/uc?id=0B4y35FiV1wh7QVR6VXJ5dWExSTQ&export=download'
  sha1 '979a686a6d73d14cdd0c96a310888fb6bffd2e91'

  def install
    system "./configure", "--disable-dependency-tracking", "--prefix=#{prefix}"
    system "make", "CXXFLAGS=#{ENV.cflags}", "install"
  end
end
