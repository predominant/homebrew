require 'formula'

class Nano < Formula
  url 'http://www.nano-editor.org/dist/v2.2/nano-2.2.6.tar.gz'
  homepage 'http://www.nano-editor.org/'
  md5 '03233ae480689a008eb98feb1b599807'

  def install
    args = [
      "--disable-dependency-tracking", "--disable-nls", "--disable-utf8",
      "--enable-color", "--enable-extra", "--enable-multibuffer", "--enable-nanorc",
      "--prefix=#{prefix}"
    ]

    system "./configure", *args
    system "make install"
  end
end