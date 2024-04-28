# Patches for compiling ST: Voyager – Elite Force (SP)

This repo aims to make the officially released source code of _Star Trek: Voyager – Elite Force_ single player game compilie and work with modern, non-MS compilers.

Due to legal aspects, only patches are provided. Yet there is some DIY
automation.

The result has been tested to work on GCC v13 on Windows, together with
a GOG.com-distributed version of the game, including the expansion pack.

## Setup

1. Obtain a copy of the game and install it.
1. Install [MSYS2](https://www.msys2.org/)
1. Start `mingw32.exe` from its directory and install the following
   packages via `# pacman -S`: `mingw-w64-i686-gcc`, `mingw-w64-i686-cmake`
1. Clone this repository to your local destination.
1. Put the official source code release into `efsp/` _OR_` do
   ```
   $ git submodule init
   $ git submodule update
   ```
1. Run `$ ./patch.sh`
1. Create a `build/` directory and `cd` into it.
1. Run `$ cmake -G "MSYS Makefiles" ..`
1. Run `$ make`.
1. After creating backups of the original files, copy and replace the resulting `efuix86.dll` and `efgamex86.dll` into the location of your game, next to `stvoy.exe`
1. Launch the game – and have fun experimenting.

## Notes

Compiling the game may spill plenty of compiler warnings. The patches
only focus on making the compiler accept old C++98/MSVC6 code under
`-fpermissive` and helping the game load correctly.

## Licenses

* For the source code release of the game's part, please refer to the `STEF Game Source License.doc` in `efsp/`.
* The source code of `patches/2-q_math.patch` is taken from [ioquake3](https://github.com/ioquake/ioq3), subject to the _GNU General Public License v2_. See `LICENCSE_GPLv2.txt`.
* Every other part not subject to the clauses above is subject to the
  _The Unlicense_, see `LICENSE.txt`.

Closing advise: The source code and its binaries resulting from theses
patches should not be distributed as their licenses should be considered
incompatible.
