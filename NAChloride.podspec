Pod::Spec.new do |s|

  s.name         = "NAChloride"
  s.version      = "2.3.0"
  s.summary      = "Objective-C library for libsodium (NaCl)"
  s.homepage     = "https://github.com/zodchiy7/NAChloride"
  s.license      = { :type => "MIT" }
  s.author       = { "Zodchiy7" => "Zodchiy7@gmail.com" }
  s.source       = { :git => "https://github.com/zodchiy7/NAChloride.git", :tag => s.version.to_s }
  s.dependency 'libsodium'
  s.requires_arc = true

  s.ios.deployment_target = "7.0"
  s.ios.source_files = 'NAChloride/**/*.{c,h,m}'
  s.ios.compiler_flags = '-DHAVE_SYS_MMAN_H -DNATIVE_LITTLE_ENDIAN=1 -DHAVE_MADVISE -DHAVE_MMAP -DHAVE_MPROTECT -DHAVE_POSIX_MEMALIGN -DHAVE_WEAK_SYMBOLS -DHAVE_SYS_MMAN_H'

  s.osx.deployment_target = "10.8"
  s.osx.source_files = 'NAChloride/**/*.{c,h,m}'

end
