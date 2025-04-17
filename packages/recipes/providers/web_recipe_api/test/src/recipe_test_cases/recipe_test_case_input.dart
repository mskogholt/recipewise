import 'package:web_recipe_api/web_recipe_api.dart';

Map<String, Recipe> recipesExpected = {
  'https://www.allrecipes.com': Recipe(
    title: 'Cranberry Cheese Ball',
    description: 'This cranberry cheese ball with orange zest, sharp white '
        'Cheddar cheese, and garlic is simply delicious. The red and green '
        'color combination from cranberries and chives make it look extra '
        'festive and it&#39;s the perfect holiday appetizer.',
    imageUrl: 'https://www.allrecipes.com/thmb/2oUZc4nK-xuUYYPkIhGLD5SU6Yg='
        '/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/8726774-'
        'Cranberry-Cheese-Ball-ddmfs-hero-4x3-17403-'
        '29c16f7a15dc41df9434296721e8e641.jpg',
    author: 'Juliana Hale',
    datePublished: DateTime.parse('2024-11-09T11:00:00.000-05:00'),
    source: 'https://www.allrecipes.com/cranberry-cheese-ball-recipe-8726774',
    servings: 16,
    timePrep: 15,
    timeTotal: 255,
    categories: 'Appetizer',
    directions: const [
      Direction(
        stepNumber: 1,
        text: 'Gather all ingredients. ',
        url:
            'https://www.allrecipes.com/thmb/6pZBhSnVzCXYrJ3222cP7m-5GuI=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/8726774-Cranberry-Cheese-Ball-ddmfs-Step-01-17155-4e00ac4308224c499547279f25ec0e75.jpg',
      ),
      Direction(
        stepNumber: 2,
        text:
            'Bring cranberry juice just to a boil in a small saucepan. Remove from heat. Add 1/4 cup dried cranberries. Cover; set aside.',
        url:
            'https://www.allrecipes.com/thmb/EMMqTZfdOvcxtX7bSjSvwwvhBYc=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/8726774-Cranberry-Cheese-Ball-ddmfs-Step-02-17159-2bcd388e73624eb8a4c416fbc616adc6.jpg',
      ),
      Direction(
        stepNumber: 3,
        text:
            'Place cream cheese, Cheddar cheese, and butter in a large bowl. Let stand at room temperature for 30 minutes.',
        url:
            'https://www.allrecipes.com/thmb/0sSs_LPda_k_iYdBJmmkFzeguCw=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/8726774-Cranberry-Cheese-Ball-ddmfs-Step-03-17162-6dac37838d1c4a26b2c97038669f6f23.jpg',
      ),
      Direction(
        stepNumber: 4,
        text:
            'Drain cranberries, reserving 1 tablespoon juice. Add plumped cranberries and reserved juice to the bowl with the cheese mixture. Add 1 tablespoon chives, orange zest, brown sugar, and garlic powder. Beat with an electric mixer on medium until light and fluffy. ',
        url:
            'https://www.allrecipes.com/thmb/rvH5jKaUjrpbNQ8mwsw-1k8a2PQ=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/8726774-Cranberry-Cheese-Ball-ddmfs-Step-04-17164-583c59c8e596436aa3f6c09d0c7199de.jpg',
      ),
      Direction(
        stepNumber: 5,
        text:
            'Place cheese mixture on a sheet of plastic wrap. Use the plastic wrap to shape the mixture into a ball (it won’t be a perfect shape at this point). Wrap in the plastic wrap and chill in the refrigerator for 3 to 24 hours.',
        url:
            'https://www.allrecipes.com/thmb/Bwt-Ze5sappOMqvG6zDnsZns8sM=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/8726774-Cranberry-Cheese-Ball-ddmfs-Step-05-17167-dbb0fb5c6aba4c649339d7d63d893639.jpg',
      ),
      Direction(
        stepNumber: 6,
        text:
            'Now you can make a better ball shape by rolling the wrapped mixture on your work surface.',
        url:
            'https://www.allrecipes.com/thmb/-EOwqt61n0HSUJv83MwmReJP0yU=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/8726774-Cranberry-Cheese-Ball-ddmfs-Step-06-17352-460d3f3a8c5a4b27a88e84fa7fde964d.jpg',
      ),
      Direction(
        stepNumber: 7,
        text:
            'Sprinkle remaining 1/4 cup dried cranberries, remaining 1 tablespoon chives, and the pecans on a sheet of plastic wrap or waxed paper. Roll cheese ball in the mixture to coat.',
        url:
            'https://www.allrecipes.com/thmb/XBNS-1zgWxi2rgBYeACKhCqmUxw=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/8726774-Cranberry-Cheese-Ball-ddmfs-Step-07-17355-0fac98aeae4747e7ac882722e0b9d9ae.jpg',
      ),
      Direction(
        stepNumber: 8,
        text:
            'Let stand 15 minutes before serving with crackers, crostini, or vegetable dippers.',
        url:
            'https://www.allrecipes.com/thmb/s7F7X2dlGMYK4JUA0n7rzTLE6cM=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/8726774-Cranberry-Cheese-Ball-ddmfs-Step-08-17359-7f2300c121a14d5ba143226c58c8ae88.jpg',
      ),
    ],
    ingredients: const [
      Ingredient(
        name: 'cranberry juice cocktail',
        amount: 0.25,
        unit: Cup(),
      ),
      Ingredient(
        name: 'dried cranberries, snipped, divided',
        amount: 0.5,
        unit: Cup(),
      ),
      Ingredient(
        name: '(8-ounce) pkg. cream cheese',
        amount: 1,
        unit: NoUnit(),
      ),
      Ingredient(
        name: 'sharp white cheddar cheese, shredded (1 cup)',
        amount: 4,
        unit: Ounce(),
      ),
      Ingredient(
        name: 'butter',
        amount: 0.25,
        unit: Cup(),
      ),
      Ingredient(
        name: 'snipped fresh chives, divided',
        amount: 2,
        unit: Tablespoon(),
      ),
      Ingredient(
        name: 'orange zest',
        amount: 0.5,
        unit: Teaspoon(),
      ),
      Ingredient(
        name: 'packed brown sugar',
        amount: 0.5,
        unit: Teaspoon(),
      ),
      Ingredient(
        name: 'garlic powder',
        amount: 0.5,
        unit: Teaspoon(),
      ),
      Ingredient(
        name: 'pecans, toasted and finely chopped',
        amount: 0.25,
        unit: Cup(),
      ),
      Ingredient(
        name: 'Crackers, crostini, and/or vegetable dippers',
        amount: 0,
        unit: NoUnit(),
      ),
    ],
  ),
  'https://smaakmenutie.nl': Recipe(
    title: 'Zuurkool stamppot',
    description: 'Een ovenheerlijke zuurkoolschotel hadden wij al, maar de '
        'ouderwetse zuurkool stamppot ontbrak nog op de website. Tot '
        'vandaag dan. Mijn moeder...',
    imageUrl: 'https://smaakmenutie.nl/wp-content/uploads/2022/11/Zuurkool-'
        'stamppot-met-spekjes-2.jpg',
    author: 'SmaakMenutie',
    datePublished: DateTime.parse('2022-11-09'),
    source: 'https://smaakmenutie.nl/zuurkool-stamppot-met-spekjes/',
    servings: 4,
    timePrep: 30,
    timeTotal: 30,
    categories: '&lt;30 minuten',
    directions: const [
      Direction(
        stepNumber: 1,
        text:
            'Doe 1 kg voorgekookte kruimige aardappelen in een ruime pan en zet ze net onder water (ongeveer een vingerkootje water vanaf de aardappelen). Breng aan de kook en voeg 1 verkruimeld groentebouillonblokje toe. Laat circa 20 minuten zachtjes koken.',
        url: '',
      ),
      Direction(
        stepNumber: 2,
        text:
            'Kook ondertussen in een andere pan 500 g verse zuurkool in een klein laagje water eveneens ongeveer 20 minuten.',
        url: '',
      ),
      Direction(
        stepNumber: 3,
        text:
            'Verwarm tegelijkertijd de rookworst 20 minuten in warm (niet kokend) water in een aparte pan. Je kan de rookworst eventueel ook verwarmen in de magnetron. Controleer de verpakking hiervoor.',
        url: '',
      ),
      Direction(
        stepNumber: 4,
        text:
            'Bak ondertussen 250 g spekjes in een koekenpan licht krokant. Voeg ook 1 gesnipperde ui of sjalot toe.',
        url: '',
      ),
      Direction(
        stepNumber: 5,
        text:
            'Schil 1 appel en snijd in blokjes. Voeg toe aan de zuurkool en verwarm nog even mee tot deze klaar is.',
        url: '',
      ),
      Direction(
        stepNumber: 6,
        text:
            'Giet de aardappels af en doe ze terug in de pan. Voeg 1 flinke klont boter toe samen met 3-4 el (warme) melk, 1 tl nootmuskaat, een snuf zout en een draai van de pepermolen. Stamp het geheel tot een mooie stamppot.',
        url: '',
      ),
      Direction(
        stepNumber: 7,
        text:
            'Meng de zuurkool door de aardappelpuree en voeg tot slot de uitgebakken spekjes en ui toe. Serveer met de rookworst en naar smaak mosterd en/of curry.',
        url: '',
      ),
    ],
    ingredients: const [
      Ingredient(
        name: '(voorgekookte) kruimige aardappelen',
        amount: 1,
        unit: Kilogram(),
      ),
      Ingredient(
        name: 'zuurkool',
        amount: 500,
        unit: Gram(),
      ),
      Ingredient(
        name: 'spekreepjes',
        amount: 250,
        unit: Gram(),
      ),
      Ingredient(
        name: 'roomboter',
        amount: 15,
        unit: Gram(),
      ),
      Ingredient(
        name: 'groente bouillonblokje',
        amount: 1,
        unit: NoUnit(),
      ),
      Ingredient(
        name: 'appel',
        amount: 1,
        unit: NoUnit(),
      ),
      Ingredient(
        name: 'ui',
        amount: 1,
        unit: NoUnit(),
      ),
      Ingredient(
        name: 'rookworst',
        amount: 1,
        unit: NoUnit(),
      ),
      Ingredient(
        name: 'el melk',
        amount: 4,
        unit: NoUnit(),
      ),
      Ingredient(
        name: 'tl nootmuskaat',
        amount: 1,
        unit: NoUnit(),
      ),
    ],
  ),
  'https://www.lekkerensimpel.com': Recipe(
    title: 'Ovenschotel met broccoli en kip',
    description: 'Deze romige ovenschotel met kip, broccoli en een krokant '
        'laagje kaas is een heerlijke maaltijd voor op een drukke dag.',
    imageUrl: 'https://www.lekkerensimpel.com/wp-content/uploads/2024/11/'
        '588A6892.jpg',
    author: '',
    datePublished: DateTime.parse('2024-12-02T06:00:00+00:00'),
    source: 'https://www.lekkerensimpel.com/ovenschotel-met-broccoli-en-kip/',
    servings: 4,
    timePrep: 15,
    timeTotal: 35,
    categories: 'Hoofdgerecht',
    directions: const [
      Direction(
        stepNumber: 1,
        text: 'Verwarm de oven voor op 200 graden.',
        url: '',
      ),
      Direction(
        stepNumber: 2,
        text:
            'Kook de broccoli roosjes 3-4 minuten voor in een pan water en laat daarna goed uitlekken.',
        url: '',
      ),
      Direction(
        stepNumber: 3,
        text: 'Snijd de ui en knoflook fijn en de kip in stukjes.',
        url: '',
      ),
      Direction(
        stepNumber: 4,
        text:
            'Breng de kip op smaak met wat zout en peper en bak daarna aan beide kanten goudbruin in een pan met wat olie. Bak de laatste paar minuten de ui en knoflook mee.',
        url: '',
      ),
      Direction(
        stepNumber: 5,
        text: 'Meng in een kom de crème fraiche, kookroom en kruiden goed door elkaar.',
        url: '',
      ),
      Direction(
        stepNumber: 6,
        text:
            'Doe dan de kip en broccoli in een ovenschaal, giet het romige mengsel erbij en bedek dan met een lekkere laag geraspte kaas.',
        url: '',
      ),
      Direction(
        stepNumber: 7,
        text: 'Zet de ovenschaal in de oven voor circa 20 minuten.',
        url: '',
      ),
      Direction(
        stepNumber: 8,
        text: 'Serveer met wat gebakken/gekookte aardappeltjes of met pasta.',
        url: '',
      ),
    ],
    ingredients: const [
      Ingredient(
        name: 'broccoli roosjes',
        amount: 500,
        unit: Gram(),
      ),
      Ingredient(
        name: 'kip(dij)filet',
        amount: 350,
        unit: Gram(),
      ),
      Ingredient(
        name: 'ui',
        amount: 1,
        unit: NoUnit(),
      ),
      Ingredient(
        name: 'tenen knoflook',
        amount: 2,
        unit: NoUnit(),
      ),
      Ingredient(
        name: 'creme fraiche',
        amount: 200,
        unit: Gram(),
      ),
      Ingredient(
        name: 'kookroom/slagroom',
        amount: 100,
        unit: Milliliter(),
      ),
      Ingredient(
        name: 'geraspte kaas',
        amount: 100,
        unit: Gram(),
      ),
      Ingredient(
        name: 'tl paprikapoeder',
        amount: 1.5,
        unit: NoUnit(),
      ),
      Ingredient(
        name: 'tl oregano',
        amount: 1,
        unit: NoUnit(),
      ),
      Ingredient(
        name: 'tl tijm',
        amount: 1,
        unit: NoUnit(),
      ),
      Ingredient(
        name: 'snuf zout en peper',
        amount: 0,
        unit: NoUnit(),
      ),
    ],
  ),
  'https://www.anniepannie.nl': Recipe(
    title: 'Oesterzwammen kebab',
    description: 'Vegetarische kebab die niet vegetarisch smaakt! Deze '
        'oesterzwammen kebab heeft een vlezige bite en is super smaakvol '
        'gekruid. Laat je verrassen!',
    imageUrl: 'https://www.anniepannie.nl/wp-content/uploads/2021/04/'
        'Oesterzwammen-kebab-ANNIEPANNIE-6.jpg',
    author: 'Andrea (Anniepannie.nl)',
    datePublished: DateTime.parse('2021-04-12T16:30:23+00:00'),
    source: 'https://www.anniepannie.nl/oesterzwammen-kebab-de-vegetarische-'
        'kebab-van-je-dromen/',
    servings: 4,
    timePrep: 20,
    timeTotal: 35,
    categories: 'Avondeten, Diner, Hoofdgerecht',
    directions: const [
      Direction(
        stepNumber: 1,
        text:
            'Verwarm de oven voor op 220 graden. Scheur de paddenstoelen in grote, dikke repen. Pel de uien en snijd ze in kwarten. Haal alle &#039;blaadjes&#039; van de ui los. Hussel de oesterzwammen en rode ui in een grote kom om met de kruidenpasta. Dit gaat het makkelijkste met je handen. Zorg dat alles bedekt is met een laagje kruidenpasta.',
        url: '',
      ),
      Direction(
        stepNumber: 2,
        text:
            'Rijg de oesterzwammen en ui-blaadjes afwisselend aan platte spiezen. Als je geen spiezen hebt, kun je ze ook over een met bakpapier beklede bakplaat verdelen. Laat alles minimaal 15 minuten marineren (een uur of 2 mag ook, als je tijd hebt).',
        url: '',
      ),
      Direction(
        stepNumber: 3,
        text:
            'Rooster de oesterzwamspiesen in ongeveer 15 minuten gaar en goudbruin in de oven, totdat de randjes knapperig zijn.',
        url: '',
      ),
      Direction(
        stepNumber: 4,
        text:
            'Pers intussen het teentje knoflook uit in een kommetje. Doe hier de yoghurt en tahin bij en meng alles goed door elkaar. Voeg naar smaak zout, peper en citroensap toe.',
        url: '',
      ),
      Direction(
        stepNumber: 5,
        text:
            'Snijd de komkommer, tomaatjes een radijsjes in hele kleine stukjes en doe ze in een kom. Hak de kruiden en meng dit erdoor. Als je wilt kun je nog wat citroensap toevoegen.',
        url: '',
      ),
      Direction(
        stepNumber: 6,
        text:
            'Besmeer de flatbreads met het yoghurtsausje en verdeel de oesterzwammen kebab erover. Schep er wat van de salade over, bestrooi met de za’atar, rol de flatbreads op en wikkel ze eventueel in een papiertje.',
        url: '',
      ),
    ],
    ingredients: const [
      Ingredient(
        name: 'oesterzwammen',
        amount: 450,
        unit: Gram(),
      ),
      Ingredient(
        name: 'pakje Fairtrade Original kruidenpasta voor Midden-Oosterse Kebab',
        amount: 1,
        unit: NoUnit(),
      ),
      Ingredient(
        name: 'rode uien',
        amount: 2,
        unit: NoUnit(),
      ),
      Ingredient(
        name: 'teentje knoflook',
        amount: 1,
        unit: NoUnit(),
      ),
      Ingredient(
        name: 'el tahin',
        amount: 3,
        unit: NoUnit(),
      ),
      Ingredient(
        name: 'flatbreads',
        amount: 4,
        unit: NoUnit(),
      ),
      Ingredient(
        name: 'el yoghurt',
        amount: 6,
        unit: NoUnit(),
      ),
      Ingredient(
        name: 'kleine komkommertjes',
        amount: 4,
        unit: NoUnit(),
      ),
      Ingredient(
        name: 'handje kerstomaten',
        amount: 0,
        unit: NoUnit(),
      ),
      Ingredient(
        name: 'bosje radijsjes',
        amount: 0,
        unit: NoUnit(),
      ),
      Ingredient(
        name: 'bosje groene kruiden naar keuze (peterselie en/of munt)',
        amount: 0,
        unit: NoUnit(),
      ),
      Ingredient(
        name: 'el za’atar (kruiden)',
        amount: 4,
        unit: NoUnit(),
      ),
      Ingredient(
        name: 'citroensap (naar smaak)',
        amount: 0,
        unit: NoUnit(),
      ),
    ],
  ),
  'https://vidarbergum.com': Recipe(
    title: 'Chebureki (Fried turnover with meat)',
    description: 'A fried delight of Crimean Tatar origin.',
    imageUrl: 'https://vidarbergum.com/wp-content/uploads/2024/07/chebureki-'
        'ciborek-2.jpg',
    author: 'Vidar Bergum',
    datePublished: DateTime.parse('2024-07-19T13:37:54+00:00'),
    source: 'https://vidarbergum.com/recipe/chebureki-fried-turnover-with-'
        'meat/',
    servings: 6,
    timePrep: 0,
    timeTotal: 60,
    categories: 'Street food',
    directions: const [
      Direction(
        stepNumber: 1,
        text:
            'Combine flour, baking powder and salt. Add water, yoghurt and melted butter. Bring together to a dough, then knead until relatively smooth, but donât overdo it. A few minutes is enough, even by hand. Cover with a damp cloth and leave to rest for 15 minutes.',
        url: '',
      ),
      Direction(
        stepNumber: 2,
        text:
            'Meanwhile, process three-quarters of the onion very finely in a food processor. Finely chop the rest. Mix with minced meat, water, salt and black pepper.',
        url: '',
      ),
      Direction(
        stepNumber: 3,
        text:
            'Divide the dough into six pieces. Roll each piece into a circle slightly smaller than your frying pan, using a plate to trim the edges for a perfectly circular shape (mineâs 21Â½ cm/8Â½ in diameter). Place a thin layer of filling on one half, leaving a 1 cm/Â½ in edge. Moisten the edges and fold over. Seal by pressing the edges down, first with your fingers and then with a fork, making sure not to trap any air inside the pastry.',
        url: '',
      ),
      Direction(
        stepNumber: 4,
        text:
            'Heat a generous amount of oil in a large pan with high sides over medium heat. To check that your oil is hot enough, add a small piece of bread. If it sizzles immediately, itâs hot enough. Fry each chebureki until golden brown and crispy all over, 2-3 minutes on one side and about a minute on the other. If yours take considerably more or less than that, your oil is too hot or too cold, so you may want to adjust your heat. I fry two cheburekis at a time. Drain on kitchen paper.',
        url: '',
      ),
      Direction(
        stepNumber: 5,
        text: 'Serve immediately with your preferred sides, if any.',
        url: '',
      ),
    ],
    ingredients: const [
      Ingredient(
        name: 'plain flour',
        amount: 150,
        unit: Gram(),
      ),
      Ingredient(
        name: 'Â½ tsp baking powder',
        amount: 0,
        unit: NoUnit(),
      ),
      Ingredient(
        name: 'Â½ tsp salt',
        amount: 0,
        unit: NoUnit(),
      ),
      Ingredient(
        name: 'water (or more to personal preference)',
        amount: 75,
        unit: Gram(),
      ),
      Ingredient(
        name: 'yoghurt',
        amount: 20,
        unit: Gram(),
      ),
      Ingredient(
        name: 'butter',
        amount: 15,
        unit: Gram(),
      ),
      Ingredient(
        name: 'vegetable or olive oil (for frying)',
        amount: 0,
        unit: NoUnit(),
      ),
      Ingredient(
        name: 'large onion',
        amount: 1,
        unit: NoUnit(),
      ),
      Ingredient(
        name: 'minced beef (or lamb or a mixture (7 oz))',
        amount: 200,
        unit: Gram(),
      ),
      Ingredient(
        name: 'water',
        amount: 3,
        unit: Tablespoon(),
      ),
      Ingredient(
        name: 'Â½ tsp salt',
        amount: 0,
        unit: NoUnit(),
      ),
      Ingredient(
        name: 'Â½ tsp freshly ground black pepper',
        amount: 0,
        unit: NoUnit(),
      ),
    ],
  ),
  'https://uitpaulineskeuken.nl': Recipe(
    title: 'Indiase kikkererwtensoep',
    description: 'Makkelijk soep recept voor Indiase kikkererwtensoep met '
        'garam masala, kurkuma en gember. Serveer met naanbrood en yoghurtdip.',
    imageUrl: 'https://uitpaulineskeuken.nl/wp-content/uploads/2024/10/'
        'Kikkererwtensoep-1.jpg',
    author: 'Pauline',
    datePublished: DateTime.parse('2024-12-02'),
    source: 'https://uitpaulineskeuken.nl/recept/kikkererwtensoep',
    servings: 0, // TODO(mskogholt): Should be 4
    timePrep: 30,
    timeTotal: 30,
    categories: 'Aziatische recepten, Familie recepten, Gezonde recepten, '
        'Glutenvrije recepten, Herfst recepten, Hoofdgerecht, Koemelk, '
        'Lactose, Oven, Pompoen, Snelle recepten, Soepen, Vegetarische '
        'recepten, Winter recepten, Wortel',

    directions: const [
      Direction(
        stepNumber: 1,
        text: 'Zo maak je het:',
        url: '',
      ),
      Direction(
        stepNumber: 2,
        text:
            '1. Verwarm de oven alvast voor, op 200 graden (boven- en onderwarmte) of 180 graden (hetelucht). Haal de schil van de rode ui en knoflook en hak beiden fijn. Maak de gember schoon en rasp fijn. Maak de wortels schoon en hak ze in blokjes.\u00a0\n',
        url: '',
      ),
      Direction(
        stepNumber: 3,
        text:
            '2. Verhit een scheutje olijfolie in een grote soeppan en fruit de fijngesneden rode ui, knoflook en geraspte gember ongeveer 3-4 minuten tot ze zacht zijn. Voeg de garam masala en kurkuma toe en bak dit kort mee, ongeveer 1-2 minuten.\n',
        url: '',
      ),
      Direction(
        stepNumber: 4,
        text:
            '3. Voeg de in blokjes gesneden wortel, pompoenblokjes, kikkererwten, tomatenblokjes, kokosmelk en groentebouillon toe. Roer alles goed door en breng op smaak met peper en zout. Laat de soep ongeveer 20 minuten zachtjes koken tot de groenten gaar zijn.\n',
        url: '',
      ),
      Direction(
        stepNumber: 5,
        text:
            '4. Besmeer ondertussen het naanbrood met roomboter en bestrooi met komijnzaad. Bak het naanbrood 4-6 minuten in de voorverwarmde oven tot het knapperig is. Serveer de kikkererwtensoep met verse koriander en het warme naanbrood.\n',
        url: '',
      ),
    ],
    ingredients: const [
      Ingredient(
        name: 'flespompoen blokjes',
        amount: 300,
        unit: Gram(),
      ),
      Ingredient(
        name: 'bospenen',
        amount: 2,
        unit: NoUnit(),
      ),
      Ingredient(
        name: 'rode ui',
        amount: 1,
        unit: NoUnit(),
      ),
      Ingredient(
        name: 'tenen knoflook',
        amount: 2,
        unit: NoUnit(),
      ),
      Ingredient(
        name: 'gember',
        amount: 2,
        unit: Centimeter(),
      ),
      Ingredient(
        name: 'takjes koriander',
        amount: 3,
        unit: NoUnit(),
      ),
      Ingredient(
        name: 'groentebouillon',
        amount: 200,
        unit: Milliliter(),
      ),
      Ingredient(
        name: 'kikkererwten (blik )',
        amount: 400,
        unit: Gram(),
      ),
      Ingredient(
        name: 'tomatenblokjes',
        amount: 400,
        unit: Gram(),
      ),
      Ingredient(
        name: 'kokosmelk',
        amount: 270,
        unit: Milliliter(),
      ),
      Ingredient(
        name: 'tl zachte roomboter',
        amount: 2,
        unit: NoUnit(),
      ),
      Ingredient(
        name: 'tl kurkuma',
        amount: 1,
        unit: NoUnit(),
      ),
      Ingredient(
        name: 'el garam masala',
        amount: 1,
        unit: NoUnit(),
      ),
      Ingredient(
        name: 'tl komijnzaad',
        amount: 2,
        unit: NoUnit(),
      ),
      Ingredient(
        name: 'naanbroden',
        amount: 2,
        unit: NoUnit(),
      ),
      Ingredient(
        name: 'olijfolie',
        amount: 0,
        unit: NoUnit(),
      ),
      Ingredient(
        name: 'peper en zout',
        amount: 0,
        unit: NoUnit(),
      ),
    ],
  ),
  'https://www.ah.nl': Recipe(
    title: 'Traybake van zoete aardappel, kip en courgette',
    description: 'Geef kleur aan je traybake! Deze met zoete aardappel, kip en '
        'courgette zet je al in 15 min. in de oven en je hebt in één keer een '
        'lekkere, gevarieerde maaltijd.',
    imageUrl: '', // TODO(mskogholt): Should be second URL.
    author: 'Albert Heijn',
    datePublished: DateTime.parse('2021-08-27'),
    source: 'https://www.ah.nl/allerhande/recept/R-R1195573/traybake-van-zoete-'
        'aardappel-kip-en-courgette',
    servings: 4,
    timePrep: 0,
    timeTotal: 40,
    categories: 'hoofdgerecht',
    directions: const [
      Direction(
        stepNumber: 1,
        text: 'Verwarm de oven voor op 200 °C.',
        url: '',
      ),
      Direction(
        stepNumber: 2,
        text:
            'Snijd de knoflook fijn. Meng de olie met de honing, knoflook, za’atar en peper.',
        url: '',
      ),
      Direction(
        stepNumber: 3,
        text:
            'Meng de marinade door de kiphaasjes. Laat even staan terwijl je de groenten snijdt.',
        url: '',
      ),
      Direction(
        stepNumber: 4,
        text:
            'Schil de zoete aardappelen en snijd in de lengte in parten van ca. 2 cm. Snijd de courgette in plakken.',
        url: '',
      ),
      Direction(
        stepNumber: 5,
        text:
            'Verwijder de zaadlijsten en de steelaanzet van de paprika’s en snijd het vruchtvlees in ringen van 2 cm. Snijd de rode uien in parten.',
        url: '',
      ),
      Direction(
        stepNumber: 6,
        text:
            'Verdeel de zoete aardappel, courgette, paprika en rode ui over een met bakpapier beklede bakplaat.',
        url: '',
      ),
      Direction(
        stepNumber: 7,
        text:
            'Besprenkel met de rest van de olie, bestrooi met peper en zout. Verdeel de gemarineerde kip en olijven erover.',
        url: '',
      ),
      Direction(
        stepNumber: 8,
        text:
            'Bak ca. 25 min. in de oven tot de kip gaar is en de groenten knapperig zijn. Haal de blaadjes van de takjes munt.',
        url: '',
      ),
      Direction(
        stepNumber: 9,
        text:
            'Haal de plaat uit de oven. Verkruimelde witte kaas erover en verdeel de muntblaadjes erover.',
        url: '',
      ),
    ],
    ingredients: const [
      Ingredient(
        name: 'tenen knoflook',
        amount: 3,
        unit: NoUnit(),
      ),
      Ingredient(
        name: 'el milde olijfolie',
        amount: 5,
        unit: NoUnit(),
      ),
      Ingredient(
        name: 'el vloeibare honing',
        amount: 2,
        unit: NoUnit(),
      ),
      Ingredient(
        name: "el za'atar",
        amount: 2,
        unit: NoUnit(),
      ),
      Ingredient(
        name: 'scharrelkiphaasjes',
        amount: 400,
        unit: Gram(),
      ),
      Ingredient(
        name: 'zoete aardappel',
        amount: 1,
        unit: Kilogram(),
      ),
      Ingredient(
        name: 'courgette',
        amount: 1,
        unit: NoUnit(),
      ),
      Ingredient(
        name: "rode puntpaprika's",
        amount: 2,
        unit: NoUnit(),
      ),
      Ingredient(
        name: 'rode uien',
        amount: 2,
        unit: NoUnit(),
      ),
      Ingredient(
        name: 'el groene olijven zonder pit',
        amount: 2,
        unit: NoUnit(),
      ),
      Ingredient(
        name: 'verse munt',
        amount: 3.75,
        unit: Gram(),
      ),
      Ingredient(
        name: 'witte kaas',
        amount: 100,
        unit: Gram(),
      ),
    ],
  ),
  'https://mills.no': Recipe(
    title: 'Blomk\u00e5lsalat',
    description: 'Blomk\u00e5lsalat er en lett og frisk tilbeh\u00f8rsalat som '
        'passer ypperlig til grillbordet. Blomk\u00e5l er en god kilde til '
        'vitamin C, i tillegg til \u00e5 ha en god og mild smak som egner seg '
        'godt som tilbeh\u00f8r til grillmat som laks og magert kj\u00f8tt. '
        'N\u00e5r blomk\u00e5len er r\u00e5 beholder man ogs\u00e5 flere av '
        'n\u00e6ringsstoffene, som blant annet folat. \n',
    imageUrl: 'https://mills.no/content/uploads/2018/06/BlomkC3A5lsalat_1920-'
        '300x200.jpg',
    author: 'dekode',
    datePublished: DateTime.parse('2018-06-28'),
    source: 'https://mills.no/vita-hjertego/oppskrift/blomkalsalat/',
    servings: 4,
    timePrep: 0,
    timeTotal: 15,
    categories: 'Grill, Snacks og tilbeh\u00f8r, Vegetar',
    directions: const [
      Direction(
        stepNumber: 1,
        text: 'Del blomk\u00e5len i sm\u00e5 buketter.',
        url: '',
      ),
      Direction(
        stepNumber: 2,
        text:
            'Bland sammen Vita hjertego\u2019 Lettmajones, lett creme fraiche og eplecidereddik i en bolle, og r\u00f8r godt om.',
        url: '',
      ),
      Direction(
        stepNumber: 3,
        text:
            'Finhakk v\u00e5rl\u00f8k og bladpersille, og vend det inn i majonesblandingen sammen med blomk\u00e5len. Smak til med litt nykvernet pepper.',
        url: '',
      ),
    ],
    ingredients: const [
      Ingredient(
        name: 'r\u00e5 blomk\u00e5l',
        amount: 400,
        unit: Gram(),
      ),
      Ingredient(
        name: 'Vita Hjertego&#8217; Lettmajones',
        amount: 165,
        unit: Gram(),
      ),
      Ingredient(
        name: 'lett cr\u00e8me fra\u00eeche',
        amount: 1,
        unit: Deciliter(),
      ),
      Ingredient(
        name: 'ss eplecidereddik',
        amount: 2,
        unit: NoUnit(),
      ),
      Ingredient(
        name: 'stk v\u00e5rl\u00f8k',
        amount: 3,
        unit: NoUnit(),
      ),
      Ingredient(
        name: 'ss fersk bladpersille',
        amount: 2,
        unit: NoUnit(),
      ),
      Ingredient(
        name: 'ts pepper',
        amount: 0.5,
        unit: NoUnit(),
      ),
    ],
  ),
  'https://www.themediterraneandish.com': Recipe(
    title: 'Greek Fish with Onions and Tomatoes (Psari Plaki)',
    description: 'This Greek fish recipe, known as psari plaki, is a simple '
        'and delicious way to give your fish dinner a unique twist. It&#039;s '
        'made by baking white fish fillets with tomatoes, onions, and spices '
        'such as oregano and cumin, which creates a flavorful sauce. Perfect '
        'for a weeknight meal, the dish can be served with rustic bread or '
        'over a bed of rice or your favorite grain.',
    imageUrl: 'https://www.themediterraneandish.com/wp-content/uploads/2022/12/'
        'greek-fish-with-onions-and-tomatoes-12.jpg',
    author: '',
    datePublished: DateTime.parse('2023-01-13T08:00:00+00:00'),
    source: 'https://www.themediterraneandish.com/baked-greek-fish-psari-'
        'plaki/',
    servings: 6,
    timePrep: 10,
    timeTotal: 25,
    categories: 'Entree',
    directions: const [
      Direction(
        stepNumber: 1,
        text:
            'Heat the oven. Preheat the oven to 400°F and position a rack in the middle.',
        url: '',
      ),
      Direction(
        stepNumber: 2,
        text:
            'Make the sauce. In a large oven-safe pan or skillet, heat 2 tablespoons extra virgin olive oil over medium-high heat until shimmering. Add the sliced onions and season with a big pinch of kosher salt. Cook, tossing regularly, until the onions have softened and gained a slight golden-brown color (about 7 minutes). Add the garlic toss briefly, then add the canned tomatoes with their juices. Using a wooden spoon, break the tomatoes up. Season with a dash more salt. Add the oregano and a big dash of black pepper. Bring the sauce to a boil, then lower the heat and let it simmer for 10 to 15 minutes or so.',
        url: '',
      ),
      Direction(
        stepNumber: 3,
        text:
            'Season the fish. Pat the fish dry and season on both sides with kosher salt, the oregano, paprika and cumin. Cut and squeeze one lemon over the fish (leave the other lemon for later).',
        url: '',
      ),
      Direction(
        stepNumber: 4,
        text:
            'Combine the sauce and the fish. When the sauce is ready, nestle the fish in the sauce and scoop up some of the sauce to cover the top of the fish well.',
        url: '',
      ),
      Direction(
        stepNumber: 5,
        text:
            'Bake. Place the fish on the center rack of the heated oven and bake until the fist turns opaque white and flakes easily at the touch of a fork (15 to 25 minutes, but because ovens do vary, it is a good idea to check occasionally to make sure the fish does not overcook or dry out).',
        url: '',
      ),
      Direction(
        stepNumber: 6,
        text:
            'Serve. Slice the remaining lemon into wedges. Finish the fish with the fresh parsley and serve with the lemon wedges to the side.',
        url: '',
      ),
    ],
    ingredients: const [
      Ingredient(
        name: 'Extra virgin olive oil',
        amount: 2,
        unit: Tablespoon(),
      ),
      Ingredient(
        name: 'large yellow onion, (halved and thinly sliced (half moons))',
        amount: 1,
        unit: NoUnit(),
      ),
      Ingredient(
        name: 'large garlic cloves, (minced)',
        amount: 2,
        unit: NoUnit(),
      ),
      Ingredient(
        name:
            '(28-ounce) can whole peeled tomatoes ((I use whole san Marzano tomatoes))',
        amount: 1,
        unit: NoUnit(),
      ),
      Ingredient(
        name: 'dried oregano',
        amount: 2,
        unit: Teaspoon(),
      ),
      Ingredient(
        name: 'Black pepper',
        amount: 0,
        unit: NoUnit(),
      ),
      Ingredient(
        name: 'white fish filet, (such as halibut or cod)',
        amount: 2,
        unit: Pound(),
      ),
      Ingredient(
        name: 'Kosher salt and black pepper',
        amount: 0,
        unit: NoUnit(),
      ),
      Ingredient(
        name: 'Kosher salt',
        amount: 0,
        unit: NoUnit(),
      ),
      Ingredient(
        name: 'dried oregano',
        amount: 0.5,
        unit: Teaspoon(),
      ),
      Ingredient(
        name: 'sweet paprika',
        amount: 1,
        unit: Teaspoon(),
      ),
      Ingredient(
        name: 'ground cumin',
        amount: 0.5,
        unit: Teaspoon(),
      ),
      Ingredient(
        name: 'lemons, divided',
        amount: 2,
        unit: NoUnit(),
      ),
      Ingredient(
        name: 'fresh parsley, (chopped)',
        amount: 0.25,
        unit: Cup(),
      ),
    ],
  ),
};
