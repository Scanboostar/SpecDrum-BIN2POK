# SpecDrum-BIN2POK
Convert a binary SpecDrum Kit to POK file(s)

In the article [Loading your own samples into the Cheetah SpecDrum](https://m-harrison.org/loading-your-own-samples-into-the-cheetah-specdrum/) Matt describes how to prepare a kit that can be used with SpecDrum on the ZX Spectrum.

I wanted to use these new instruments on my Spectrum NEXT but unfortunately the NEXT does not support .TZX tape image files. However the NEXT has the ability to load POKEs using the NMI menu (F9 on my PS/2 keyboard). The PERL scrips convert the .BIN file, the base of the .TZX image, to .POK POKE files.

Sample2Pok.pl - Create one big .POK file (to stdout) including instrument names. They can individually be confirmed.

Sample2PokKit.pl  - Create one big .POK file (to stdout) without instrument names. Load the whole kit in one go.

Sample2PokInst.pl - Create a .POK file (on disk) for each instrument so that they can be loaded individually.

Loading .POK files is quite slow, even on the NEXT and a faster clock speeds have no effect on loading times. 

After the desired instrument mix has been loaded into SpecDrum a memory snapshot saved for convenient future use.
Matt's creations are included as .POK files. Using Matt's description you can also create your own instruments.
