library sound;

class SoundLink {
  String? variation;
  String href;
  bool isMobileView;

  SoundLink({this.variation, required this.href, this.isMobileView = false});

  factory SoundLink.fromJson(Map<String, dynamic>? json) {
    return SoundLink(
      variation: json?['variation'],
      href: json?['href'],
      isMobileView: json?['isMobileView'] ?? false,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['variation'] = variation;
    data['href'] = href;
    data['isMobileView'] = isMobileView;
    return data;
  }

  @override
  String toString() {
    return '$toJson()';
  }
}

class NasaSound {
  String name;
  String source;
  String description;
  List<SoundLink> links;

  NasaSound({
    required this.name,
    required this.source,
    required this.description,
    required this.links,
  });

  factory NasaSound.fromJson(Map<String, dynamic>? json) {
    return NasaSound(
      name: json?['name'],
      source: json?['source'],
      description: json?['description'],
      links: (json?['links'] as List<dynamic>?)
              ?.map((e) => SoundLink.fromJson(e))
              .toList() ??
          <SoundLink>[],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['source'] = source;
    data['description'] = description;
    data['links'] = links.map((e) => e.toJson()).toList();
    return data;
  }

  @override
  String toString() {
    return '$toJson()';
  }
}

final List<NasaSound> jamesWebbSounds = [
  NasaSound(
    name: "Webb's Exoplanet WASP-96 b Sonification",
    source: 'James Webb',
    description:
        "Explore infrared images and data from NASA's James Webb Space Telescope through sound. Listeners can enter the soundscape of the Cosmic Cliffs in the Carina Nebula, explore the tones of the Southern Ring Nebula, and hear data from the transmission spectrum of an exoplanet.",
    links: <SoundLink>[
      SoundLink(
        href: 'https://www3.nasa.gov/specials/sounds/wasp-notes-Aug-3.wav',
      ),
    ],
  ),
  NasaSound(
    name: "Webb's Southern Ring Nebula Sonification",
    source: 'James Webb',
    description:
        "Explore infrared images and data from NASA's James Webb Space Telescope through sound. Listeners can enter the soundscape of the Cosmic Cliffs in the Carina Nebula, explore the tones of the Southern Ring Nebula, and hear data from the transmission spectrum of an exoplanet.",
    links: <SoundLink>[
      SoundLink(
        href:
            'https://www3.nasa.gov/specials/sounds/ring-side-by-side-Aug-3.wav',
      ),
      SoundLink(
        variation: 'Mid-Infrared',
        href: 'https://www3.nasa.gov/specials/sounds/ring-miri-Aug-%203.wav',
      ),
      SoundLink(
          variation: 'Near-Infrared',
          href: 'https://www3.nasa.gov/specials/sounds/ring-nircam-Aug-3.wav')
    ],
  ),
  NasaSound(
    name: "Webb's Cosmic Cliffs Sonification",
    source: 'James Webb',
    description:
        "Explore infrared images and data from NASA's James Webb Space Telescope through sound. Listeners can enter the soundscape of the Cosmic Cliffs in the Carina Nebula, explore the tones of the Southern Ring Nebula, and hear data from the transmission spectrum of an exoplanet.",
    links: <SoundLink>[
      SoundLink(
        href: 'https://www3.nasa.gov/specials/sounds/carina-Aug-3.wav',
      ),
      SoundLink(
        variation: 'Sky',
        href: 'https://www3.nasa.gov/specials/sounds/carina-top-Aug-3.wav',
      ),
      SoundLink(
        variation: 'Mountains',
        href: 'https://www3.nasa.gov/specials/sounds/carina-bot-Aug-3.wav',
      ),
      SoundLink(
        variation: 'Stars',
        href: 'https://www3.nasa.gov/specials/sounds/carina-stars-Aug-3.wav',
      ),
    ],
  ),
];

final List<NasaSound> hubbleSpaceSounds = [
  NasaSound(
    name: 'The Mice Galaxies',
    source: 'Hubble',
    description:
        'The Mice Galaxies are a colliding pair of galaxies, that will eventually merge into a single galaxy. They’re located about 300 million light-years away in the constellation Coma Berenices. In this data sonification, scientists represented brightness with volume and pitch – brighter light is louder and lower pitched. The vertical position of objects in the image is used to control the pitch of sustained musical strings, and cymbals swell following the brightness of the galaxy cores. Listen for a cymbal crash played for the foreground star with diffraction spikes, too!',
    links: [
      SoundLink(href: 'https://youtu.be/KzwBOJi0PA4'),
    ],
  ),
  NasaSound(
    name: 'Arp 140',
    source: 'Hubble',
    description:
        'This data sonification of Arp 140 shows a pair of interacting galaxies. The leftmost galaxy is a barred spiral galaxy known as NGC 275, and the right-side galaxy is a lenticular galaxy called NGC 274. In barred spiral galaxies, a bar of stars runs through the central bulge of the galaxy (seen here as a bright-white, vertical haze in NGC 275). Lenticular galaxies, on the other hand, are classified somewhere between elliptical and spiral galaxies, getting their name from the edge-on appearance that resembles a disk. They typically don’t have much gas and dust and are made up primarily of old stars.\nScientists sonified the data in this image, assigning pitch to color for the image as a whole (bluer light is higher, redder is lower). Pitch is mapped to brightness for the resolved stars and background galaxies, based on their apparent size – objects that appear bigger are lower, and smaller are higher in pitch. Brighter light is louder throughout the image. ',
    links: [
      SoundLink(href: 'https://youtu.be/urmFYr2GJHE'),
    ],
  ),
  NasaSound(
    name: 'V838 Monocerotis',
    source: 'Hubble',
    description:
        'This data sonification of the star V838 Monocerotis, or V838 Mon, shows two Hubble images taken almost seven months apart. A pulse of light from the central star illuminates clouds of dust and gas surrounding V838 Mon. This star is located about 20,000 light-years away, at the outer edge of our Milky Way Galaxy. In this sonification, scientists mapped brightness to pitch and volume, and the surrounding stars are pitched to musical notes. The sonification radiates outward from the center of the first image of the star, taken on May 20, 2002, and then fades away. The sonification then radiates outward from the center of the second image of the star, taken on Dec. 17, 2002.',
    links: [
      SoundLink(href: 'https://youtu.be/ZZVu4vlyXdo'),
    ],
  ),
  NasaSound(
    //mobile view
    name: 'RS Puppis',
    source: 'Hubble',
    description:
        "RS Puppis is a glittering star 200 times larger than our Sun and wreathed with dust reflecting starlight. Located about 6,500 light-years away, this star rhythmically brightens and dims over a six-week cycle. In this sonification, scientists represent data in the image as sound for a new, festive way of experiencing RS Puppis. Pitch is assigned based on direction from the center; as the circle travels inward, points at the top of the circle are mapped to higher notes and points near the bottom are mapped to lower notes. Light toward the left is heard more in the left speaker and light toward the right is heard more in the right speaker. Additionally, brightness in the image is mapped to louder volume.",
    links: [
      SoundLink(href: 'https://youtu.be/aG300vtQ1es', isMobileView: true),
    ],
  ),
  NasaSound(
    //mobile view
    name: 'Pismis 24',
    source: 'Hubble',
    description:
        "Pismis 24 is a stunning star cluster that lies within the nebula NGC 6357, which resides about 8,000 light-years away. In this sonification of the Hubble image, a top-down scan maps brightness to volume and pitch for both the stars and nebula. The stars are assigned to musical pitches played on a classical guitar (brighter stars are louder and higher pitched), and the nebula uses a continuous range of frequencies (brighter regions are louder and higher pitched). Red, green, and blue channels are mapped to low, medium, and high frequency ranges, respectively.",
    links: [
      SoundLink(href: 'https://youtu.be/KAIm5UE3Rvg', isMobileView: true),
    ],
  ),
  //---
  NasaSound(
    name: 'NGC 1300',
    source: 'Hubble',
    description:
        "The majestic barred spiral galaxy NGC 1300’s arms hold blue clusters of young stars, pink clouds of star formation, and dark lanes of dust. NGC 1300 is considered to be prototypical of barred spiral galaxies. Barred spirals differ from normal spiral galaxies in that the arms of the galaxy do not spiral all the way into the center, but are connected to the two ends of a straight bar of stars containing the nucleus at its center. In this image, blue and red supergiant stars, star clusters, and star-forming regions are well resolved by Hubble across the spiral arms, and dust lanes trace out fine structures in the disk and bar. Numerous more distant galaxies are visible in the background, and are seen even through the densest regions of NGC 1300.\nTo represent this image with sound, scientists assigned louder volume to brighter light. Light farther from the center is pitched higher as a counterclockwise radar scans across the galaxy. NGC 1300 resides nearly 70 million light-years away in the constellation Eridanus.",
    links: [
      SoundLink(href: 'https://youtu.be/zyf1UDm-GyU'),
    ],
  ),
  NasaSound(
    name: 'Black Hole at the Center of Galaxy M87',
    source: 'Chandra, Hubble, ALMA',
    description:
        "Studied by scientists for decades, the black hole in Messier 87 (M87) gained celebrity status after the first release from the Event Horizon Telescope (EHT) project in 2019. This sonification does not feature the EHT data, but rather looks at data from other telescopes that observed M87 on much wider scales at roughly the same time. This image of a jet emerging from the nucleus of M87 contains three panels that feature: X-rays from the Chandra X-ray Observatory, visible light from Hubble, and radio waves from the Atacama Large Millimeter Array in Chile. The brightest region of the image is where the black hole is found, and the structure ejecting from it is the jet, produced by material falling onto the black hole. The sonification scans from left to right across the three-tiered image, with each wavelength mapped to a different range of audible tones. Radio waves are mapped to the lowest tones, visible data to medium tones, and X-rays to the highest tones. The brightest part of the image corresponds to the loudest portion of the sonification, which is where astronomers find the 6.5-billion solar mass black hole.",
    links: [
      SoundLink(href: 'https://youtu.be/sKSVIbUNa3k', isMobileView: true),
    ],
  ),
  NasaSound(
    name: 'NGC 1569',
    source: 'Hubble',
    description:
        "Welcome to one of the most active galaxies in our cosmic neighborhood, NGC 1569. This starburst galaxy creates stars at a rate 100 times faster than in our own galaxy, the Milky Way! Scientists represented information in this Hubble image with sound to create a beautiful sonification with a bottom to top scan. Brighter light is higher pitched and louder. The three color channels used to process this image are each given their own pitch range, with red representing lower pitches, green in medium pitches, and blue in high pitches.",
    links: [
      SoundLink(href: 'https://youtu.be/w8rr5lDOnlY'),
    ],
  ),
  NasaSound(
    name: 'Hoag\'s Object',
    source: 'Hubble',
    description:
        "Stretching over 100,000 light-years across, the galaxy dubbed Hoag’s Object is slightly larger than our own home galaxy, the Milky Way. The blue ring is dominated by clusters of young, massive stars, while the yellow nucleus consists of mostly older stars. In this sonification, a clockwise radar scan transforms data in the image into sound. Bright light is represented with louder volume, and light farther from the center is higher-pitched.",
    links: [
      SoundLink(href: 'https://youtu.be/Xo3HajfkrKQ'),
    ],
  ),
  NasaSound(
    name: 'Bubble Nebula',
    source: 'Hubble',
    description:
        "In this Hubble image, a super-hot, massive star is blowing an enormous bubble into space. Fittingly named the Bubble Nebula, this beautiful cosmic object is roughly seven light-years across and resides 7,100 light-years from Earth.\nScanned from top to bottom, color is mapped to pitch in this sonification of the nebula. The bright blue of the bubble can be heard as higher pitches; the red and orange regions’ lower pitches are heard most clearly at the beginning on the left and in the top half of the bubble in the middle. Brightness controls the volume and stars are represented by chimes.",
    links: [
      SoundLink(href: 'https://youtu.be/buCP1UtT9I0'),
    ],
  ),
  NasaSound(
    name: 'Butterfly Nebula',
    source: 'Hubble',
    description:
        "This spectacular Hubble image of the Butterfly Nebula shows a colorful view of star death. The \"wings\" of the butterfly are regions of gas heated to more than 36,000° F (about 20,000° C) that are tearing across space at more than 600,000 miles an hour (966,000 kph)!\nThis sonification scans left to right. Vertical position is mapped to pitch – meaning that light towards the top of the image is higher pitched. The nebula is played on strings and synthetic tones, while stars are represented by digital harp. Brightness controls the volume, and the tilted hourglass orientation of the nebula produces an overall rising motion, with the prominent iron-rich jet producing a quick rise near the center.",
    links: [
      SoundLink(href: 'https://youtu.be/GR_KWvtyUbM'),
    ],
  ),
  NasaSound(
    name: 'NGC 2392',
    source: 'Hubble',
    description:
        "About 5,000 light-years from Earth, the stunning nebula NGC 2392 formed after the demise of a star like our Sun. The fuzzy outer region of this nebula is a disk of material embellished with a ring of comet-shaped objects, with their tails streaming away from the central, dying star. The inner nebula's bright central region that resembles a ball of twine is really a bubble of material being blown into space by the central star's intense \"wind\" of high-speed material.\nIn this sonification, the image is scanned clockwise like a radar. The radius is mapped to pitch, so light farther from the center is higher pitched. The outline of the nebula’s shell can be heard in the rising and falling of pitch, punctuated by its spokes. Brightness controls the volume.",
    links: [
      SoundLink(href: 'https://youtu.be/sxa_dcq5IQg'),
    ],
  ),
  NasaSound(
    name: 'Westerlund 2',
    source: 'Hubble',
    description:
        "This is a cluster of young stars – about one to two million years old – located about 20,000 light-years from Earth. In its visual image form, data from Hubble (green and blue) reveals thick clouds where stars are forming, while X-rays seen by Chandra (purple) penetrate through that haze. In the sonified version of this data, sounds sweep from left to right across the field of view with brighter light producing louder sound. The pitch of the notes indicates the vertical position of the sources in the image with the higher pitches towards the top of the image. The Hubble data is played by strings, either plucked for individual stars or bowed for diffuse clouds. Chandra’s X-ray data is represented by bells, and the more diffuse X-ray light is played by more sustained tones.",
    links: [
      SoundLink(href: 'https://youtu.be/ESz8Cvirh00'),
    ],
  ),
  NasaSound(
    name: 'Hubble Ultra Deep Field (2014)',
    source: 'Hubble',
    description:
        "This sonification of the 2014 Hubble Ultra Deep Field plays a single note for each galaxy in the image. The later the note plays in this musical piece, the farther away the galaxy is. The pitch of the note indicates the galaxy’s color (lower notes are redder, higher notes are bluer) and the volume indicates the galaxy’s apparent size. In just under a minute, we can hear back nearly 13 billion years to the farthest galaxies in that photo. The light we see from those galaxies was emitted when the universe was only a few hundred million years old.\nAstronomers previously studied the Hubble Ultra Deep Field, a small section of space in the southern hemisphere constellation Fornax, in visible and near-infrared light in a series of images captured from 2003 to 2009. In this 2014 image, astronomers combined the full range of wavelengths available to Hubble, stretching all the way from ultraviolet to near-infrared light. The resulting image contains approximately 10,000 galaxies.",
    links: [
      SoundLink(href: 'https://youtu.be/eKAfIVjyNiU'),
    ],
  ),
  NasaSound(
    name: 'Whirlpool Galaxy',
    source: 'Hubble',
    description:
        "The Whirlpool Galaxy (M51) is named for its face-on orientation to Earth, which reveals its winding spiral arms. The sonification begins at the top of the image and moves radially around the image in a clockwise direction. The radius is mapped to notes of a melodic minor scale. Each wavelength of light in the image is mapped to a limited range of pitches, from low to high pitch, which corresponds to low to high light frequency: infrared, optical, ultraviolet, and then X-ray. The sequence begins with sounds from all four types of light, but then separately moves through the data from Spitzer (infrared), Hubble (visible), GALEX (ultraviolet), and Chandra (x-ray). At wavelengths in which the spiral arms are prominent, the pitches creep upward as the spiral reaches farther from the core. A constant, low hum associated with the bright core can be heard, punctuated by short sounds from compact sources of light within the galaxy.",
    links: [
      SoundLink(href: 'https://youtu.be/kM2_Zq7DqUo', isMobileView: true),
    ],
  ),

  //---
  NasaSound(
    name: 'Cat\'s Eye Nebula',
    source: 'Hubble',
    description:
        "When a star like the Sun begins to run out of helium to burn, it will blow off huge clouds of gas and dust. These outbursts can form spectacular structures such as the one seen in the Cat's Eye Nebula. This image of the Cat's Eye contains both X-rays from Chandra (around the center) and visible light data from the Hubble Space Telescope, which show the series of bubbles expelled by the star over time. A radar-like scan of the image emanates from the center point of the nebula and moves clockwise to produce pitch. Light that is further from the center is heard as higher pitches while brighter light is louder. The X-rays are represented by a harsher sound, while the visible light data sound smoother. The circular rings of the Cat’s Eye create a constant hum, interrupted by a few sounds from spokes in the data. The rising and falling pitches that can be heard are due to the radar scan passing across the shells and jets in the nebula.",
    links: [
      SoundLink(href: 'https://youtu.be/HfFoUWm3NDA'),
    ],
  ),
];

final List<NasaSound> chandraXraySounds = [
  NasaSound(
    name: 'Galactic Center',
    source: 'chandra',
    description:
        "Explore the center of our very own Milky Way galaxy! The translation begins on the left side of the image and moves to the right, with the sounds representing the position and brightness of the sources. The light of objects located towards the top of the image are heard as higher pitches while the intensity of the light controls the volume. Stars and compact sources are converted to individual notes while extended clouds of gas and dust produce an evolving drone. The crescendo happens when we reach the bright region to the lower right of the image. This is where the 4-million-solar-mass supermassive black hole at the center of the Galaxy, known as Sagittarius A*, resides, and where the clouds of gas and dust are the brightest.\nUsers can listen to data from this region, roughly 400 light years across, either as \"solos\" from NASA's Chandra X-ray Observatory, Hubble Space Telescope, and Spitzer Space Telescope, or together as an ensemble in which each telescope plays a different instrument. Each image reveals different phenomena happening in this region about 26,000 light years from Earth. The Hubble image outlines energetic regions where stars are being born, while Spitzer's infrared data show glowing clouds of dust containing complex structures. X-rays from Chandra reveal gas heated to millions of degrees from stellar explosions and outflows from Sagittarius A*.",
    links: [
      SoundLink(
        variation: 'Composite',
        href: 'https://chandra.si.edu/sound/sounds/galactic_all.mp4',
      ),
      SoundLink(
        variation: 'X-Ray',
        href: 'https://chandra.si.edu/sound/sounds/galactic_xray.mp4',
      ),
      SoundLink(
        variation: 'Infrared',
        href: 'https://chandra.si.edu/sound/sounds/galactic_ir.mp4',
      ),
      SoundLink(
        variation: 'Optical',
        href: 'https://chandra.si.edu/sound/sounds/galactic_optical.mp4',
      ),
    ],
  ),
  NasaSound(
    name: 'Cassiopeia A',
    source: 'chandra',
    description:
        "This sonified piece is of the remains of a supernova called Cassiopeia A, or Cas A. In Cas A, the sounds are mapped to four elements found in the debris from the exploded star as well as other high-energy data. The distribution of silicon, sulfur, calcium, and iron are revealed moving outward from the center of the remnant, starting from the location of the neutron star, in four different directions, with intensity again controlling the volume. There is also a fifth audio path moving along the upper left jet.",
    links: [
      SoundLink(
        variation: 'Composite',
        href: 'https://chandra.si.edu/sound/sounds/casa_all.mp4',
      ),
      SoundLink(
        variation: 'Sulfur',
        href: 'https://chandra.si.edu/sound/sounds/casa_sulfur.mp4',
      ),
      SoundLink(
        variation: 'Silicon',
        href: 'https://chandra.si.edu/sound/sounds/casa_silicon.mp4',
      ),
      SoundLink(
        variation: 'Calcium',
        href: 'https://chandra.si.edu/sound/sounds/casa_calcium.mp4',
      ),
      SoundLink(
        variation: 'Iron',
        href: 'https://chandra.si.edu/sound/sounds/casa_iron.mp4',
      ),
      SoundLink(
        variation: 'Blastwave',
        href: 'https://chandra.si.edu/sound/sounds/casa_blastwave.mp4',
      ),
      SoundLink(
        variation: 'Jet',
        href: 'https://chandra.si.edu/sound/sounds/casa_jet.mp4',
      ),
    ],
  ),
  NasaSound(
    name: 'M16/Pillars of Creation',
    source: 'chandra',
    description:
        "In the “Pillars of Creation” piece, the sounds are generated by moving horizontally across the image from left to right as seen in both optical and X-ray light. As with the sonification of the Galactic Center, the vertical position of the recorded light controls the pitch, but in this case it varies over a continuous range of pitches. Particular attention is paid to the structure of the pillars which can be heard as sweeps from low to high pitches and back. The two different \"melodies\" of optical and X-ray light can be enjoyed individually or simultaneously.",
    links: [
      SoundLink(
        variation: 'Composite',
        href: 'https://chandra.si.edu/sound/sounds/m16_all.mp4',
      ),
      SoundLink(
        variation: 'X-ray',
        href: 'https://chandra.si.edu/sound/sounds/m16_xray.mp4',
      ),
      SoundLink(
        variation: 'Optical',
        href: 'https://chandra.si.edu/sound/sounds/m16_optical.mp4',
      ),
    ],
  ),
  NasaSound(
    name: 'Bullet Cluster',
    source: 'chandra',
    description:
        "This image of the Bullet Cluster (officially known as 1E 0657-56) provided the first direct proof of dark matter, the mysterious unseen substance that makes up the vast majority of matter in the Universe. X-rays from Chandra (pink) show where the hot gas in two merging galaxy clusters has been wrenched away from dark matter, seen through a process known as “gravitational lensing” in data from Hubble (blue) and ground-based telescopes. In converting this into sound, the data pan left to right, and each layer of data was limited to a specific frequency range. Data showing dark matter are represented by the lowest frequencies, while X-rays are assigned to the highest frequencies. The galaxies in the image revealed by Hubble data, many of which are in the cluster, are in mid-range frequencies. Then, within each layer, the pitch is set to increase from the bottom of the image to the top so that objects towards the top produce higher tones.",
    links: [
      SoundLink(
        variation: 'Composite',
        href: 'https://chandra.si.edu/sound/sounds/bullet_all.mp4',
      ),
      SoundLink(
        variation: 'Optical',
        href: 'https://chandra.si.edu/sound/sounds/bullet_opt.mp4',
      ),
      SoundLink(
        variation: 'X-ray',
        href: 'https://chandra.si.edu/sound/sounds/bullet_xray.mp4',
      ),
      SoundLink(
        variation: 'Dark Matter',
        href: 'https://chandra.si.edu/sound/sounds/bullet_dm.mp4',
      ),
    ],
  ),
  NasaSound(
    name: 'Crab Nebula',
    source: 'chandra',
    description:
        "The Crab Nebula has been studied by people since it first appeared in Earth’s sky in 1054 A.D. Modern telescopes have captured its enduring engine powered by a quickly spinning neutron star that formed when a massive star collapsed. The combination of rapid rotation and a strong magnetic field generates jets of matter and anti-matter flowing away from its poles, and winds outward from its equator. For the translation of these data into sound, which also pans left to right, each wavelength of light has been paired with a different family of instruments. X-rays from Chandra (blue and white) are brass, optical light data from Hubble (purple) are strings, and infrared data from Spitzer (pink) can be heard in the woodwinds. In each case, light received towards the top of the image is played as higher pitched notes and brighter light is played louder.",
    links: [
      SoundLink(
        variation: 'Composite',
        href: 'https://chandra.si.edu/sound/sounds/crab_all.mp4',
      ),
      SoundLink(
        variation: 'Optical',
        href: 'https://chandra.si.edu/sound/sounds/crab_opt.mp4',
      ),
      SoundLink(
        variation: 'X-ray',
        href: 'https://chandra.si.edu/sound/sounds/crab_xray.mp4',
      ),
      SoundLink(
        variation: 'Infrared',
        href: 'https://chandra.si.edu/sound/sounds/crab_ir.mp4',
      ),
    ],
  ),
  NasaSound(
    name: 'Supernova 1987A (SN 87A)',
    source: 'chandra',
    description:
        "On February 24, 1987, observers in the southern hemisphere saw a new object in the Large Magellanic Cloud, a small satellite galaxy to the Milky Way. This was one of the brightest supernova explosions in centuries and soon became known as Supernova 1987A (SN 87A). This time lapse shows a series of Chandra (blue) and Hubble (orange and red) observations taken between 1999 and 2013. This shows a dense ring of gas, which was ejected by the star before it went supernova, begins to glow brighter as the supernova shockwave passes through. As the focus sweeps around the image, the data are converted into the sound of a crystal singing bowl, with brighter light being heard as higher and louder notes. The optical data are converted to a higher range of notes than the X-ray data so both wavelengths of light can be heard simultaneously. An interactive version lets the user play this astronomical instrument for themselves.",
    links: [
      SoundLink(
        variation: 'Composite',
        href: 'https://chandra.si.edu/sound/sounds/sn87a_all.mp4',
      ),
      SoundLink(
        variation: 'X-ray',
        href: 'https://chandra.si.edu/sound/sounds/sn87a_xray.mp4',
      ),
      SoundLink(
        variation: 'Optical',
        href: 'https://chandra.si.edu/sound/sounds/sn87a_opt.mp4',
      ),
    ],
  ),
  NasaSound(
    name: 'Eta Carinae',
    source: 'chandra',
    description:
        "Massive stars are known to have major outbursts. Eta Car, one of the most massive stars known, expelled about 10% of its mass in the Great Eruption, creating a small nebula, called the Homunculus Nebula, around it. Data captured in different wavelengths of light reveal different structures, each providing more information about the outbursts of Eta Car. This sonification translates the three-dimensional model of Eta Carinae as it spins around in the center. Data from NASA's Hubble Space Telescope are played first, with optical light followed by ultraviolet light, before moving to emission from hydrogen atoms, and then finally X-rays from Chandra. Each type of light is layered into the one before it, until the last piece of the sonification becomes a chorus of light and sound.",
    links: [
      SoundLink(
        href: 'https://chandra.si.edu/sound/sounds/etacar_sonification.mp4',
      ),
    ],
  ),
  NasaSound(
    name: 'M87 Jet',
    source: 'chandra',
    description:
        "Studied by scientists for decades, the black hole in Messier 87, or M87, gained celebrity status in science after the first release from the Event Horizon Telescope (EHT) project in 2019. This sonification does not feature the EHT data, but rather looks at data from other telescopes that observed M87 on much wider scales at roughly the same time. The image in visual form contains three panels that are, from top to bottom, X-rays from Chandra, optical light from NASA's Hubble Space Telescope, and radio waves from the Atacama Large Millimeter Array in Chile. The brightest region on the left of the image is where the black hole is found, and the structure to the upper right is a jet produced by the black hole. The jet is produced by material falling onto the black hole. The sonification scans across the three-tiered image from left to right, with each wavelength mapped to a different range of audible tones. Radio waves are mapped to the lowest tones, optical data to medium tones, and X-rays detected by Chandra to the highest tones. The brightest part of the image corresponds to the loudest portion of the sonification, which is where astronomers find the 6.5-billion solar mass black hole that EHT imaged.",
    links: [
      SoundLink(
        href: 'https://chandra.si.edu/sound/sounds/m87jet_sonification.mp4',
      ),
    ],
  ),
  NasaSound(
    name: 'Sagittarius A*',
    source: 'chandra',
    description:
        "This is a sonification — translation into sound — of the latest image from the Event Horizon Telescope of the supermassive black hole at the center of the Milky Way called Sagittarius A* (Sgr A*). Using a radar-like scan, the sonification begins at the 12 o'clock position and sweeps clockwise. Changes in volume represent the differences in brightness the EHT observed around the event horizon of Sgr A*. The material that is closer to the black hole and hence moving faster corresponds to higher frequencies of sound. This sonification was processed in a special way to allow a listener to hear the data in 3D stereo sound, in which the sounds seem to start directly ahead and then move clockwise to one ear then the other as the sweep is made.",
    links: [
      SoundLink(
        href: 'https://chandra.si.edu/sound/sounds/sgra_eht.mp4',
      ),
    ],
  ),
  NasaSound(
    name: 'V404 Cygni',
    source: 'chandra',
    description:
        "This sonification video of V404 Cygni features similar glowing concentric rings set against a black background. This time the radiation rings have been rendered in bright neon blue, representing data collected by the Chandra X-ray Observatory. Here, there are clean breaks in the visualized radiation at our upper corners and in a straight horizontal line across the center of the frame, as if portions of the rings were removed with swipes of an eraser. These blank spots represent areas outside of Chandra's field of view. As the thin white circle expands in this sonification video, the radiation it washes over is translated into higher-frequency popping sounds.",
    links: [
      SoundLink(
        href: 'https://chandra.si.edu/sound/sounds/v404cyg.mp4',
      ),
    ],
  ),
  NasaSound(
    name: 'Stephan’s Quintet',
    source: 'chandra',
    description:
        "In Stephan’s Quintet, four galaxies move around each other, held together by gravity, while a fifth galaxy sits in the frame but is actually at a much different distance. The pitch in a sonification of Chandra and James Webb data changes in relationship to the brightness in different ways. The background galaxies and foreground stars in the visual images Webb detects are mapped to different notes on a synthetic glass marimba. Meanwhile, stars with diffraction spikes are played as crash cymbals. The galaxies of Stephan’s Quintet themselves are heard as smoothly changing frequencies as the scan passes over them. The X-rays from Chandra, which reveal a shock wave that has superheated gas to tens of millions of degrees, are represented by a synthetic string sound.",
    links: [
      SoundLink(
        variation: 'Composite',
        href: 'https://chandra.si.edu/sound/sounds/stephansquintet_all.mp4',
      ),
      SoundLink(
        variation: 'X-ray',
        href: 'https://chandra.si.edu/sound/sounds/stephansquintet_xray.mp4',
      ),
      SoundLink(
        variation: 'Infrared',
        href:
            'https://chandra.si.edu/sound/sounds/stephansquintet_infrared.mp4',
      ),
    ],
  ),
  NasaSound(
    name: 'NGC 6543 (Cat’s Eye Nebula)',
    source: 'chandra',
    description:
        "When a star like the Sun begins to run out of helium to burn, it will blow off huge clouds of gas and dust. These outbursts can form spectacular structures such as the one seen in the Cat’s Eye nebula. This image of the Cat’s Eye contains both X-rays from Chandra around the center and visible light data from the Hubble Space Telescope, which show the series of bubbles expelled by the star over time. To listen to these data, there is a radar-like scan that moves clockwise emanating from the center point to produce pitch. Light that is further from the center is heard as higher pitches while brighter light is louder. The X-rays are represented by a harsher sound, while the visible light data sound smoother. The circular rings create a constant hum, interrupted by a few sounds from spokes in the data. The rising and falling pitches that can be heard are due to the radar scan passing across the shells and jets in the nebula.",
    links: [
      SoundLink(
        variation: 'Composite',
        href: 'https://chandra.si.edu/sound/sounds/ngc6543_all.mp4',
      ),
      SoundLink(
        variation: 'X-ray',
        href: 'https://chandra.si.edu/sound/sounds/ngc6543_xray.mp4',
      ),
      SoundLink(
        variation: 'Optical',
        href: 'https://chandra.si.edu/sound/sounds/ngc6543_opt.mp4',
      ),
    ],
  ),
  NasaSound(
    name: 'Chandra Deep Field',
    source: 'chandra',
    description:
        "This is the deepest image ever taken in X-rays, representing over seven million seconds of Chandra observing time. For that reason, and because the observed field is in the southern hemisphere, astronomers call this region the “Chandra Deep Field South”. At first glance, this image may appear to be a view of stars. Rather, almost all these different colored dots are black holes or galaxies. Most of the former are supermassive black holes that reside at the centers of galaxies. In this data sonification, the colors dictate the tones as the bar moves from the bottom of the image to the top. More specifically, colors toward the red end of the rainbow are heard as low tones while colors towards purple are assigned to higher ones. Light that appears bright white in the image is heard as white noise. The wide range of musical frequencies represents the full range of X-ray frequencies collected by Chandra of this region. In the visual color image, this large frequency range in X-rays had to be compressed to be shown as red, green, and blue for low, medium, and high-energy X-rays. Played as sound, however, all of the data can be experienced. As the piece scans upward, the stereo position of the sounds can help distinguish the position of the sources from left to right.",
    links: [
      SoundLink(
        href: 'https://chandra.si.edu/sound/sounds/CDF.mp4',
      ),
    ],
  ),
  NasaSound(
    name: 'Messier 51 (M51)',
    source: 'chandra',
    description:
        "This sonified piece is of the remains of a supernova called Cassiopeia A, or Cas A. In Cas A, the sounds are mapped to four elements found in the debris from the exploded star as well as other high-energy data. The distribution of silicon, sulfur, calcium, and iron are revealed moving outward from the center of the remnant, starting from the location of the neutron star, in four different directions, with intensity again controlling the volume. There is also a fifth audio path moving along the upper left jet.",
    links: [
      SoundLink(
        variation: 'Composite',
        href: 'https://chandra.si.edu/sound/sounds/m51_all_feb5.mp4',
      ),
      SoundLink(
        variation: 'X-ray',
        href: 'https://chandra.si.edu/sound/sounds/m51_xray_feb5.mp4',
      ),
      SoundLink(
        variation: 'Optical',
        href: 'https://chandra.si.edu/sound/sounds/m51_opt_feb5.mp4',
      ),
      SoundLink(
        variation: 'IR',
        href: 'https://chandra.si.edu/sound/sounds/m51_ir_feb5.mp4',
      ),
      SoundLink(
        variation: 'UV',
        href: 'https://chandra.si.edu/sound/sounds/m51_uv_feb5.mp4',
      ),
      SoundLink(
        variation: 'Sequence',
        href: 'https://chandra.si.edu/sound/sounds/m51_seq_feb20.mp4',
      ),
    ],
  ),
  NasaSound(
    name: 'Westerlund 2',
    source: 'chandra',
    description:
        "This is a cluster of young stars — about one to two million years old — located about 20,000 light-years from Earth. In its visual image form, data from Hubble (green and blue) reveals thick clouds where stars are forming, while X-rays seen from Chandra (purple) penetrate through that haze. In the sonified version of this data, sounds sweep from left to right across the field of view with brighter light producing louder sound. The pitch of the notes indicates the vertical position of the sources in the image with the higher pitches towards the top of the image. The Hubble data is played by strings, either plucked for individual stars or bowed for diffuse clouds. Chandra’s X-ray data is represented by bells, and the more diffuse X-ray light is played by more sustained tones.",
    links: [
      SoundLink(
        variation: 'Composite',
        href: 'https://chandra.si.edu/sound/sounds/wd2_all.mp4',
      ),
      SoundLink(
        variation: 'X-ray',
        href: 'https://chandra.si.edu/sound/sounds/wd2_xray.mp4',
      ),
      SoundLink(
        variation: 'Optical',
        href: 'https://chandra.si.edu/sound/sounds/wd2_opt.mp4',
      ),
    ],
  ),
  NasaSound(
    name: 'Tycho',
    source: 'chandra',
    description:
        "Beginning in the center, the sonification of the Tycho supernova remnant expands outward in a circle. The image contains X-ray data from Chandra where the various colors represent small bands of frequency that are associated with different elements that are moving both toward and away from Earth. For example, red shows iron, green is silicon, and blue represents sulfur. The sonification aligns with those colors as the redder light produces the lowest notes and blue and violet create the higher-pitched notes. Color varies over the remnant, but the lowest and highest notes (red and blue) dominate near the center and are joined by other colors (mid-range notes) towards the edge of the remnant. White corresponds to the full range of frequencies of light observable by Chandra, which is strongest toward the edge of the remnant. This light is converted to sound in a more direct way as well, by interpreting frequencies of light as frequencies of sound and then shifting them lower by 50 octaves so that they fall within the human hearing range. The different proportions of iron, silicon, and sulfur across the remnant can be heard in the changing amounts of the low-, mid-, and high-frequency peaks in the sound. The field of stars in the image as observed by Hubble is played as notes on a harp with the pitch determined by their color.",
    links: [
      SoundLink(
        variation: 'Composite',
        href: 'https://chandra.si.edu/sound/sounds/tycho_all.mp4',
      ),
      SoundLink(
        variation: 'X-ray',
        href: 'https://chandra.si.edu/sound/sounds/tycho_xray.mp4',
      ),
      SoundLink(
        variation: 'Optical',
        href: 'https://chandra.si.edu/sound/sounds/tycho_optical.mp4',
      ),
      SoundLink(
        variation: 'Spectra',
        href: 'https://chandra.si.edu/sound/sounds/tycho_spectra.mp4',
      ),
    ],
  ),
  NasaSound(
    name: 'Messier 87 (M87)',
    source: 'chandra',
    description:
        "The giant black hole in Messier 87 (M87 for short) and its surroundings have been studied for many years and by a range of telescopes including Chandra (blue) and the Very Large Array (red and orange). This data shows that the black hole in M87 is sending out massive jets of energetic particles that interact with vast clouds of hot gas that surround it. To translate the X-rays and radio waves into sound, the image is scanned beginning at the 3 o’clock position and sweeping clockwise like a radar. Light farther from the center is heard as higher pitched while brighter light is louder. The radio data are lower pitched than the X-rays, corresponding to their frequency ranges in the electromagnetic spectrum. The point-like sources in X-ray light, most of which represent stars in orbit around a black hole or neutron star, are played as short, plucked sounds.",
    links: [
      SoundLink(
        variation: 'Composite',
        href: 'https://chandra.si.edu/sound/sounds/m87_all.mp4',
      ),
      SoundLink(
        variation: 'X-ray',
        href: 'https://chandra.si.edu/sound/sounds/m87_xray.mp4',
      ),
      SoundLink(
        variation: 'Radio',
        href: 'https://chandra.si.edu/sound/sounds/m87_radio.mp4',
      ),
    ],
  ),
  NasaSound(
    name: 'Perseus Cluster',
    source: 'chandra',
    description:
        "Since 2003, the black hole at the center of the Perseus galaxy cluster has been associated with sound. This is because astronomers discovered that pressure waves sent out by the black hole caused ripples in the cluster's hot gas that could be translated into a note — one that humans cannot hear some 57 octaves below middle C. Now a new sonification brings more notes to this black hole sound machine. In some ways, this sonification is unlike any other done before because it revisits the actual sound waves discovered in data from NASA's Chandra X-ray Observatory. The popular misconception that there is no sound in space originates with the fact that most of space is essentially a vacuum, providing no medium for sound waves to propagate through. A galaxy cluster, on the other hand, has copious amounts of gas that envelop the hundreds or even thousands of galaxies within it, providing a medium for the sound waves to travel. In this sonification of Perseus, the sound waves astronomers previously identified were extracted and made audible for the first time. The sound waves were extracted in radial directions, that is, outwards from the center. The signals were then resynthesized into the range of human hearing by scaling them upward by 57 and 58 octaves above their true pitch. Another way to put this is that they are being heard 144 quadrillion and 288 quadrillion times higher than their original frequency. (A quadrillion is 1,000,000,000,000,000.) The radar-like scan around the image allows you to hear waves emitted in different directions. In the visual image of these data, blue and purple both show X-ray data captured by Chandra.",
    links: [
      SoundLink(
        href: 'https://chandra.si.edu/sound/sounds/perseus_sonification.mp4',
      ),
    ],
  ),
  NasaSound(
    name: 'Sagittarius A*',
    source: 'chandra',
    description:
        "This image shows the region around the Milky Way's central supermassive black hole, known as Sagittarius A* (Sgr A*), in infrared (orange and purple) and X-ray light (blue). The image is scanned from left to right and the data are transformed into sound. The brightness of the objects is represented by the volume, while the vertical positions of the sources in the image are mapped to musical pitches. X-rays are played with a soft synthesizer and the infrared data are heard as bass notes and plucked sounds. The brightest region in the middle of the image (and hence the loudest) is where Sgr A* the black hole, resides. It is within this area that the Event Horizon Telescope was able to peer to obtain the first image of Sgr A* itself.",
    links: [
      SoundLink(
        variation: 'Composite',
        href: 'https://chandra.si.edu/sound/sounds/sgra_sonify_comp.mp4',
      ),
      SoundLink(
        variation: 'X-ray',
        href: 'https://chandra.si.edu/sound/sounds/sgra_sonify_xray.mp4',
      ),
      SoundLink(
        variation: 'Near-infrared',
        href: 'https://chandra.si.edu/sound/sounds/sgra_sonify_ir_near.mp4',
      ),
      SoundLink(
        variation: 'Mid-infrared',
        href: 'https://chandra.si.edu/sound/sounds/sgra_sonify_ir_mid.mp4',
      ),
    ],
  ),
  NasaSound(
    name: 'Carina Nebula',
    source: 'chandra',
    description:
        "Sonifications map a near-infrared image of the Cosmic Cliffs in the Carina Nebula, captured by NASA’s Webb Telescope, to a symphony of sounds. Musicians assigned unique notes to the semi-transparent, gauzy regions and very dense areas of gas and dust in the nebula, culminating in a buzzing soundscape.\nThe sonification scans the image from left to right. The new sounds were also adapted to a video, allowing sighted viewers to watch as a vertical line moves across the frame.\nThe soundtrack is vibrant and full, representing the detail in this gigantic, gaseous cavity that has the appearance of a mountain range. The Carina Nebula is a large cloud of gas and dust where stars are forming or have already formed.\nThe gas and dust in the top half of the image are represented in blue hues and windy, drone-like sounds. The bottom half of the image, represented in ruddy shades of orange and red, has a clearer, more melodic composition.",
    links: [
      SoundLink(
        variation: 'All',
        href: 'https://chandra.si.edu/sound/sounds/carina.mp4',
      ),
      SoundLink(
        variation: 'Top Only',
        href: 'https://chandra.si.edu/sound/sounds/carina_top.mp4',
      ),
      SoundLink(
        variation: 'Bottom Only',
        href: 'https://chandra.si.edu/sound/sounds/carina_bottom.mp4',
      ),
      SoundLink(
        variation: 'Stars Only',
        href: 'https://chandra.si.edu/sound/sounds/carina_stars.mp4',
      ),
    ],
  ),
  NasaSound(
    name: 'R Aquarii',
    source: 'chandra',
    description:
        "R Aquarii is a system with two stars — a white dwarf and a red giant — in orbit around each other. In the sonification of R Aquarii, the volume changes in proportion to the brightness of sources in Hubble’s visible light and Chandra’s X-ray image, while the distance from the center dictates the musical pitch, meaning the higher notes are farther out. We can hear jets from the white dwarf as the cursor travels near the two o’clock and eight o’clock positions. The ribbon-like arcs captured by Hubble create a rising and falling melody that sounds similar to a set of singing bowls. These are metal bowls that produce different sounds and tones when struck with a mallet. Meanwhile the Chandra data are rendered to sound more like a synthetic and windy purr.",
    links: [
      SoundLink(
        variation: 'Composite',
        href: 'https://chandra.si.edu/sound/sounds/raquarii_all.mp4',
      ),
      SoundLink(
        variation: 'X-ray',
        href: 'https://chandra.si.edu/sound/sounds/raquarii_xray.mp4',
      ),
      SoundLink(
        variation: 'Optical',
        href: 'https://chandra.si.edu/sound/sounds/raquarii_opt.mp4',
      ),
    ],
  ),
  NasaSound(
    name: 'Messier 104 (M104)',
    source: 'chandra',
    description:
        "The third sonification in this new batch is Messier 104, or M104 for short, one of the largest galaxies in the nearby Virgo cluster. As we it from from Earth, the galaxy is angled nearly edge-on. This allows us a view of the spiral galaxy’s bright core and spiral arms wrapped around it. In sonifying Chandra, Spitzer, and Hubble data of M104, we begin at the top and scans toward the bottom of the image. The brightness controls the volume and the pitch, meaning the brightest sources in the image are the loudest and highest frequencies. The data from the three telescopes are mapped to different types of sounds. The X-rays from Chandra sound like a synthesizer, Spitzer’s infrared data are strings, and optical light from Hubble has bell-like tones. The core of the galaxy, its dust lanes and spiral arms, and point-like X-ray sources are all audible features in the sonification of these data.",
    links: [
      SoundLink(
        href: 'https://chandra.si.edu/sound/sounds/m104_all.mp4',
      ),
    ],
  ),
];
