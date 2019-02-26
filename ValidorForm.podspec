
Pod::Spec.new do |spec|

  spec.name         = "ValidorForm"
  spec.version      = "1.0.7"
  spec.summary      = "ValidorForm"

  spec.description  = "Form Validator"

  spec.homepage     = "https://github.com/LaureenMartina/ValidorForm"

  spec.license      = { :type => "BSD", :file => "LICENSE" }

  spec.author       = { "LaureenMartina" => "laureenmar.15@gmail.com", "FlorianMazuy" => "florian.mazuy@gmail.com", "PrescillaLecurieux" => "prescilla.lecurieux@gmail.com", "MerylValier" => "meryl.valier@gmail.com"}

  #  When using multiple platforms
   spec.ios.deployment_target = "9.0"
   spec.swift_version = '4.2'

  spec.source       = { :git => "https://github.com/LaureenMartina/ValidorForm.git", :tag => "#{spec.version}" }

  spec.source_files  = "ValidorForm", "ValidorForm/**/*.{h,m}"

end
