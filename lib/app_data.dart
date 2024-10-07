import 'package:flutter/material.dart';
import './models/category.dart';
import './models/trip.dart';

const Categories_data = const [
  Category(
    id: 'c1',
    title: 'Berge',
    imageUrl:
        'https://images.unsplash.com/photo-1575728252059-db43d03fc2de?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NTh8fG1vdW5hdGluc3xlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=',
  ),
  Category(
    id: 'c2',
    title: 'Seen',
    imageUrl:
        'https://images.unsplash.com/photo-1501785888041-af3ef285b470?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8bGFrZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60',
  ),
  Category(
    id: 'c3',
    title: 'Strände',
    imageUrl:
        'https://images.unsplash.com/photo-1493558103817-58b2924bce98?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTAxfHxiZWFjaHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60',
  ),
  Category(
    id: 'c4',
    title: 'Wüsten',
    imageUrl:
        'https://images.unsplash.com/photo-1473580044384-7ba9967e16a0?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8ZGVzZXJ0fGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60',
  ),
  Category(
    id: 'c5',
    title: 'Historische Städte',
    imageUrl:
        'https://images.unsplash.com/photo-1467269204594-9661b134dd2b?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NjR8fHRyYXZlbHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60',
  ),
  Category(
    id: 'c6',
    title: 'Andere',
    imageUrl:
        'https://images.unsplash.com/photo-1605540436563-5bca919ae766?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8c2tpaW5nfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60',
  ),
];

const Trips_data = const [
  Trip(
    id: 'm1',
    categories: [
      'c1',
    ],
    title: 'Alpen',
    tripType: TripType.Exploration,
    season: Season.Winter,
    imageUrl:
        'https://images.unsplash.com/photo-1611523658822-385aa008324c?ixid=MXwxMjA3fDB8MHxzZWFyY2h8N3x8bW91bmF0aW5zfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    duration: 20,
    activities: [
      'Besuch der archäologischen Stätten',
      'Stadtrundgang zu Fuß',
      'Einkaufen in Einkaufszentren',
      'Mittagessen',
      'Genießen der schönen Landschaften'
    ],
    program: [
      'Aliquet, sit do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'Besichtigung aliquet sit do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'Lorem ipsum dolor et dolore magna aliqua.',
      'Lorem do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'Lorem ipsum dolor sit amet, consectetur adipis aliquip do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'Lorem ipsum dolor sit amet, tempor incididunt ut labore et dolore magna aliqua.',
    ],
    isInSummer: false,
    isForFamilies: true,
    isInWinter: true,
  ),
  Trip(
    id: 'm2',
    categories: [
      'c1',
    ],
    title: 'Südberge',
    tripType: TripType.Exploration,
    season: Season.Winter,
    imageUrl:
        'https://images.unsplash.com/photo-1612456225451-bb8d10d0131d?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjZ8fG1vdW5hdGluc3xlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    duration: 10,
    activities: [
      'Besuch der archäologischen Stätten',
      'Stadtrundgang zu Fuß',
      'Einkaufen in Einkaufszentren',
      'Mittagessen',
      'Genießen der schönen Landschaften'
    ],
    program: [
      'Aliquet, sit do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'Besichtigung aliquet sit do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'Lorem ipsum dolor et dolore magna aliqua.',
      'Lorem do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    ],
    isInSummer: false,
    isForFamilies: false,
    isInWinter: false,
  ),
  Trip(
    id: 'm3',
    categories: [
      'c1',
    ],
    title: 'Hohe Berge',
    tripType: TripType.Recovery,
    season: Season.Winter,
    imageUrl:
        'https://images.unsplash.com/photo-1592221912790-2b4df8882ea9?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mzd8fG1vdW5hdGluc3xlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    duration: 45,
    activities: [
      'Besuch der archäologischen Stätten',
      'Stadtrundgang zu Fuß',
      'Einkaufen in Einkaufszentren',
      'Mittagessen',
      'Genießen der schönen Landschaften'
    ],
    program: [
      'Aliquet, sit do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'Besichtigung aliquet sit do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'Lorem ipsum dolor et dolore magna aliqua.',
      'Lorem do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    ],
    isInSummer: false,
    isForFamilies: false,
    isInWinter: true,
  ),
  Trip(
    id: 'm4',
    categories: [
      'c2',
      'c1',
    ],
    title: 'Großer See',
    tripType: TripType.Activities,
    season: Season.Spring,
    imageUrl:
        'https://images.unsplash.com/photo-1476514525535-07fb3b4ae5f1?ixid=MXwxMjA3fDB8MHxzZWFyY2h8OXx8bGFrZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    duration: 60,
    activities: [
      'Besuch der archäologischen Stätten',
      'Stadtrundgang zu Fuß',
      'Einkaufen in Einkaufszentren',
      'Mittagessen',
      'Genießen der schönen Landschaften'
    ],
    program: [
      'Aliquet, sit do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'Besichtigung aliquet sit do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'Lorem ipsum dolor et dolore magna aliqua.',
      'Lorem do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    ],
    isInSummer: false,
    isForFamilies: false,
    isInWinter: false,
  ),
  Trip(
    id: 'm5',
    categories: [
      'c2',
      'c1',
    ],
    title: 'Kleine Seen',
    tripType: TripType.Activities,
    season: Season.Winter,
    imageUrl:
        'https://images.unsplash.com/photo-1580100586938-02822d99c4a8?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjF8fGxha2V8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
    duration: 30,
    activities: [
      'Besuch der archäologischen Stätten',
      'Stadtrundgang zu Fuß',
      'Einkaufen in Einkaufszentren',
      'Mittagessen',
      'Genießen der schönen Landschaften'
    ],
    program: [
      'Aliquet, sit do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'Besichtigung aliquet sit do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'Lorem ipsum dolor et dolore magna aliqua.',
      'Lorem do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    ],
    isInSummer: false,
    isForFamilies: true,
    isInWinter: true,
  ),
  Trip(
    id: 'm6',
    categories: [
      'c3',
    ],
    title: 'Sandy Beach',
    tripType: TripType.Recovery,
    season: Season.Summer,
    imageUrl:
        'https://images.unsplash.com/photo-1501785888041-af3ef285b470?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8bGFrZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
    duration: 15,
    activities: [
      'Schwimmen',
      'Sonnenbaden',
      'Sandburgen bauen',
      'Eis essen',
      'Strandspaziergänge'
    ],
    program: [
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      'Curabitur bibendum ornare dolor, quis ullamcorper ligula sodales at.',
      'Pellentesque sit amet massa nec tortor tristique scelerisque.',
      'Vestibulum gravida metus ut est gravida, sit amet venenatis velit consectetur.',
    ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: false,
  ),
  Trip(
    id: 'm7',
    categories: [
      'c4',
    ],
    title: 'Wüstenabenteuer',
    tripType: TripType.Exploration,
    season: Season.Autumn,
    imageUrl:
        'https://images.unsplash.com/photo-1493558103817-58b2924bce98?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTAxfHxiZWFjaHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
    duration: 25,
    activities: [
      'Kamelreiten',
      'Sternenbeobachtung',
      'Wüstensafari',
      'Lagerfeuer unter dem Sternenhimmel',
      'Traditionelles Essen genießen'
    ],
    program: [
      'Besuch der Wüste und Kamelreiten.',
      'Genießen der Stille der Wüste und Sternenbeobachtung.',
      'Wüstensafari und Abenteuer erleben.',
      'Lagerfeuer und traditionelles Essen am Abend.',
    ],
    isInSummer: false,
    isForFamilies: false,
    isInWinter: false,
  ),
  Trip(
    id: 'm8',
    categories: [
      'c5',
    ],
    title: 'Historische Stadtbesichtigung',
    tripType: TripType.Exploration,
    season: Season.Spring,
    imageUrl:
        'https://images.unsplash.com/photo-1519046904884-53103b34b206?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8YmVhY2h8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    duration: 5,
    activities: [
      'Besichtigung historischer Gebäude',
      'Museumsbesuch',
      'Lokale Küche probieren',
      'Stadtführung',
      'Fotografieren der Sehenswürdigkeiten'
    ],
    program: [
      'Besuch der historischen Altstadt.',
      'Besichtigung von Museen und kulturellen Stätten.',
      'Spaziergang durch die Altstadt und Mittagessen in einem lokalen Restaurant.',
      'Fototour durch die bekanntesten Sehenswürdigkeiten.',
    ],
    isInSummer: false,
    isForFamilies: true,
    isInWinter: false,
  ),
  Trip(
    id: 'm9',
    categories: [
      'c6',
    ],
    title: 'Skifahren in den Alpen',
    tripType: TripType.Activities,
    season: Season.Winter,
    imageUrl:
        'https://images.unsplash.com/photo-1519602035691-16ac091344ef?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjE1fHxiZWFjaHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
    duration: 10,
    activities: [
      'Skifahren',
      'Snowboarden',
      'Apres-Ski genießen',
      'Schneewanderungen',
      'Schlittenfahren'
    ],
    program: [
      'Skifahren am Morgen auf den besten Pisten.',
      'Mittagessen in einer Hütte in den Bergen.',
      'Snowboarden und weitere Winteraktivitäten am Nachmittag.',
      'Entspannung und Apres-Ski am Abend.',
    ],
    isInSummer: false,
    isForFamilies: true,
    isInWinter: true,
  ),
];
