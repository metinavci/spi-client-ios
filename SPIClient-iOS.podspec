Pod::Spec.new do |s|
  s.name         = 'SPIClient-iOS'
  s.version      = '2.3.5'
  s.summary      = 'SPI Client iOS'
  s.authors      = [ 'Yoo-Jin Lee', 'Mike Gouline', 'Amir Kamali', 'Metin Avci' ]
  s.license      = { :type => 'Apache License, Version 2.0' }
  s.homepage     = 'https://github.com/AssemblyPayments/spi-client-ios'
  s.source       = { :git => 'https://github.com/AssemblyPayments/spi-client-ios.git', :tag => s.version }
  s.source_files = 'Library/**/*.{h,m,c}'
  s.requires_arc = true
  s.platform     = :ios, '8.0'
  
  s.dependency 'RNCryptor-objc'
  s.dependency 'SocketRocket'
end
