Pod::Spec.new do |s|
  s.platform = :ios
  s.ios.deployment_target = '8.0'
  s.name = "CNContactStore+Bolts"
  s.summary = "Bolts wrapper for CNContactStore callback and error pointers"
  s.version = "0.2.0"
  s.license = { :type => "MIT", :file => "LICENSE" }

  s.author = { "Felix Dumit" => "felix.dumit@gmail.com" }
  s.homepage = "https://github.com/felix-dumit/CNContactStore-Bolts"
  s.source = { :git => "https://github.com/felix-dumit/CNContactStore-Bolts.git", :tag => "#{s.version}"}
  s.framework = "Contacts"
  s.dependency 'Bolts/Tasks'
  s.source_files = "CNContactStore+Bolts.{h,m}"
end