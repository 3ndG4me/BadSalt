base:
  'kernel:Linux':
    - match: grain
    - post-exploitation.nix.add-users
  'kernel:Windows':
    - match: grain
    - post-exploitation.windows.add-users
