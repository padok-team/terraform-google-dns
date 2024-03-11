# Changelog

All notable changes to this project will be documented in this file. See [standard-version](https://github.com/conventional-changelog/standard-version) for commit guidelines.

## [1.5.0](https://github.com/padok-team/terraform-google-dns/compare/v1.4.1...v1.5.0) (2024-03-11)


### Features

* allow to disable dnssec ([#34](https://github.com/padok-team/terraform-google-dns/issues/34)) ([6c793a4](https://github.com/padok-team/terraform-google-dns/commit/6c793a4e6f2a24e58724619278fc3e2f04b61ee1))

## [1.4.1](https://github.com/padok-team/terraform-google-dns/compare/v1.4.0...v1.4.1) (2023-04-21)


### Bug Fixes

* add dnssec config block to enable DNSSEC for managed zones ([fabb1c6](https://github.com/padok-team/terraform-google-dns/commit/fabb1c63410b33b506a1ebd299951b2b24357d14))
* **ex1:** Fixed separated_zone_record example ([e906076](https://github.com/padok-team/terraform-google-dns/commit/e9060764a3ca7e0a5ccc8d073d3f4fa7c5c1b841))
* **ex2:** Fixed output from simple_private_zone example ([25e2843](https://github.com/padok-team/terraform-google-dns/commit/25e284379290f2392d47c996c86ec3eb36f36f15))
* **ex3:** Fixed output for simple_public_zone example ([271850c](https://github.com/padok-team/terraform-google-dns/commit/271850c8ca9522bc0a40998c66f882cddb933cb3))

## [1.4.0](https://github.com/padok-team/terraform-google-dns/compare/v1.3.1...v1.4.0) (2022-10-20)


### Features

* add project_id variable ([d71a097](https://github.com/padok-team/terraform-google-dns/commit/d71a097ffc61b4ae4b0b93589975bbde397930eb))

## 1.1.0 (2022-01-14)


### Features

* **dns:** add first version of simple DNS zone ([47e3a64](https://github.com/padok-team/terraform-google-dns/commit/47e3a6452bb33ea855fd99ba08dfb1e51f7aa917))
* **examples:** improve examples with various possibilities ([2b13826](https://github.com/padok-team/terraform-google-dns/commit/2b138262d724451164971bb97cf3622072d84f4b))
* **fqdn:** improve regex to make final '.' as mandatory ([93462fc](https://github.com/padok-team/terraform-google-dns/commit/93462fca67c09ca31d69b0b24c85b92de7af8120))
* **inputs:** add default inputs with validations ([7480769](https://github.com/padok-team/terraform-google-dns/commit/7480769657b8e13cd160f3d6cdcfb0869841b83c))
* **outputs/vars:** remove 'project' output and fix typo in variable error msg ([d15842e](https://github.com/padok-team/terraform-google-dns/commit/d15842e951d53d8e0f7246e27ecb0048acd355a1))
* **terraform:** add outputs from module ([debf13b](https://github.com/padok-team/terraform-google-dns/commit/debf13be5483f7abc537138388928441ff3c000f))


### Bug Fixes

* **folders:** renaming examples folders ([f0b9808](https://github.com/padok-team/terraform-google-dns/commit/f0b9808cd2c4b6b1e33fec959b8bc127f399e8b6))
* **terraform:** correct module name ([17b91a5](https://github.com/padok-team/terraform-google-dns/commit/17b91a52ef51d6540aafccd8f466c7d4d4323791))
* **terraform:** removing default value, no need to set it ([eead286](https://github.com/padok-team/terraform-google-dns/commit/eead286a34e9bb96db8e35cf152a2f30b9444f7b))
* **terraform:** trying to improve the validation regex for FQDN ([055b883](https://github.com/padok-team/terraform-google-dns/commit/055b88307c693a3e4b1890f2ce5c71deeabe36a6))
* **validation:** good regex for FQDN validation ([471dd23](https://github.com/padok-team/terraform-google-dns/commit/471dd23dce9558f7e2e1cb6d0c3deb66e85746cd))
