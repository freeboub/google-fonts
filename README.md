<p align="center">
  <a href="https://github.com/freeboub/google-fonts">
    <img alt="Expo Google Fonts" src="./gifs/title.gif">
  </a>
</p>

<p align="center">Use any of the 1805 fonts and 6781 variants from <a href="https://fonts.google.com" target="_blank">fonts.google.com</a> in your Expo app</p>

<p align="center">
  <a aria-label="npm version" href="https://www.npmjs.com/org/expo-google-fonts" target="_blank">
    <img alt="expo-google-fonts npm version" src="https://flat.badgen.net/npm/v/expo-google-fonts-dev" />
  </a>
  <a aria-label="Expo is free to use" href="https://github.com/expo/expo/blob/master/LICENSE" target="_blank">
    <img alt="License: MIT" src="https://flat.badgen.net/github/license/expo/google-fonts" target="_blank" />
  </a>
</p>

<p>
  <a aria-label="Follow @expo on Twitter" href="https://twitter.com/intent/follow?screen_name=expo" target="_blank">
    <img  alt="Twitter: expo" src="https://img.shields.io/twitter/follow/expo.svg?style=flat-square&label=Follow%20%40expo&logo=TWITTER&logoColor=FFFFFF&labelColor=00aced&logoWidth=15&color=lightgray" target="_blank" />
  </a>
  <a aria-label="Follow Expo on Medium" href="https://blog.expo.io">
    <img align="right" alt="Medium: exposition" src="https://img.shields.io/badge/Learn%20more%20on%20our%20blog-lightgray.svg?style=flat-square" target="_blank" />
  </a>
</p>

---

# expo-google-fonts

The `@expo-google-fonts` packages for Expo allow you to easily use
any of 1805 fonts (and their variants) from
[fonts.google.com](https://fonts.google.com) in your Expo app.

These packages and all these fonts work across web, iOS, and Android and
are free to use and open source.

## Disclaimer

This package is a fork of [@expo/google-fonts](https://github.com/expo/google-fonts).
It is an updated version of the original package (many font are missing).
It also bring an interesting feature which is the ability to load only selected font from generated packages.

To update your application, you need to update your package.json
```package.json
   "@expo-google-fonts/inter": "2.3.0",
```

To:
```package.json
"expo-google-fonts-inter": "3.0.0",
```

And update your imports from:
```js
import { Inter_900Black, Inter_700Bold } from '@expo-google-fonts/inter';
```
To:
```js
import { Inter_900Black } from 'expo-google-fonts-inter/900Black';
import { Inter_700Bold } from 'expo-google-fonts-inter/700Bold';
```
Then all unused font will not be included in your final application.

## Usage

Here is an example of using the [Inter font family](https://fonts.google.com/specimen/Inter) in a very simple project.

#### Install the package for the font you want

```sh
expo install expo-google-fonts-inter expo-font
```

#### In your app

```js
import React, { useState, useEffect } from 'react';

import { Text, View, StyleSheet } from 'react-native';
import {
  Inter_900Black,
} from 'expo-google-fonts-inter/900Black';

import {
  useFonts,
} from 'expo-google-fonts-useFonts';

export default () => {
  let [fontsLoaded] = useFonts({
    Inter_900Black,
  });

  if (!fontsLoaded) {
    // replace by you splash screen UI
    return undefined;
  } else {
    return (
      <View style={{ flex: 1, justifyContent: 'center', alignItems: 'center' }}>

        <Text style={{ fontFamily: 'Inter_900Black' }}>
          Inter Black
        </Text>

      </View>
    );
  }
};

```


### Example Project

Here is a [minimal but complete example](https://github.com/freeboub/google-fonts/tree/master/example).

Each individual font family package README includes a complete example of using that font family.

## 🔡 Available Fonts

You can browse all available Google Fonts on [fonts.google.com](https://fonts.google.com).

[directory-by-atiladev-com.netlify.app](https://directory-by-atiladev-com.netlify.app/) is a directory / search engine that will
let you browse and search through all of the available fonts and show you the appropriate
`import` statements you'll need so you can copy & paste into your own code.

Here are a few examples of the 6781 variants of 1805 fonts available:


||||
|-|-|-|
|[![Inter](./font-packages/inter/400Regular/Inter_400Regular.ttf.png)](https://github.com/freeboub/google-fonts/tree/master/font-packages/inter#readme)|[![Manrope](./font-packages/manrope/400Regular/Manrope_400Regular.ttf.png)](https://github.com/freeboub/google-fonts/tree/master/font-packages/manrope#readme)|[![Allan](./font-packages/allan/400Regular/Allan_400Regular.ttf.png)](https://github.com/freeboub/google-fonts/tree/master/font-packages/allan#readme)|
|[![Roboto](./font-packages/roboto/400Regular/Roboto_400Regular.ttf.png)](https://github.com/freeboub/google-fonts/tree/master/font-packages/roboto#readme)|[![Lusitana](./font-packages/lusitana/400Regular/Lusitana_400Regular.ttf.png)](https://github.com/freeboub/google-fonts/tree/master/font-packages/lusitana#readme)|[![Nunito](./font-packages/nunito/400Regular/Nunito_400Regular.ttf.png)](https://github.com/freeboub/google-fonts/tree/master/font-packages/nunito#readme)|
|[![Bangers](./font-packages/bangers/400Regular/Bangers_400Regular.ttf.png)](https://github.com/freeboub/google-fonts/tree/master/font-packages/bangers#readme)|[![SourceSans3](./font-packages/source-sans-3/400Regular/SourceSans3_400Regular.ttf.png)](https://github.com/freeboub/google-fonts/tree/master/font-packages/source-sans-3#readme)|[![RobotoCondensed](./font-packages/roboto-condensed/400Regular/RobotoCondensed_400Regular.ttf.png)](https://github.com/freeboub/google-fonts/tree/master/font-packages/roboto-condensed#readme)|
|[![PlayfairDisplay](./font-packages/playfair-display/400Regular/PlayfairDisplay_400Regular.ttf.png)](https://github.com/freeboub/google-fonts/tree/master/font-packages/playfair-display#readme)|[![Ubuntu](./font-packages/ubuntu/400Regular/Ubuntu_400Regular.ttf.png)](https://github.com/freeboub/google-fonts/tree/master/font-packages/ubuntu#readme)|[![Oswald](./font-packages/oswald/400Regular/Oswald_400Regular.ttf.png)](https://github.com/freeboub/google-fonts/tree/master/font-packages/oswald#readme)|
|[![BalsamiqSans](./font-packages/balsamiq-sans/400Regular/BalsamiqSans_400Regular.ttf.png)](https://github.com/freeboub/google-fonts/tree/master/font-packages/balsamiq-sans#readme)|[![Jost](./font-packages/jost/400Regular/Jost_400Regular.ttf.png)](https://github.com/freeboub/google-fonts/tree/master/font-packages/jost#readme)|[![Lato](./font-packages/lato/400Regular/Lato_400Regular.ttf.png)](https://github.com/freeboub/google-fonts/tree/master/font-packages/lato#readme)|


There is also a [gallery in this repo](./GALLERY.md#readme) showing every font family and variant available.

## 👩‍💻 expo-google-fonts-dev


If you are trying out lots of different fonts, you can try using the [`expo-google-fonts-dev` package](https://github.com/freeboub/google-fonts/tree/master/font-packages/dev#readme).

You can import *any* font style from any Expo Google Fonts package from it. It will load the fonts
over the network at runtime instead of adding the asset as a file to your project, so it may take longer
for your app to get to interactivity at startup, but it is extremely convenient
for playing around with any style that you want.

## 📖 Licensing

The Expo Google Fonts project and its code are licensed under the MIT License.

All the fonts in the Google Fonts catalog are free and open source.

Individual fonts have their own licenses. Many are licensed using the
[Open Font License](https://scripts.sil.org/cms/scripts/page.php?site_id=nrsi&id=OFL).
For example, [Nunito](https://fonts.google.com/specimen/Nunito) uses the OFL.
Check the Google Fonts pages of the font families you are using and add those licenses to
your project's licenses list when you publish.

#### Q: Can I use these fonts commercially: to make a logo, in my app, on my website, etc.?

A: You can use these fonts freely in your products & projects - print or digital, commercial or otherwise. However, you can't sell the fonts on their own. This isn't legal advice, please consider consulting a lawyer and see the full license for all details.

## 🤝 Contributing

Contributions are very welcome! Note that everything under `font-packages` and also this README are generated.
So, please make any changes you want to make to the [generator](https://github.com/freeboub/google-fonts/tree/master/packages/generator#readme) instead of the packages themselves.

### Authors

- Charlie Cheever ([@ccheever](https://github.com/ccheever)) - Expo
- Leandro Favre ([@AtilaDev](https://github.com/AtilaDev)) - AtilaDev
- Cedric van Putten ([@byCedric](https://github.com/byCedric)) - Expo
- Olivier Bouillet ([@freeboub](https://github.com/freeboub)) - Azzapp

## 🔗 Links

- [Google Fonts](https://fonts.google.com)
- [Using Custom Fonts Guide in the Expo docs](https://docs.expo.dev/develop/user-interface/fonts/#use-a-custom-font)
- [`google_fonts` Flutter Package](https://pub.dev/packages/google_fonts)
- [Gallery of all available styles in Expo Google Fonts](./GALLERY.md)
- [Generation of these packages and this readme](https://github.com/freeboub/google-fonts/tree/master/packages/generator#readme)

