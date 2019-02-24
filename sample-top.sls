post-exploitation:
  'kernel:Linux':
    - match: grains
    - nix.add-users
  'kernel:Windows':
    - match: grains
    - windows.add-users
