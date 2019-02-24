base:
  'kernel:Linux':
    - match: grains
    - post-exploitation.nix.add-users
  'kernel:Windows':
    - match: grains
    - post-exploitation.windows.add-users
