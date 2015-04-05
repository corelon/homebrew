require 'formula'

class Crfxx < Formula
  homepage 'http://code.google.com/p/crfpp/'
  url 'https://drive.google.com/uc?id=0B4y35FiV1wh7QVR6VXJ5dWExSTQ&export=download'
  sha1 '9f4782563ac82bfde39ac433d0e5a2871b23516a'

  def install
    system "./configure", "--disable-dependency-tracking", "--prefix=#{prefix}"
    system "make", "CXXFLAGS=#{ENV.cflags}", "install"
  end
end
