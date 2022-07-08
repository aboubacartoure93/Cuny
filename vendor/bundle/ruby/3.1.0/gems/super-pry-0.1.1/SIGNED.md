##### Signed by https://keybase.io/stevenh512
```
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAABAgAGBQJXBJr1AAoJELhD5v2NN/3paMcP/1envPxtTqYoGqg3w7kLwhTh
4wZH0igB/HnnWnVjfk+dgCwDNijEeR4ZnCHHR6FDz4gwClPWNIhGWh7jbblxfFwf
56HHaz45H5ogCOfSoRmcBSyGIbx/DDLm65Ctb9elGhKFOKKD7gOEkNM0zSvgY3lh
FRu9h5ekvPYPSrmeZqSTBqkZYbVhsDj4x2VHeper6PwLvssqPX6BWPlYcKsT7b3L
HCcc+jDhwZ46NbqjVg9PSAvcrQTXk1w3DFAj1jL7+QhL47yxfeAMs+TKdHlxCP5Q
0l9cJTXagpVTv7T/dzIFCx7qpnvIPuqyZcisjWk/IaMhsOCpHB2Fzj48JdDDCPkM
aeii9lhZMQaLAlxzlN5LfrfVaUom3H6gWuZVnrdEQfsT2ygcKpUT6wBQs7xFWOCm
JTHrDT7MdUxY6XMFpFY85eGMX8FzZkrHxp8PtSiY/0eWvUPpPaDP424OMAmQ3029
BkzNXz1+Jyey2DcFabSrWyYO5uAxHSqax/omw1mslrq2CvECphwR15ZQxrTFSTug
vuCLoMAMtkLyUrQsT9OasW+1shokBBHfcxEjCJW3c89QeD7eJWQ7svgjKUwQy2Gv
BGSpK0rzDWXZkbhRjEOqXpBvdKpL89sWkQPxgEo/nfLGshNHu0Y1Ov7iHCwcurFe
cZVugK6VhsIAwiYbx1as
=5zxA
-----END PGP SIGNATURE-----

```

<!-- END SIGNATURES -->

### Begin signed statement 

#### Expect

```
size  exec  file                 contents                                                        
            ./                                                                                   
208           .gitignore         53f5a2acb22a7e11df24c7264e03bf80bc24240236ac020cc31362261526a376
32            CHANGELOG.md       10ae79febca41b95843ac95691dd9f6baf5b62d2b248c1273e6e14a46f506d52
              exe/                                                                               
50    x         spry             03d31bbd930c7b941ef6ebb9f7794436df7df5a658b22380643761b65f975382
94            Gemfile            5999478629922eb9a70873893580b8d2b82456a291b8f5acc83c256e0a747aa7
              lib/                                                                               
                super-pry/                                                                       
58                version.rb     a9330c1bfd066c5956352209a1744cd192a864165be87b15bdbaf6786fe41523
37              super-pry.rb     85c3af4a2e0134be47bb635d23fb9e0bc8a599e3819ee8d22b3ef6ed714a9c21
1071          LICENSE.txt        c5d5e05bc9b21492c9973efc45034113304bc16f3b360790fddfe3140dba118a
9419          pubkey.asc         dbc732c4e2caec6b98177a5e23690b0729cde1ac97018708ca2528395827b17f
153           Rakefile           1565a2aa32cad27e159f071fc9507538f95186abde48cda943945f4aa0b82b98
660           README.md          272e0eda19475e0929b37c846480bc8f67e99b6496e5ef105dcc505752bd7a17
              script/                                                                            
25    x         bootstrap        ca2bab340cac051bbe2ace4bef1126108e91fbdf39f23f8a1636a567272ce632
1004          super-pry.gemspec  3943a3398680650b82e56c2f5d0622eea43c80b957bb821efcf6de9c1c48f4d1
              vendor/                                                                            
```

#### Ignore

```
/SIGNED.md
```

#### Presets

```
git      # ignore .git and anything as described by .gitignore files
dropbox  # ignore .dropbox-cache and other Dropbox-related files    
kb       # ignore anything as described by .kbignore files          
```

<!-- summarize version = 0.0.9 -->

### End signed statement

<hr>

#### Notes

With keybase you can sign any directory's contents, whether it's a git repo,
source code distribution, or a personal documents folder. It aims to replace the drudgery of:

  1. comparing a zipped file to a detached statement
  2. downloading a public key
  3. confirming it is in fact the author's by reviewing public statements they've made, using it

All in one simple command:

```bash
keybase dir verify
```

There are lots of options, including assertions for automating your checks.

For more info, check out https://keybase.io/docs/command_line/code_signing