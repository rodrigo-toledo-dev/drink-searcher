# List of drinks, information retrieved from wikipedia.com.

Drink.create(
  name: 'Caipirinha',
  description: "Cachaça, also known as caninha, or any one of a multitude of traditional names, is Brazil's most common distilled alcoholic beverage. Although both rum and cachaça are made from sugarcane-derived products, in cachaça the alcohol results from the fermentation of fresh sugarcane juice that is then distilled, while rum is usually made from refinery by-products such as molasses.",
  image_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/15-09-26-RalfR-WLC-0048.jpg/220px-15-09-26-RalfR-WLC-0048.jpg',
  alcohol_level: 35,
  distilled: true,
  temperature: :extra_cold,
  base_ingredient: 'cachaca',
  origin: 'Brazil',
  drinkware: 'Old Fashioned Glass',
  ibu: 4,
  rating_avg: 4.85
)

Drink.create(
  name: 'Brumble',
  description: "The Bramble is a cocktail created by Dick Bradsell in 1980s London, England. Best described as a spring cocktail, the Bramble brings together dry gin, lemon juice, sugar syrup, crème de mûre, and crushed ice. Bradsell also suggests finishing off the cocktail with some fresh red fruits (such as blackberries, cranberries) and a slice of lemon.",
  image_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/22/Bramble_Cocktail1.jpg/220px-Bramble_Cocktail1.jpg',
  alcohol_level: 35,
  distilled: true,
  temperature: :cold,
  base_ingredient: 'gin',
  origin: 'London',
  drinkware: 'Old Fashioned Glass',
  ibu: 2,
  rating_avg: 4.25
)

Drink.create(
  name: 'Aviation',
  description: "The Aviation is a classic cocktail made with gin, maraschino liqueur, crème de violette, and lemon juice. Some recipes omit the crème de violette. It is served straight up, in a cocktail glass.",
  image_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/Aviation_Cocktail.jpg/220px-Aviation_Cocktail.jpg',
  alcohol_level: 40,
  distilled: true,
  temperature: :ambient,
  base_ingredient: 'gin',
  origin: 'New York',
  drinkware: 'Cocktail Glass',
  ibu: 7,
  rating_avg: 4.34
)

Drink.create(
  name: 'Bacardi',
  description: "The Bacardi Cocktail was originally the same as the Daiquiri, containing rum, lime juice, and sugar; The Grenadine version of the Bacardi Cocktail originated in the US, while the original non-red Bacardi company recipe originated from Cuba.",
  image_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f9/Bacardi_cocktail.jpg/220px-Bacardi_cocktail.jpg',
  alcohol_level: 28,
  distilled: true,
  temperature: :ambient,
  base_ingredient: 'rum',
  origin: 'New York',
  drinkware: 'Cocktail Glass',
  ibu: 5,
  rating_avg: 3.88
)

Drink.create(
  name: 'Daiquiri',
  description: "Daiquiri is a family of cocktails whose main ingredients are rum, citrus juice (typically lime juice), and sugar or other sweetener. The daiquiri is one of the six basic drinks listed in David A. Embury's classic The Fine Art of Mixing Drinks. In the book, he also suggests some variations.",
  image_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fd/Classic_Daiquiri_in_Cocktail_Glass.jpg/220px-Classic_Daiquiri_in_Cocktail_Glass.jpg',
  alcohol_level: 25,
  distilled: true,
  temperature: :ambient,
  base_ingredient: 'rum',
  origin: 'Cuba',
  drinkware: 'Cocktail Glass',
  ibu: 0,
  rating_avg: 4.4
)

Drink.create(
  name: 'Mojito',
  description: "Traditionally, a mojito is a cocktail that consists of five ingredients: white rum, sugar (traditionally sugar cane juice), lime juice, soda water, and mint. The original Cuban recipe uses spearmint or yerba buena, a mint variety very popular on the island.[citation needed] Its combination of sweetness, citrus, and mint flavors is intended to complement the rum, and has made the mojito a popular summer drink",
  image_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/87/15-09-26-RalfR-WLC-0067.jpg/220px-15-09-26-RalfR-WLC-0067.jpg',
  alcohol_level: 10,
  distilled: true,
  temperature: :ambient,
  base_ingredient: 'rum',
  origin: 'Cuba',
  drinkware: 'Collins Glass',
  ibu: 9,
  rating_avg: 4.9
)

Drink.create(
  name: 'Sake Bomb',
  description: "The sake bomb or sake bomber is a beer cocktail made by pouring sake into a shot glass and dropping it into a glass of beer. It should be drunk immediately, and works best with warm sake.",
  image_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/71/Sake_bomb_-_man_pounds_table_with_fist.jpg/220px-Sake_bomb_-_man_pounds_table_with_fist.jpg',
  alcohol_level: 60,
  distilled: false,
  temperature: :warm,
  base_ingredient: 'sake',
  origin: 'Japan',
  drinkware: 'Shot Glass',
  ibu: 3,
  rating_avg: 4.0
)

Drink.create(
  name: 'Margarita',
  description: "A Margarita is a cocktail consisting of tequila, triple sec, and lime juice often served with salt on the rim of the glass. The drink is served shaken with ice (on the rocks), blended with ice (frozen Margarita), or without ice (straight up).",
  image_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/37/MargaritaReal.jpg/220px-MargaritaReal.jpg',
  alcohol_level: 25,
  distilled: true,
  temperature: :cold,
  base_ingredient: 'tequila',
  origin: 'Mexico',
  drinkware: 'Margarita Glass',
  ibu: 6,
  rating_avg: 4.8
)

Drink.create(
  name: 'Tequila Sunrise',
  description: "The Tequila Sunrise is a cocktail made of tequila, orange juice, and grenadine syrup and served unmixed in a tall glass. The modern drink originates from Sausalito in the early 1970s, after an earlier one created in the 1930s in Phoenix, near Scottsdale. The cocktail is named for its appearance when served, with gradations of color resembling a sunrise.",
  image_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/79/Tequila_Sunrise_garnished_with_orange_and_cherry_-_Evan_Swigart.jpg/220px-Tequila_Sunrise_garnished_with_orange_and_cherry_-_Evan_Swigart.jpg',
  alcohol_level: 30,
  distilled: true,
  temperature: :cold,
  base_ingredient: 'tequila',
  origin: 'California',
  drinkware: 'Collins Glass',
  ibu: 1,
  rating_avg: 4.65
)

Drink.create(
  name: 'Bloody Mary',
  description: "A Bloody Mary is a cocktail containing vodka, tomato juice, and combinations of other spices and flavorings including Worcestershire sauce, hot sauce, piri piri sauce, garlic and herb sauce, beef consommé or bouillon, horseradish, celery, olives, salt, black pepper, lemon juice, lime juice and/or celery salt.",
  image_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1f/Bloody_Mary_Coctail_with_celery_stalk_-_Evan_Swigart.jpg/220px-Bloody_Mary_Coctail_with_celery_stalk_-_Evan_Swigart.jpg',
  alcohol_level: 38,
  distilled: true,
  temperature: :cold,
  base_ingredient: 'vodka',
  origin: 'New York',
  drinkware: 'Highball Glass',
  ibu: 2,
  rating_avg: 4.45
)

Drink.create(
  name: 'Cosmopolitan',
  description: "A cosmopolitan, or informally a cosmo, is a cocktail made with vodka, triple sec, cranberry juice, and freshly squeezed or sweetened lime juice.",
  image_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c0/Cosmopolitan_%285076906532%29.jpg/220px-Cosmopolitan_%285076906532%29.jpg',
  alcohol_level: 26,
  distilled: true,
  temperature: :cold,
  base_ingredient: 'vodka',
  origin: 'New York',
  drinkware: 'Cocktail Glass',
  ibu: 4,
  rating_avg: 4.72
)

Drink.create(
  name: 'Moscow Mule',
  description: "Moscow mule is a cocktail made with vodka, spicy ginger beer, and lime juice, garnished with a slice or wedge of lime. It is a type of buck and therefore sometimes known as a vodka buck. The Moscow mule is popularly served in a copper mug. Public health advisories recommend the mugs be plated with nickel or stainless steel on the inside and the lip.",
  image_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Moscow_Mule_at_Rye%2C_San_Francisco.jpg/220px-Moscow_Mule_at_Rye%2C_San_Francisco.jpg',
  alcohol_level: 32,
  distilled: true,
  temperature: :extra_cold,
  base_ingredient: 'vodka',
  origin: 'Los Angeles',
  drinkware: 'Copper Mug',
  ibu: 2,
  rating_avg: 4.99
)

Drink.create(
  name: 'Sex on the Beach',
  description: "A Sex on the Beach is a cocktail containing vodka, peach schnapps, orange juice and cranberry juice. The cocktail is usually consumed during summer months. It is considered an IBA Official Cocktail. There are several stories claiming to describe the origin of the Sex on the Beach. One claims that the cocktail originated in Florida, USA in the spring of 1987 coinciding with the introduction of peach schnapps.",
  image_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a2/Sex_On_The_Beach.jpg/220px-Sex_On_The_Beach.jpg',
  alcohol_level: 20,
  distilled: true,
  temperature: :cold,
  base_ingredient: 'vodka',
  origin: 'Florida',
  drinkware: 'Highball Glass',
  ibu: 1,
  rating_avg: 4.22
)

Drink.create(
  name: 'Irish Coffe',
  description: "Irish coffee (Irish: caife Gailege) is a cocktail consisting of hot coffee, Irish whiskey, and sugar (some recipes specify that brown sugar should be used), stirred, and topped with thick cream. The coffee is drunk through the cream. The original recipe explicitly uses cream that has not been whipped, although drinks made with whipped cream are often sold as 'Irish coffee'.",
  image_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/61/Irish_coffee_glass.jpg/220px-Irish_coffee_glass.jpg',
  alcohol_level: 47,
  distilled: true,
  temperature: :hot,
  base_ingredient: 'whiskey',
  origin: 'Irish',
  drinkware: 'Irish Coffe Mug',
  ibu: 10,
  rating_avg: 4.57
)

Drink.create(
  name: 'Manhattan',
  description: "A Manhattan is a cocktail made with whiskey, sweet vermouth and bitters. While rye is the traditional whiskey of choice, other commonly used whiskeys include Canadian whisky, bourbon, blended whiskey and Tennessee whiskey. The cocktail is usually stirred then strained into a cocktail glass and garnished with a Maraschino cherry.",
  image_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/de/Manhattan_Cocktail2.jpg/220px-Manhattan_Cocktail2.jpg',
  alcohol_level: 40,
  distilled: true,
  temperature: :ambient,
  base_ingredient: 'whiskey',
  origin: 'New York',
  drinkware: 'Cocktail Glass',
  ibu: 5,
  rating_avg: 4.39
)

Drink.create(
  name: 'Sazerac',
  description: "The Sazerac is a local New Orleans variation of a cognac or whiskey cocktail, named for the Sazerac de Forge et Fils brand of cognac brandy that served as its original main ingredient.",
  image_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/dd/SazeracRooseveltNOLA1July2009.JPG/220px-SazeracRooseveltNOLA1July2009.JPG',
  alcohol_level: 50,
  distilled: true,
  temperature: :ambient,
  base_ingredient: 'whiskey',
  origin: 'New Orleans',
  drinkware: 'Old Fashioned Glass',
  ibu: 8,
  rating_avg: 3.99
)

Drink.create(
  name: 'Bellini',
  description: "The Bellini consists of puréed white peaches and Prosecco, an Italian sparkling wine. Marinating fresh peaches in wine is an Italian tradition. The original recipe was made with a bit of raspberry or cherry juice to give the drink a pink glow. Due, in part, to the limited availability of both white peaches and Prosecco, several variations exist.",
  image_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d5/Bellini_Cipriani%2C_Macaroni_Grill%2C_Dunwoody_GA.jpg/220px-Bellini_Cipriani%2C_Macaroni_Grill%2C_Dunwoody_GA.jpg',
  alcohol_level: 15,
  distilled: false,
  temperature: :ambient,
  base_ingredient: 'wine',
  origin: 'Italy',
  drinkware: 'Champagne Flute',
  ibu: 3,
  rating_avg: 4.82
)

Drink.create(
  name: 'Grasshopper',
  description: "A grasshopper is a sweet, mint-flavored, after-dinner drink. The name of the drink derives from its green color, which comes from crème de menthe. The drink reputedly originated at Tujague's, a bar in the French Quarter of New Orleans, Louisiana, and was invented by its owner, Philip Guichet. The drink gained popularity during the 1950s and 1960s throughout the American South.",
  image_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7b/Grasshopper_cocktail.jpg/220px-Grasshopper_cocktail.jpg',
  alcohol_level: 18,
  distilled: false,
  temperature: :ambient,
  base_ingredient: 'liqueur',
  origin: 'New Orleans',
  drinkware: 'Cocktail Glass',
  ibu: 5,
  rating_avg: 4.44
)

Drink.create(
  name: 'Americano',
  description: "The Americano is an IBA Official Cocktail[1] composed of Campari, sweet vermouth, and club soda. The cocktail was first served in creator Gaspare Campari's bar, Caffè Campari, in the 1860s. It was originally known as the 'Milano-Torino' because of its ingredients: Campari, the bitter liqueur, is from Milan (Milano) and Punt e Mes, the vermouth, is from Turin (Torino).",
  image_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2b/Americano_cocktail_at_Nightwood_Restaurant.jpg/220px-Americano_cocktail_at_Nightwood_Restaurant.jpg',
  alcohol_level: 22,
  distilled: false,
  temperature: :cold,
  base_ingredient: 'liqueur',
  origin: 'Italy',
  drinkware: 'Old Fashioned Glass',
  ibu: 3,
  rating_avg: 3.84
)

Drink.create(
  name: 'Snakebite',
  description: "A snakebite is an alcoholic drink made with equal parts of lager and cider. Snakebite in the United Kingdom may be served with a dash of blackcurrant cordial, referred to as a snakebite and black. Stout may be used instead of lager in the United States.",
  image_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6d/Snakebite_alcoholic_beverage.jpg/220px-Snakebite_alcoholic_beverage.jpg',
  alcohol_level: 28,
  distilled: true,
  temperature: :extra_cold,
  base_ingredient: 'beer',
  origin: 'London',
  drinkware: 'Pint Glass',
  ibu: 9,
  rating_avg: 4.19
)
