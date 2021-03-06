# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'metrics/version'

Gem::Specification.new do |spec|
    spec.name = 'yandex-metrics'
    spec.version = Metrics::VERSION
    spec.authors = ['Anton Bogdanov']
    spec.email = ['kortirso@gmail.com']

    spec.summary = 'Requests for Yandex Metrics API'
    spec.description = 'Gem for interaction with Yandex Metrics API'
    spec.homepage = 'https://github.com/kortirso/yandex_metrics'
    spec.license = 'MIT'

    spec.files = `git ls-files -z`.split("\x0").reject do |f|
        f.match(%r{^(test|spec|features)/})
    end
    spec.bindir = 'exe'
    spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
    spec.require_paths = ['lib']

    spec.add_development_dependency 'bundler', '~> 1.14'
    spec.add_development_dependency 'rake', '~> 10.0'
end
