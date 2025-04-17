// ignore_for_file: lines_longer_than_80_chars

Map<String, Map<String, dynamic>> htmlJsonExpected = {
  'https://www.allrecipes.com': {
    '@context': 'http://schema.org',
    '@type': ['Recipe', 'NewsArticle'],
    'headline': 'Cranberry Cheese Ball',
    'datePublished': '2024-11-09T11:00:00.000-05:00',
    'dateModified': '2024-11-09T11:00:00.000-05:00',
    'author': [
      {
        '@type': 'Person',
        'name': 'Juliana Hale',
        'url': 'https://www.allrecipes.com/author/juliana-hale/',
      }
    ],
    'description':
        'This cranberry cheese ball with orange zest, sharp white Cheddar cheese, and garlic is simply delicious. The red and green color combination from cranberries and chives make it look extra festive and it&#39;s the perfect holiday appetizer.',
    'image': {
      '@type': 'ImageObject',
      'url':
          'https://www.allrecipes.com/thmb/2oUZc4nK-xuUYYPkIhGLD5SU6Yg=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/8726774-Cranberry-Cheese-Ball-ddmfs-hero-4x3-17403-29c16f7a15dc41df9434296721e8e641.jpg',
      'height': 1125,
      'width': 1500,
    },
    'publisher': {
      '@type': 'Organization',
      'name': 'Allrecipes',
      'url': 'https://www.allrecipes.com',
      'logo': {
        '@type': 'ImageObject',
        'url':
            'https://www.allrecipes.com/thmb/Z9lwz1y0B5aX-cemPiTgpn5YB0k=/112x112/filters:no_upscale():max_bytes(150000):strip_icc()/allrecipes_logo_schema-867c69d2999b439a9eba923a445ccfe3.png',
        'width': 112,
        'height': 112,
      },
      'brand': 'Allrecipes',
      'publishingPrinciples':
          'https://www.allrecipes.com/about-us-6648102#toc-editorial-guidelines',
      'sameAs': [
        'https://www.facebook.com/allrecipes',
        'https://www.instagram.com/allrecipes/',
        'https://www.pinterest.com/allrecipes/',
        'https://www.tiktok.com/@allrecipes',
        'https://www.youtube.com/user/allrecipes/videos',
        'https://twitter.com/Allrecipes',
        'https://flipboard.com/@Allrecipes',
        'https://en.wikipedia.org/wiki/Allrecipes.com',
        'http://linkedin.com/company/allrecipes.com',
      ],
    },
    'name': 'Cranberry Cheese Ball',
    'aggregateRating': {
      '@type': 'AggregateRating',
      'ratingValue': '5',
      'ratingCount': '1',
    },
    'nutrition': {
      '@type': 'NutritionInformation',
      'calories': '134 kcal',
      'carbohydrateContent': '6 g',
      'cholesterolContent': '29 mg',
      'fiberContent': '0 g',
      'proteinContent': '3 g',
      'saturatedFatContent': '6 g',
      'sodiumContent': '113 mg',
      'sugarContent': '5 g',
      'fatContent': '11 g',
      'unsaturatedFatContent': '0 g',
    },
    'prepTime': 'PT15M',
    'recipeCategory': ['Appetizer'],
    'recipeCuisine': ['American'],
    'recipeIngredient': [
      '1/4 cup cranberry juice cocktail',
      '1/2 cup dried cranberries, snipped, divided',
      '1 (8-ounce) pkg. cream cheese',
      '4 ounces sharp white cheddar cheese, shredded (1 cup)',
      '1/4 cup butter',
      '2 tablespoons snipped fresh chives, divided',
      '1/2 teaspoon orange zest',
      '1/2 teaspoon packed brown sugar',
      '1/2 teaspoon garlic powder',
      '1/4 cup pecans, toasted and finely chopped',
      'Crackers, crostini, and/or vegetable dippers',
    ],
    'recipeInstructions': [
      {
        '@type': 'HowToStep',
        'image': [
          {
            '@type': 'ImageObject',
            'url':
                'https://www.allrecipes.com/thmb/6pZBhSnVzCXYrJ3222cP7m-5GuI=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/8726774-Cranberry-Cheese-Ball-ddmfs-Step-01-17155-4e00ac4308224c499547279f25ec0e75.jpg',
          }
        ],
        'text': 'Gather all ingredients. ',
      },
      {
        '@type': 'HowToStep',
        'image': [
          {
            '@type': 'ImageObject',
            'url':
                'https://www.allrecipes.com/thmb/EMMqTZfdOvcxtX7bSjSvwwvhBYc=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/8726774-Cranberry-Cheese-Ball-ddmfs-Step-02-17159-2bcd388e73624eb8a4c416fbc616adc6.jpg',
          }
        ],
        'text':
            'Bring cranberry juice just to a boil in a small saucepan. Remove from heat. Add 1/4 cup dried cranberries. Cover; set aside.',
      },
      {
        '@type': 'HowToStep',
        'image': [
          {
            '@type': 'ImageObject',
            'url':
                'https://www.allrecipes.com/thmb/0sSs_LPda_k_iYdBJmmkFzeguCw=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/8726774-Cranberry-Cheese-Ball-ddmfs-Step-03-17162-6dac37838d1c4a26b2c97038669f6f23.jpg',
          }
        ],
        'text':
            'Place cream cheese, Cheddar cheese, and butter in a large bowl. Let stand at room temperature for 30 minutes.',
      },
      {
        '@type': 'HowToStep',
        'image': [
          {
            '@type': 'ImageObject',
            'url':
                'https://www.allrecipes.com/thmb/rvH5jKaUjrpbNQ8mwsw-1k8a2PQ=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/8726774-Cranberry-Cheese-Ball-ddmfs-Step-04-17164-583c59c8e596436aa3f6c09d0c7199de.jpg',
          }
        ],
        'text':
            'Drain cranberries, reserving 1 tablespoon juice. Add plumped cranberries and reserved juice to the bowl with the cheese mixture. Add 1 tablespoon chives, orange zest, brown sugar, and garlic powder. Beat with an electric mixer on medium until light and fluffy. ',
      },
      {
        '@type': 'HowToStep',
        'image': [
          {
            '@type': 'ImageObject',
            'url':
                'https://www.allrecipes.com/thmb/Bwt-Ze5sappOMqvG6zDnsZns8sM=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/8726774-Cranberry-Cheese-Ball-ddmfs-Step-05-17167-dbb0fb5c6aba4c649339d7d63d893639.jpg',
          }
        ],
        'text':
            'Place cheese mixture on a sheet of plastic wrap. Use the plastic wrap to shape the mixture into a ball (it won’t be a perfect shape at this point). Wrap in the plastic wrap and chill in the refrigerator for 3 to 24 hours.',
      },
      {
        '@type': 'HowToStep',
        'image': [
          {
            '@type': 'ImageObject',
            'url':
                'https://www.allrecipes.com/thmb/-EOwqt61n0HSUJv83MwmReJP0yU=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/8726774-Cranberry-Cheese-Ball-ddmfs-Step-06-17352-460d3f3a8c5a4b27a88e84fa7fde964d.jpg',
          }
        ],
        'text':
            'Now you can make a better ball shape by rolling the wrapped mixture on your work surface.',
      },
      {
        '@type': 'HowToStep',
        'image': [
          {
            '@type': 'ImageObject',
            'url':
                'https://www.allrecipes.com/thmb/XBNS-1zgWxi2rgBYeACKhCqmUxw=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/8726774-Cranberry-Cheese-Ball-ddmfs-Step-07-17355-0fac98aeae4747e7ac882722e0b9d9ae.jpg',
          }
        ],
        'text':
            'Sprinkle remaining 1/4 cup dried cranberries, remaining 1 tablespoon chives, and the pecans on a sheet of plastic wrap or waxed paper. Roll cheese ball in the mixture to coat.',
      },
      {
        '@type': 'HowToStep',
        'image': [
          {
            '@type': 'ImageObject',
            'url':
                'https://www.allrecipes.com/thmb/s7F7X2dlGMYK4JUA0n7rzTLE6cM=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/8726774-Cranberry-Cheese-Ball-ddmfs-Step-08-17359-7f2300c121a14d5ba143226c58c8ae88.jpg',
          }
        ],
        'text':
            'Let stand 15 minutes before serving with crackers, crostini, or vegetable dippers.',
      }
    ],
    'recipeYield': ['16'],
    'totalTime': 'PT255M',
    'mainEntityOfPage': {
      '@type': ['WebPage'],
      '@id': 'https://www.allrecipes.com/cranberry-cheese-ball-recipe-8726774',
      'breadcrumb': {
        '@type': 'BreadcrumbList',
        'itemListElement': [
          {
            '@type': 'ListItem',
            'position': 1,
            'item': {
              '@id':
                  'https://www.allrecipes.com/recipes/76/appetizers-and-snacks/',
              'name': 'Appetizers and Snacks',
            },
          },
          {
            '@type': 'ListItem',
            'position': 2,
            'item': {
              '@id':
                  'https://www.allrecipes.com/recipes/105/appetizers-and-snacks/dips-and-spreads/',
              'name': 'Dips and Spreads Recipes',
            },
          },
          {
            '@type': 'ListItem',
            'position': 3,
            'item': {
              '@id':
                  'https://www.allrecipes.com/recipes/17192/appetizers-and-snacks/dips-and-spreads/cheese-dips-and-spreads/',
              'name': 'Cheese Dips and Spreads Recipes',
            },
          },
          {
            '@type': 'ListItem',
            'position': 4,
            'item': {
              '@id':
                  'https://www.allrecipes.com/recipes/404/appetizers-and-snacks/dips-and-spreads/cheese-dips-and-spreads/cheese-balls/',
              'name': 'Cheese Ball Recipes',
            },
          }
        ],
      },
      'reviewedBy': [
        {
          '@type': 'Person',
          'name': 'Sarah Brekke',
          'url': 'https://www.allrecipes.com/author/sarah-brekke/',
        }
      ],
      'lastReviewed': '2024-11-09T11:00:00.000-05:00',
    },
  },
  'https://smaakmenutie.nl': {
    '@context': 'https://schema.org/',
    '@type': 'Recipe',
    'name': 'Zuurkool stamppot',
    'image': [
      {
        '@type': 'ImageObject',
        'width': 1200,
        'height': 1200,
        'thumbnail':
            'https://smaakmenutie.nl/wp-content/uploads/2022/11/Zuurkool-stamppot-met-spekjes-2.jpg',
        'url':
            'https://smaakmenutie.nl/wp-content/uploads/2022/11/Zuurkool-stamppot-met-spekjes-2.jpg',
      },
      {
        '@type': 'ImageObject',
        'width': 1200,
        'height': 900,
        'thumbnail':
            'https://smaakmenutie.nl/wp-content/uploads/2022/11/Zuurkool-stamppot-met-spekjes-2.jpg',
        'url':
            'https://smaakmenutie.nl/wp-content/uploads/2022/11/Zuurkool-stamppot-met-spekjes-2.jpg',
      },
      {
        '@type': 'ImageObject',
        'width': 1200,
        'height': 675,
        'thumbnail':
            'https://smaakmenutie.nl/wp-content/uploads/2022/11/Zuurkool-stamppot-met-spekjes-2-1170x675.jpg',
        'url':
            'https://smaakmenutie.nl/wp-content/uploads/2022/11/Zuurkool-stamppot-met-spekjes-2-1170x675.jpg',
      }
    ],
    'author': {'@type': 'Person', 'name': 'SmaakMenutie'},
    'description':
        'Een ovenheerlijke zuurkoolschotel hadden wij al, maar de ouderwetse zuurkool stamppot ontbrak nog op de website. Tot vandaag dan. Mijn moeder...',
    'datePublished': '2022-11-09',
    'recipeCategory': '&lt;30 minuten',
    'keywords': 'Zuurkool stamppot met spekjes',
    'recipeCuisine': 'Nederlands',
    'recipeYield': '4',
    'prepTime': 'PT30M',
    'totalTime': 'PT30M',
    'cookTime': 'PT',
    'aggregateRating': {
      '@type': 'AggregateRating',
      'ratingValue': '3.9',
      'reviewCount': '44',
    },
    'recipeIngredient': [
      '1 kg (voorgekookte) kruimige aardappelen',
      '500 g zuurkool',
      '250 g spekreepjes',
      '15 g roomboter',
      '1 groente bouillonblokje',
      '1 appel',
      '1 ui',
      '1 rookworst',
      '4 el melk',
      '1 tl nootmuskaat',
    ],
    'recipeInstructions': [
      {
        '@type': 'HowToStep',
        'text':
            'Doe 1 kg voorgekookte kruimige aardappelen in een ruime pan en zet ze net onder water (ongeveer een vingerkootje water vanaf de aardappelen). Breng aan de kook en voeg 1 verkruimeld groentebouillonblokje toe. Laat circa 20 minuten zachtjes koken.',
      },
      {
        '@type': 'HowToStep',
        'text':
            'Kook ondertussen in een andere pan 500 g verse zuurkool in een klein laagje water eveneens ongeveer 20 minuten.',
      },
      {
        '@type': 'HowToStep',
        'text':
            'Verwarm tegelijkertijd de rookworst 20 minuten in warm (niet kokend) water in een aparte pan. Je kan de rookworst eventueel ook verwarmen in de magnetron. Controleer de verpakking hiervoor.',
      },
      {
        '@type': 'HowToStep',
        'text':
            'Bak ondertussen 250 g spekjes in een koekenpan licht krokant. Voeg ook 1 gesnipperde ui of sjalot toe.',
      },
      {
        '@type': 'HowToStep',
        'text':
            'Schil 1 appel en snijd in blokjes. Voeg toe aan de zuurkool en verwarm nog even mee tot deze klaar is.',
      },
      {
        '@type': 'HowToStep',
        'text':
            'Giet de aardappels af en doe ze terug in de pan. Voeg 1 flinke klont boter toe samen met 3-4 el (warme) melk, 1 tl nootmuskaat, een snuf zout en een draai van de pepermolen. Stamp het geheel tot een mooie stamppot.',
      },
      {
        '@type': 'HowToStep',
        'text':
            'Meng de zuurkool door de aardappelpuree en voeg tot slot de uitgebakken spekjes en ui toe. Serveer met de rookworst en naar smaak mosterd en/of curry.',
      }
    ],
  },
  'https://www.lekkerensimpel.com': {
    '@type': 'Recipe',
    'name': 'Ovenschotel met broccoli en kip',
    'author': {
      '@id':
          'https://www.lekkerensimpel.com/#/schema/person/e47d035d8c308aeae2e21bfb3fccb604',
    },
    'description':
        'Deze romige ovenschotel met kip, broccoli en een krokant laagje kaas is een heerlijke maaltijd voor op een drukke dag.',
    'datePublished': '2024-12-02T06:00:00+00:00',
    'image': [
      'https://www.lekkerensimpel.com/wp-content/uploads/2024/11/588A6892.jpg',
      'https://www.lekkerensimpel.com/wp-content/uploads/2024/11/588A6892-500x500.jpg',
      'https://www.lekkerensimpel.com/wp-content/uploads/2024/11/588A6892-500x375.jpg',
      'https://www.lekkerensimpel.com/wp-content/uploads/2024/11/588A6892-480x270.jpg',
    ],
    'recipeYield': ['4', '4 personen'],
    'prepTime': 'PT15M',
    'cookTime': 'PT20M',
    'totalTime': 'PT35M',
    'recipeIngredient': [
      '500 gr broccoli roosjes',
      '350 gr kip(dij)filet',
      '1  ui',
      '2 tenen knoflook',
      '200 gr creme fraiche',
      '100 ml kookroom/slagroom',
      '100 gr geraspte kaas',
      '1,5 tl paprikapoeder',
      '1 tl oregano',
      '1 tl tijm',
      'snuf zout en peper',
    ],
    'recipeInstructions': [
      {
        '@type': 'HowToStep',
        'text': 'Verwarm de oven voor op 200 graden.',
        'name': 'Verwarm de oven voor op 200 graden.',
        'url':
            'https://www.lekkerensimpel.com/ovenschotel-met-broccoli-en-kip/#wprm-recipe-86877-step-0-0',
      },
      {
        '@type': 'HowToStep',
        'text':
            'Kook de broccoli roosjes 3-4 minuten voor in een pan water en laat daarna goed uitlekken.',
        'name':
            'Kook de broccoli roosjes 3-4 minuten voor in een pan water en laat daarna goed uitlekken.',
        'url':
            'https://www.lekkerensimpel.com/ovenschotel-met-broccoli-en-kip/#wprm-recipe-86877-step-0-1',
      },
      {
        '@type': 'HowToStep',
        'text': 'Snijd de ui en knoflook fijn en de kip in stukjes.',
        'name': 'Snijd de ui en knoflook fijn en de kip in stukjes.',
        'url':
            'https://www.lekkerensimpel.com/ovenschotel-met-broccoli-en-kip/#wprm-recipe-86877-step-0-2',
      },
      {
        '@type': 'HowToStep',
        'text':
            'Breng de kip op smaak met wat zout en peper en bak daarna aan beide kanten goudbruin in een pan met wat olie. Bak de laatste paar minuten de ui en knoflook mee.',
        'name':
            'Breng de kip op smaak met wat zout en peper en bak daarna aan beide kanten goudbruin in een pan met wat olie. Bak de laatste paar minuten de ui en knoflook mee.',
        'url':
            'https://www.lekkerensimpel.com/ovenschotel-met-broccoli-en-kip/#wprm-recipe-86877-step-0-3',
      },
      {
        '@type': 'HowToStep',
        'text':
            'Meng in een kom de crème fraiche, kookroom en kruiden goed door elkaar.',
        'name':
            'Meng in een kom de crème fraiche, kookroom en kruiden goed door elkaar.',
        'url':
            'https://www.lekkerensimpel.com/ovenschotel-met-broccoli-en-kip/#wprm-recipe-86877-step-0-4',
      },
      {
        '@type': 'HowToStep',
        'text':
            'Doe dan de kip en broccoli in een ovenschaal, giet het romige mengsel erbij en bedek dan met een lekkere laag geraspte kaas.',
        'name':
            'Doe dan de kip en broccoli in een ovenschaal, giet het romige mengsel erbij en bedek dan met een lekkere laag geraspte kaas.',
        'url':
            'https://www.lekkerensimpel.com/ovenschotel-met-broccoli-en-kip/#wprm-recipe-86877-step-0-5',
      },
      {
        '@type': 'HowToStep',
        'text': 'Zet de ovenschaal in de oven voor circa 20 minuten.',
        'name': 'Zet de ovenschaal in de oven voor circa 20 minuten.',
        'url':
            'https://www.lekkerensimpel.com/ovenschotel-met-broccoli-en-kip/#wprm-recipe-86877-step-0-6',
      },
      {
        '@type': 'HowToStep',
        'text': 'Serveer met wat gebakken/gekookte aardappeltjes of met pasta.',
        'name': 'Serveer met wat gebakken/gekookte aardappeltjes of met pasta.',
        'url':
            'https://www.lekkerensimpel.com/ovenschotel-met-broccoli-en-kip/#wprm-recipe-86877-step-0-7',
      }
    ],
    'aggregateRating': {
      '@type': 'AggregateRating',
      'ratingValue': '5',
      'ratingCount': '1',
      'reviewCount': '1',
    },
    'review': [
      {
        '@type': 'Review',
        'reviewRating': {'@type': 'Rating', 'ratingValue': '5'},
        'reviewBody': 'top',
        'author': {'@type': 'Person', 'name': 'Lekker en Simpel'},
        'datePublished': '2024-12-02',
      }
    ],
    'recipeCategory': ['Hoofdgerecht'],
    'recipeCuisine': ['Hollandse keuken'],
    'keywords': 'broccoli, kip, ovenschotel',
    '@id':
        'https://www.lekkerensimpel.com/ovenschotel-met-broccoli-en-kip/#recipe',
    'isPartOf': {
      '@id':
          'https://www.lekkerensimpel.com/ovenschotel-met-broccoli-en-kip/#article',
    },
    'mainEntityOfPage':
        'https://www.lekkerensimpel.com/ovenschotel-met-broccoli-en-kip/',
  },
  'https://www.anniepannie.nl': {
    '@type': 'Recipe',
    'name': 'Oesterzwammen kebab',
    'author': {'@type': 'Person', 'name': 'Andrea (Anniepannie.nl)'},
    'description':
        'Vegetarische kebab die niet vegetarisch smaakt! Deze oesterzwammen kebab heeft een vlezige bite en is super smaakvol gekruid. Laat je verrassen!',
    'datePublished': '2021-04-12T16:30:23+00:00',
    'image': [
      'https://www.anniepannie.nl/wp-content/uploads/2021/04/Oesterzwammen-kebab-ANNIEPANNIE-6.jpg',
      'https://www.anniepannie.nl/wp-content/uploads/2021/04/Oesterzwammen-kebab-ANNIEPANNIE-6-500x500.jpg',
      'https://www.anniepannie.nl/wp-content/uploads/2021/04/Oesterzwammen-kebab-ANNIEPANNIE-6-500x375.jpg',
      'https://www.anniepannie.nl/wp-content/uploads/2021/04/Oesterzwammen-kebab-ANNIEPANNIE-6-480x270.jpg',
    ],
    'recipeYield': ['4', '4 personen'],
    'prepTime': 'PT20M',
    'cookTime': 'PT15M',
    'totalTime': 'PT35M',
    'recipeIngredient': [
      '450 g oesterzwammen',
      '1  pakje Fairtrade Original kruidenpasta voor Midden-Oosterse Kebab',
      '2  rode uien',
      '1 teentje knoflook',
      '3 el tahin',
      '4  flatbreads',
      '6 el yoghurt',
      '4  kleine komkommertjes',
      'handje kerstomaten',
      'bosje radijsjes',
      'bosje groene kruiden naar keuze (peterselie en/of munt)',
      '4 el za’atar (kruiden)',
      'citroensap (naar smaak)',
    ],
    'recipeInstructions': [
      {
        '@type': 'HowToStep',
        'text':
            'Verwarm de oven voor op 220 graden. Scheur de paddenstoelen in grote, dikke repen. Pel de uien en snijd ze in kwarten. Haal alle &#039;blaadjes&#039; van de ui los. Hussel de oesterzwammen en rode ui in een grote kom om met de kruidenpasta. Dit gaat het makkelijkste met je handen. Zorg dat alles bedekt is met een laagje kruidenpasta.',
        'name':
            'Verwarm de oven voor op 220 graden. Scheur de paddenstoelen in grote, dikke repen. Pel de uien en snijd ze in kwarten. Haal alle &#039;blaadjes&#039; van de ui los. Hussel de oesterzwammen en rode ui in een grote kom om met de kruidenpasta. Dit gaat het makkelijkste met je handen. Zorg dat alles bedekt is met een laagje kruidenpasta.',
        'url':
            'https://www.anniepannie.nl/oesterzwammen-kebab-de-vegetarische-kebab-van-je-dromen/#wprm-recipe-6670-step-0-0',
      },
      {
        '@type': 'HowToStep',
        'text':
            'Rijg de oesterzwammen en ui-blaadjes afwisselend aan platte spiezen. Als je geen spiezen hebt, kun je ze ook over een met bakpapier beklede bakplaat verdelen. Laat alles minimaal 15 minuten marineren (een uur of 2 mag ook, als je tijd hebt).',
        'name':
            'Rijg de oesterzwammen en ui-blaadjes afwisselend aan platte spiezen. Als je geen spiezen hebt, kun je ze ook over een met bakpapier beklede bakplaat verdelen. Laat alles minimaal 15 minuten marineren (een uur of 2 mag ook, als je tijd hebt).',
        'url':
            'https://www.anniepannie.nl/oesterzwammen-kebab-de-vegetarische-kebab-van-je-dromen/#wprm-recipe-6670-step-0-1',
      },
      {
        '@type': 'HowToStep',
        'text':
            'Rooster de oesterzwamspiesen in ongeveer 15 minuten gaar en goudbruin in de oven, totdat de randjes knapperig zijn.',
        'name':
            'Rooster de oesterzwamspiesen in ongeveer 15 minuten gaar en goudbruin in de oven, totdat de randjes knapperig zijn.',
        'url':
            'https://www.anniepannie.nl/oesterzwammen-kebab-de-vegetarische-kebab-van-je-dromen/#wprm-recipe-6670-step-0-2',
      },
      {
        '@type': 'HowToStep',
        'text':
            'Pers intussen het teentje knoflook uit in een kommetje. Doe hier de yoghurt en tahin bij en meng alles goed door elkaar. Voeg naar smaak zout, peper en citroensap toe.',
        'name':
            'Pers intussen het teentje knoflook uit in een kommetje. Doe hier de yoghurt en tahin bij en meng alles goed door elkaar. Voeg naar smaak zout, peper en citroensap toe.',
        'url':
            'https://www.anniepannie.nl/oesterzwammen-kebab-de-vegetarische-kebab-van-je-dromen/#wprm-recipe-6670-step-0-3',
      },
      {
        '@type': 'HowToStep',
        'text':
            'Snijd de komkommer, tomaatjes een radijsjes in hele kleine stukjes en doe ze in een kom. Hak de kruiden en meng dit erdoor. Als je wilt kun je nog wat citroensap toevoegen.',
        'name':
            'Snijd de komkommer, tomaatjes een radijsjes in hele kleine stukjes en doe ze in een kom. Hak de kruiden en meng dit erdoor. Als je wilt kun je nog wat citroensap toevoegen.',
        'url':
            'https://www.anniepannie.nl/oesterzwammen-kebab-de-vegetarische-kebab-van-je-dromen/#wprm-recipe-6670-step-0-4',
      },
      {
        '@type': 'HowToStep',
        'text':
            'Besmeer de flatbreads met het yoghurtsausje en verdeel de oesterzwammen kebab erover. Schep er wat van de salade over, bestrooi met de za’atar, rol de flatbreads op en wikkel ze eventueel in een papiertje.',
        'name':
            'Besmeer de flatbreads met het yoghurtsausje en verdeel de oesterzwammen kebab erover. Schep er wat van de salade over, bestrooi met de za’atar, rol de flatbreads op en wikkel ze eventueel in een papiertje.',
        'url':
            'https://www.anniepannie.nl/oesterzwammen-kebab-de-vegetarische-kebab-van-je-dromen/#wprm-recipe-6670-step-0-5',
      }
    ],
    'aggregateRating': {
      '@type': 'AggregateRating',
      'ratingValue': '5',
      'ratingCount': '6',
    },
    'recipeCategory': ['Avondeten', 'Diner', 'Hoofdgerecht'],
    'recipeCuisine': ['Midden-Oosters', 'Turks'],
    'keywords':
        "baharat, Griekse yoghurt, kebab, komkommer, munt, oesterzwammen, peterselie, platbrood, radijs, shoarma, streetfood, tahin, tomaat, za'atar",
    '@id':
        'https://www.anniepannie.nl/oesterzwammen-kebab-de-vegetarische-kebab-van-je-dromen/#recipe',
    'isPartOf': {
      '@id':
          'https://www.anniepannie.nl/oesterzwammen-kebab-de-vegetarische-kebab-van-je-dromen/#article',
    },
    'mainEntityOfPage':
        'https://www.anniepannie.nl/oesterzwammen-kebab-de-vegetarische-kebab-van-je-dromen/',
  },
  'https://vidarbergum.com': {
    '@type': 'Recipe',
    'name': 'Chebureki (Fried turnover with meat)',
    'author': {'@type': 'Person', 'name': 'Vidar Bergum'},
    'description': 'A fried delight of Crimean Tatar origin.',
    'datePublished': '2024-07-19T13:37:54+00:00',
    'image': [
      'https://vidarbergum.com/wp-content/uploads/2024/07/chebureki-ciborek-2.jpg',
      'https://vidarbergum.com/wp-content/uploads/2024/07/chebureki-ciborek-2-500x500.jpg',
      'https://vidarbergum.com/wp-content/uploads/2024/07/chebureki-ciborek-2-500x375.jpg',
      'https://vidarbergum.com/wp-content/uploads/2024/07/chebureki-ciborek-2-480x270.jpg',
    ],
    'recipeYield': ['6', '6 chebureki'],
    'totalTime': 'PT60M',
    'recipeIngredient': [
      '150 g plain flour',
      'Â½ tsp baking powder',
      'Â½ tsp salt',
      '75 g water (or more to personal preference)',
      '20 g yoghurt',
      '15 g butter',
      'vegetable or olive oil (for frying)',
      '1  large onion',
      '200 g minced beef (or lamb or a mixture (7 oz))',
      '3 Tbsp water',
      'Â½ tsp salt',
      'Â½ tsp freshly ground black pepper',
    ],
    'recipeInstructions': [
      {
        '@type': 'HowToStep',
        'text':
            'Combine flour, baking powder and salt. Add water, yoghurt and melted butter. Bring together to a dough, then knead until relatively smooth, but donât overdo it. A few minutes is enough, even by hand. Cover with a damp cloth and leave to rest for 15 minutes.',
        'name':
            'Combine flour, baking powder and salt. Add water, yoghurt and melted butter. Bring together to a dough, then knead until relatively smooth, but donât overdo it. A few minutes is enough, even by hand. Cover with a damp cloth and leave to rest for 15 minutes.',
        'url':
            'https://vidarbergum.com/recipe/chebureki-fried-turnover-with-meat/#wprm-recipe-6058-step-0-0',
      },
      {
        '@type': 'HowToStep',
        'text':
            'Meanwhile, process three-quarters of the onion very finely in a food processor. Finely chop the rest. Mix with minced meat, water, salt and black pepper.',
        'name':
            'Meanwhile, process three-quarters of the onion very finely in a food processor. Finely chop the rest. Mix with minced meat, water, salt and black pepper.',
        'url':
            'https://vidarbergum.com/recipe/chebureki-fried-turnover-with-meat/#wprm-recipe-6058-step-0-1',
      },
      {
        '@type': 'HowToStep',
        'text':
            'Divide the dough into six pieces. Roll each piece into a circle slightly smaller than your frying pan, using a plate to trim the edges for a perfectly circular shape (mineâs 21Â½ cm/8Â½ in diameter). Place a thin layer of filling on one half, leaving a 1 cm/Â½ in edge. Moisten the edges and fold over. Seal by pressing the edges down, first with your fingers and then with a fork, making sure not to trap any air inside the pastry.',
        'name':
            'Divide the dough into six pieces. Roll each piece into a circle slightly smaller than your frying pan, using a plate to trim the edges for a perfectly circular shape (mineâs 21Â½ cm/8Â½ in diameter). Place a thin layer of filling on one half, leaving a 1 cm/Â½ in edge. Moisten the edges and fold over. Seal by pressing the edges down, first with your fingers and then with a fork, making sure not to trap any air inside the pastry.',
        'url':
            'https://vidarbergum.com/recipe/chebureki-fried-turnover-with-meat/#wprm-recipe-6058-step-0-2',
      },
      {
        '@type': 'HowToStep',
        'text':
            'Heat a generous amount of oil in a large pan with high sides over medium heat. To check that your oil is hot enough, add a small piece of bread. If it sizzles immediately, itâs hot enough. Fry each chebureki until golden brown and crispy all over, 2-3 minutes on one side and about a minute on the other. If yours take considerably more or less than that, your oil is too hot or too cold, so you may want to adjust your heat. I fry two cheburekis at a time. Drain on kitchen paper.',
        'name':
            'Heat a generous amount of oil in a large pan with high sides over medium heat. To check that your oil is hot enough, add a small piece of bread. If it sizzles immediately, itâs hot enough. Fry each chebureki until golden brown and crispy all over, 2-3 minutes on one side and about a minute on the other. If yours take considerably more or less than that, your oil is too hot or too cold, so you may want to adjust your heat. I fry two cheburekis at a time. Drain on kitchen paper.',
        'url':
            'https://vidarbergum.com/recipe/chebureki-fried-turnover-with-meat/#wprm-recipe-6058-step-0-3',
      },
      {
        '@type': 'HowToStep',
        'text': 'Serve immediately with your preferred sides, if any.',
        'name': 'Serve immediately with your preferred sides, if any.',
        'url':
            'https://vidarbergum.com/recipe/chebureki-fried-turnover-with-meat/#wprm-recipe-6058-step-0-4',
      }
    ],
    'recipeCategory': ['Street food'],
    'recipeCuisine': ['Central Asia', 'Crimean Tatar', 'TÃ¼rkiye'],
    '@id':
        'https://vidarbergum.com/recipe/chebureki-fried-turnover-with-meat/#recipe',
    'isPartOf': {
      '@id':
          'https://vidarbergum.com/recipe/chebureki-fried-turnover-with-meat/#article',
    },
    'mainEntityOfPage':
        'https://vidarbergum.com/recipe/chebureki-fried-turnover-with-meat/',
  },
  'https://uitpaulineskeuken.nl': {
    '@context': 'http://schema.org',
    '@type': 'Recipe',
    'author': {'@type': 'Person', 'name': 'Pauline'},
    'datePublished': '2024-12-02',
    'description':
        'Makkelijk soep recept voor Indiase kikkererwtensoep met garam masala, kurkuma en gember. Serveer met naanbrood en yoghurtdip.',
    'image':
        'https://uitpaulineskeuken.nl/wp-content/uploads/2024/10/Kikkererwtensoep-1.jpg',
    'recipeIngredient': [
      '300 gr flespompoen blokjes',
      '2 bospenen',
      '1 rode ui',
      '2 tenen knoflook',
      '2 cm gember',
      '3 takjes koriander',
      '200 ml groentebouillon',
      '400 gr kikkererwten (blik )',
      '400 gr tomatenblokjes',
      '270 ml kokosmelk',
      '2 tl zachte roomboter',
      '1 tl kurkuma',
      '1 el garam masala',
      '2 tl komijnzaad',
      '2 naanbroden',
      'olijfolie',
      'peper en zout',
    ],
    'interactionStatistic': {
      '@type': 'InteractionCounter',
      'interactionType': 'http://schema.org/Comment',
      'userInteractionCount': '0',
    },
    'name': 'Indiase kikkererwtensoep',
    'recipeCuisine': 'Aziatische recepten',
    'keywords':
        'Aziatische recepten, Familie recepten, Gezonde recepten, Glutenvrije recepten, Herfst recepten, Hoofdgerecht, Koemelk, Lactose, Oven, Pompoen, Snelle recepten, Soepen, Vegetarische recepten, Winter recepten, Wortel',
    'recipeCategory':
        'Aziatische recepten, Familie recepten, Gezonde recepten, Glutenvrije recepten, Herfst recepten, Hoofdgerecht, Koemelk, Lactose, Oven, Pompoen, Snelle recepten, Soepen, Vegetarische recepten, Winter recepten, Wortel',
    'prepTime': 'PT0H30M',
    'cookTime': '',
    'totalTime': 'PT0H30M',
    'recipeInstructions': [
      {'@type': 'HowToStep', 'text': 'Zo maak je het:'},
      {
        '@type': 'HowToStep',
        'text':
            '1. Verwarm de oven alvast voor, op 200 graden (boven- en onderwarmte) of 180 graden (hetelucht). Haal de schil van de rode ui en knoflook en hak beiden fijn. Maak de gember schoon en rasp fijn. Maak de wortels schoon en hak ze in blokjes.\u00a0\n',
      },
      {
        '@type': 'HowToStep',
        'text':
            '2. Verhit een scheutje olijfolie in een grote soeppan en fruit de fijngesneden rode ui, knoflook en geraspte gember ongeveer 3-4 minuten tot ze zacht zijn. Voeg de garam masala en kurkuma toe en bak dit kort mee, ongeveer 1-2 minuten.\n',
      },
      {
        '@type': 'HowToStep',
        'text':
            '3. Voeg de in blokjes gesneden wortel, pompoenblokjes, kikkererwten, tomatenblokjes, kokosmelk en groentebouillon toe. Roer alles goed door en breng op smaak met peper en zout. Laat de soep ongeveer 20 minuten zachtjes koken tot de groenten gaar zijn.\n',
      },
      {
        '@type': 'HowToStep',
        'text':
            '4. Besmeer ondertussen het naanbrood met roomboter en bestrooi met komijnzaad. Bak het naanbrood 4-6 minuten in de voorverwarmde oven tot het knapperig is. Serveer de kikkererwtensoep met verse koriander en het warme naanbrood.\n',
      }
    ],
    'recipeYield': '4 personen',
    'aggregateRating': {
      'ratingValue': '4.7',
      'bestRating': '5',
      'worstRating': '1',
      'ratingCount': '3',
    },
  },
  'https://www.ah.nl': {
    '@context': 'https://schema.org',
    '@type': 'Recipe',
    'isPartOf': {'@id': 'https://www.ah.nl/allerhande#website'},
    'author': {
      '@type': 'Organization',
      '@id': 'https://www.ah.nl/allerhande#organization',
      'name': 'Albert Heijn',
    },
    'name': 'Traybake van zoete aardappel, kip en courgette',
    'alternateName': '',
    'URL':
        'https://www.ah.nl/allerhande/recept/R-R1195573/traybake-van-zoete-aardappel-kip-en-courgette',
    'totalTime': 'PT40M',
    'image': [
      '',
      'https://static.ah.nl/static/recepten/img_RAM_PRD152399_1224x900_JPG.jpg',
    ],
    'description':
        'Geef kleur aan je traybake! Deze met zoete aardappel, kip en courgette zet je al in 15 min. in de oven en je hebt in één keer een lekkere, gevarieerde maaltijd.',
    'keywords': 'glutenvrij, oven, hoofdgerecht',
    'recipeYield': '4',
    'recipeCategory': 'hoofdgerecht',
    'recipeCuisine': '',
    'suitableForDiet': ['GlutenFreeDiet'],
    'nutrition': {
      '@type': 'NutritionInformation',
      'calories': '665 kcal energie',
      'fatContent': '26 g vet',
      'saturatedFatContent': '6 g waarvan verzadigd',
      'carbohydrateContent': '70 g koolhydraten',
      'proteinContent': '33 g eiwit',
    },
    'recipeIngredient': [
      '3 tenen knoflook',
      '5 el milde olijfolie',
      '2 el vloeibare honing',
      "2 el za'atar",
      '400 g scharrelkiphaasjes',
      '1 kg zoete aardappel',
      '1 courgette',
      "2 rode puntpaprika's",
      '2 rode uien',
      '2 el groene olijven zonder pit',
      '3.75 g verse munt',
      '100 g witte kaas',
    ],
    'recipeInstructions': [
      {
        '@type': 'HowToStep',
        'position': 1,
        'name': 'stap 1',
        'text': 'Verwarm de oven voor op 200 °C.',
      },
      {
        '@type': 'HowToStep',
        'position': 2,
        'name': 'stap 2',
        'text':
            'Snijd de knoflook fijn. Meng de olie met de honing, knoflook, za’atar en peper.',
      },
      {
        '@type': 'HowToStep',
        'position': 3,
        'name': 'stap 3',
        'text':
            'Meng de marinade door de kiphaasjes. Laat even staan terwijl je de groenten snijdt.',
      },
      {
        '@type': 'HowToStep',
        'position': 4,
        'name': 'stap 4',
        'text':
            'Schil de zoete aardappelen en snijd in de lengte in parten van ca. 2 cm. Snijd de courgette in plakken.',
      },
      {
        '@type': 'HowToStep',
        'position': 5,
        'name': 'stap 5',
        'text':
            'Verwijder de zaadlijsten en de steelaanzet van de paprika’s en snijd het vruchtvlees in ringen van 2 cm. Snijd de rode uien in parten.',
      },
      {
        '@type': 'HowToStep',
        'position': 6,
        'name': 'stap 6',
        'text':
            'Verdeel de zoete aardappel, courgette, paprika en rode ui over een met bakpapier beklede bakplaat.',
      },
      {
        '@type': 'HowToStep',
        'position': 7,
        'name': 'stap 7',
        'text':
            'Besprenkel met de rest van de olie, bestrooi met peper en zout. Verdeel de gemarineerde kip en olijven erover.',
      },
      {
        '@type': 'HowToStep',
        'position': 8,
        'name': 'stap 8',
        'text':
            'Bak ca. 25 min. in de oven tot de kip gaar is en de groenten knapperig zijn. Haal de blaadjes van de takjes munt.',
      },
      {
        '@type': 'HowToStep',
        'position': 9,
        'name': 'stap 9',
        'text':
            'Haal de plaat uit de oven. Verkruimelde witte kaas erover en verdeel de muntblaadjes erover.',
      }
    ],
    'aggregateRating': {'ratingValue': 4.568449, 'ratingCount': 862},
    'datePublished': '2021-08-27',
  },
  'https://mills.no': {
    '@context': 'https://schema.org/',
    '@type': 'Recipe',
    'name': 'Blomk\u00e5lsalat',
    'image': [
      'https://mills.no/content/uploads/2018/06/BlomkC3A5lsalat_1920-300x200.jpg',
      'https://mills.no/content/uploads/2018/06/BlomkC3A5lsalat_1920-1024x683.jpg',
      'https://mills.no/content/uploads/2018/06/BlomkC3A5lsalat_1920.jpg',
    ],
    'author': {'@type': 'Person', 'name': 'dekode'},
    'datePublished': '2018-06-28',
    'description':
        'Blomk\u00e5lsalat er en lett og frisk tilbeh\u00f8rsalat som passer ypperlig til grillbordet. Blomk\u00e5l er en god kilde til vitamin C, i tillegg til \u00e5 ha en god og mild smak som egner seg godt som tilbeh\u00f8r til grillmat som laks og magert kj\u00f8tt. N\u00e5r blomk\u00e5len er r\u00e5 beholder man ogs\u00e5 flere av n\u00e6ringsstoffene, som blant annet folat. \n',
    'aggregateRating': {
      '@type': 'AggregateRating',
      'ratingValue': '5',
      'ratingCount': '3',
    },
    'prepTime': 'PT0S',
    'cookTime': 'PT15M',
    'totalTime': 'PT15M',
    'recipeYield': 4,
    'recipeCategory': 'Grill, Snacks og tilbeh\u00f8r, Vegetar',
    'recipeIngredient': [
      '400 gram r\u00e5 blomk\u00e5l',
      '165 gram Vita Hjertego&#8217; Lettmajones',
      '1 dl lett cr\u00e8me fra\u00eeche',
      '2 ss eplecidereddik',
      '3 stk v\u00e5rl\u00f8k',
      '2 ss fersk bladpersille',
      '0.5 ts pepper',
    ],
    'recipeInstructions': [
      {
        '@type': 'HowToStep',
        'url': 'https://mills.no/vita-hjertego/oppskrift/blomkalsalat/#step-1',
        'text': 'Del blomk\u00e5len i sm\u00e5 buketter.',
      },
      {
        '@type': 'HowToStep',
        'url': 'https://mills.no/vita-hjertego/oppskrift/blomkalsalat/#step-2',
        'text':
            'Bland sammen Vita hjertego\u2019 Lettmajones, lett creme fraiche og eplecidereddik i en bolle, og r\u00f8r godt om.',
      },
      {
        '@type': 'HowToStep',
        'url': 'https://mills.no/vita-hjertego/oppskrift/blomkalsalat/#step-3',
        'text':
            'Finhakk v\u00e5rl\u00f8k og bladpersille, og vend det inn i majonesblandingen sammen med blomk\u00e5len. Smak til med litt nykvernet pepper.',
      }
    ],
  },
  'https://www.themediterraneandish.com': {
    '@type': 'Recipe',
    'name': 'Greek Fish with Onions and Tomatoes (Psari Plaki)',
    'author': {
      '@id':
          'https://www.themediterraneandish.com/#/schema/person/6233119b0de9a659295fc6e044a87124',
    },
    'description':
        'This Greek fish recipe, known as psari plaki, is a simple and delicious way to give your fish dinner a unique twist. It&#039;s made by baking white fish fillets with tomatoes, onions, and spices such as oregano and cumin, which creates a flavorful sauce. Perfect for a weeknight meal, the dish can be served with rustic bread or over a bed of rice or your favorite grain.',
    'datePublished': '2023-01-13T08:00:00+00:00',
    'image': [
      'https://www.themediterraneandish.com/wp-content/uploads/2022/12/greek-fish-with-onions-and-tomatoes-12.jpg',
      'https://www.themediterraneandish.com/wp-content/uploads/2022/12/greek-fish-with-onions-and-tomatoes-12-500x500.jpg',
      'https://www.themediterraneandish.com/wp-content/uploads/2022/12/greek-fish-with-onions-and-tomatoes-12-500x375.jpg',
      'https://www.themediterraneandish.com/wp-content/uploads/2022/12/greek-fish-with-onions-and-tomatoes-12-480x270.jpg',
    ],
    'video': {
      'name': 'Greek Fish with Onions and Tomatoes',
      'description': 'A saucy fish dish you will love!',
      'thumbnailUrl': 'https://content.jwplatform.com/thumbs/jVi4Wmao-720.jpg',
      'contentUrl': 'https://content.jwplatform.com/videos/jVi4Wmao.mp4',
      'uploadDate': '2023-01-10T14:18:15.000Z',
      '@type': 'VideoObject',
    },
    'recipeYield': ['6'],
    'prepTime': 'PT10M',
    'cookTime': 'PT15M',
    'totalTime': 'PT25M',
    'recipeIngredient': [
      '2 tablespoons Extra virgin olive oil',
      '1  large yellow onion, (halved and thinly sliced (half moons))',
      '2  large garlic cloves, (minced)',
      '1  (28-ounce) can whole peeled tomatoes ((I use whole san Marzano tomatoes))',
      '2 teaspoons dried oregano',
      'Black pepper',
      '2 pounds white fish filet, (such as halibut or cod)',
      'Kosher salt and black pepper',
      'Kosher salt',
      '1/2 teaspoon dried oregano',
      '1 teaspoon sweet paprika',
      '½ teaspoon ground cumin',
      '2  lemons, divided',
      '¼ cup fresh parsley, (chopped)',
    ],
    'recipeInstructions': [
      {
        '@type': 'HowToStep',
        'text':
            'Heat the oven. Preheat the oven to 400°F and position a rack in the middle.',
        'name':
            'Heat the oven. Preheat the oven to 400°F and position a rack in the middle.',
        'url':
            'https://www.themediterraneandish.com/baked-greek-fish-psari-plaki/#wprm-recipe-58795-step-0-0',
      },
      {
        '@type': 'HowToStep',
        'text':
            'Make the sauce. In a large oven-safe pan or skillet, heat 2 tablespoons extra virgin olive oil over medium-high heat until shimmering. Add the sliced onions and season with a big pinch of kosher salt. Cook, tossing regularly, until the onions have softened and gained a slight golden-brown color (about 7 minutes). Add the garlic toss briefly, then add the canned tomatoes with their juices. Using a wooden spoon, break the tomatoes up. Season with a dash more salt. Add the oregano and a big dash of black pepper. Bring the sauce to a boil, then lower the heat and let it simmer for 10 to 15 minutes or so.',
        'name':
            'Make the sauce. In a large oven-safe pan or skillet, heat 2 tablespoons extra virgin olive oil over medium-high heat until shimmering. Add the sliced onions and season with a big pinch of kosher salt. Cook, tossing regularly, until the onions have softened and gained a slight golden-brown color (about 7 minutes). Add the garlic toss briefly, then add the canned tomatoes with their juices. Using a wooden spoon, break the tomatoes up. Season with a dash more salt. Add the oregano and a big dash of black pepper. Bring the sauce to a boil, then lower the heat and let it simmer for 10 to 15 minutes or so.',
        'url':
            'https://www.themediterraneandish.com/baked-greek-fish-psari-plaki/#wprm-recipe-58795-step-0-1',
      },
      {
        '@type': 'HowToStep',
        'text':
            'Season the fish. Pat the fish dry and season on both sides with kosher salt, the oregano, paprika and cumin. Cut and squeeze one lemon over the fish (leave the other lemon for later).',
        'name':
            'Season the fish. Pat the fish dry and season on both sides with kosher salt, the oregano, paprika and cumin. Cut and squeeze one lemon over the fish (leave the other lemon for later).',
        'url':
            'https://www.themediterraneandish.com/baked-greek-fish-psari-plaki/#wprm-recipe-58795-step-0-2',
      },
      {
        '@type': 'HowToStep',
        'text':
            'Combine the sauce and the fish. When the sauce is ready, nestle the fish in the sauce and scoop up some of the sauce to cover the top of the fish well.',
        'name':
            'Combine the sauce and the fish. When the sauce is ready, nestle the fish in the sauce and scoop up some of the sauce to cover the top of the fish well.',
        'url':
            'https://www.themediterraneandish.com/baked-greek-fish-psari-plaki/#wprm-recipe-58795-step-0-3',
      },
      {
        '@type': 'HowToStep',
        'text':
            'Bake. Place the fish on the center rack of the heated oven and bake until the fist turns opaque white and flakes easily at the touch of a fork (15 to 25 minutes, but because ovens do vary, it is a good idea to check occasionally to make sure the fish does not overcook or dry out).',
        'name':
            'Bake. Place the fish on the center rack of the heated oven and bake until the fist turns opaque white and flakes easily at the touch of a fork (15 to 25 minutes, but because ovens do vary, it is a good idea to check occasionally to make sure the fish does not overcook or dry out).',
        'url':
            'https://www.themediterraneandish.com/baked-greek-fish-psari-plaki/#wprm-recipe-58795-step-0-4',
      },
      {
        '@type': 'HowToStep',
        'text':
            'Serve. Slice the remaining lemon into wedges. Finish the fish with the fresh parsley and serve with the lemon wedges to the side.',
        'name':
            'Serve. Slice the remaining lemon into wedges. Finish the fish with the fresh parsley and serve with the lemon wedges to the side.',
        'url':
            'https://www.themediterraneandish.com/baked-greek-fish-psari-plaki/#wprm-recipe-58795-step-0-5',
      }
    ],
    'aggregateRating': {
      '@type': 'AggregateRating',
      'ratingValue': '4.84',
      'ratingCount': '37',
      'reviewCount': '9',
    },
    'review': [
      {
        '@type': 'Review',
        'reviewRating': {'@type': 'Rating', 'ratingValue': '5'},
        'reviewBody':
            'Just made this with your Greek Lemon Rice. What an absolute flavor bomb! Cast iron skillet all the way. Served with a bit of crusty bread on the side…to mop up the sauce. And have leftovers for tomorrow’s lunch.\r\n\r\nThanks again, Chef Suzy! And…also nice to finally meet you in Houston las month! I mean what I said. You and your Mediterranean Diet saved my life! \r\n\r\nRespect,\r\nJeff in Houston',
        'author': {'@type': 'Person', 'name': 'Jeff in Houston'},
        'datePublished': '2024-10-29',
      },
      {
        '@type': 'Review',
        'reviewRating': {'@type': 'Rating', 'ratingValue': '5'},
        'reviewBody':
            'Really, really good. My son said 10 out of 5 stars, and I think the rest of us agree. I used 28 oz of fire roasted diced tomatoes because that was what I had, and I crushed them a bit with a potato masher. It turned out great! I also used frozen, thawed whiting, and it only needed 10 minutes to cook.',
        'author': {'@type': 'Person', 'name': 'Karis'},
        'datePublished': '2024-09-22',
      },
      {
        '@type': 'Review',
        'reviewRating': {'@type': 'Rating', 'ratingValue': '5'},
        'reviewBody':
            "This is my favorite fish recipe of all time.  I make it every week.  I do change a couple of ingredients due to personal food sensitivities, but the spices, baking method and end result are terrific.  Thank you for sharing all of your recipes.  I have tried many and they are fantastic.  And, they couldn't be easier.  All of the ingredients are already in my kitchen.",
        'author': {'@type': 'Person', 'name': 'Debbie G'},
        'datePublished': '2024-09-22',
      },
      {
        '@type': 'Review',
        'reviewRating': {'@type': 'Rating', 'ratingValue': '4'},
        'reviewBody':
            'Solid recipie and it turned out well! I used cod, and cut I had flaked into pieces, they were perfectly done and tasty.  It was just slightly more a stew, but that was probably a &gt;my kitchen&lt; issue than anything against the recipie.    Will definitely make again!',
        'author': {'@type': 'Person', 'name': 'Gavin Lane Smith'},
        'datePublished': '2024-09-05',
      },
      {
        '@type': 'Review',
        'reviewRating': {'@type': 'Rating', 'ratingValue': '5'},
        'reviewBody':
            'My family loved this! It was very easy to prepare and very flavorful. I used wild caught cod and will try halibut next time.',
        'author': {'@type': 'Person', 'name': 'Mondria Davenport'},
        'datePublished': '2024-07-25',
      },
      {
        '@type': 'Review',
        'reviewRating': {'@type': 'Rating', 'ratingValue': '5'},
        'reviewBody':
            "I'd had this printed off back in January last year when I first saw it but finally just got around to trying it tonight. My husband and I just loved it! I used frozen Whiting and it was perfect! Served it with roasted purple cauliflower and yellow beets. Yummy!",
        'author': {'@type': 'Person', 'name': 'Judy K'},
        'datePublished': '2024-06-08',
      },
      {
        '@type': 'Review',
        'reviewRating': {'@type': 'Rating', 'ratingValue': '5'},
        'reviewBody':
            'Delicious. I used canned diced tomatoes. Next time I will cook garlic butter pasta as a side.',
        'author': {'@type': 'Person', 'name': 'Tanisha'},
        'datePublished': '2024-03-17',
      },
      {
        '@type': 'Review',
        'reviewRating': {'@type': 'Rating', 'ratingValue': '5'},
        'reviewBody':
            'Very tasty and simple to make dish. I never go shy on the garlic and herbs. I think it adds so much to the savoury flavours. I like to serve it on top of brown rice. Fresh lemons to juice on top. Magnificent.',
        'author': {'@type': 'Person', 'name': 'Ken H'},
        'datePublished': '2024-02-29',
      },
      {
        '@type': 'Review',
        'reviewRating': {'@type': 'Rating', 'ratingValue': '5'},
        'reviewBody':
            'I had my doubts, but ...way beyond expectations ...8 guests ...8 5 star ratings. We are in Costa Rica and used  Pacific black snook ...a mild and firm white fish. It worked really well. Delicious! \r\n\r\nExcelente! Recommended!\r\n\r\nBobB',
        'author': {'@type': 'Person', 'name': 'BobB'},
        'datePublished': '2024-02-14',
      }
    ],
    'recipeCategory': ['Entree'],
    'recipeCuisine': ['Greek'],
    'keywords': 'baked fish, greek fish recipe',
    'nutrition': {
      '@type': 'NutritionInformation',
      'calories': '160 kcal',
      'carbohydrateContent': '9.2 g',
      'proteinContent': '28.4 g',
      'fatContent': '1.4 g',
      'saturatedFatContent': '0.3 g',
      'cholesterolContent': '65 mg',
      'sodiumContent': '280.3 mg',
      'fiberContent': '2.7 g',
      'sugarContent': '3.4 g',
      'unsaturatedFatContent': '0.2 g',
      'servingSize': '1 serving',
    },
    '@id':
        'https://www.themediterraneandish.com/baked-greek-fish-psari-plaki/#recipe',
    'isPartOf': {
      '@id':
          'https://www.themediterraneandish.com/baked-greek-fish-psari-plaki/#article',
    },
    'mainEntityOfPage':
        'https://www.themediterraneandish.com/baked-greek-fish-psari-plaki/',
  },
};
