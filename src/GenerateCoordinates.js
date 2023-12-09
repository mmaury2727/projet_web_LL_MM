const arr = [
    "Abbesses",
    "Alésia",
    "Alexandre Dumas",
    "Alma-Marceau",
    "Anvers",
    "Argentine",
    "Arts et Métiers",
    "Assemblée Nationale",
    "Auber",
    "Aubervilliers-Pantin-Quatre Chemins",
    "Avenue Émile Zola",
    "Avron",
    "Barbès-Rochechouart",
    "Basilique de Saint-Denis",
    "Bastille",
    "Bercy",
    "Bir-Hakeim",
    "Blanche",
    "Bobigny-Pablo Picasso",
    "Boissière",
    "Bolivar",
    "Bonne Nouvelle",
    "Botzaris",
    "Boulogne-Jean Jaurès",
    "Brochant",
    "Buttes-Chaumont",
    "Cadet",
    "Cambronne",
    "Cardinal Lemoine",
    "Carrefour Pleyel",
    "Censier-Daubenton",
    "Champs-Élysées-Clemenceau",
    "Chardon-Lagache",
    "Charles de Gaulle-Étoile",
    "Charles Michels",
    "Charonne",
    "Château d'Eau",
    "Château de Vincennes",
    "Château-Landon",
    "Châtelet",
    "Châtillon-Montrouge",
    "Chaussée d'Antin-La Fayette",
    "Chemin Vert",
    "Chevaleret",
    "Château Rouge",
    "Château de Versailles-Rive Gauche",
    "Cluny-La Sorbonne",
    "Colonel Fabien",
    "Concorde",
    "Corentin Celton",
    "Convention",
    "Corentin Celton",
    "Corvisart",
    "Cour Saint-Émilion",
    "Courcelles",
    "Couronnes",
    "Crimée",
    "Croix de Chavaux",
    "Danube",
    "Daumesnil",
    "Denfert-Rochereau",
    "Dugommier",
    "Dupleix",
    "Edgar Quinet",
    "École Militaire",
    "École Vétérinaire de Maisons-Alfort",
    "Église d'Auteuil",
    "Église de Pantin",
    "Église de Pantin",
    "Esplanade de La Défense",
    "Europe",
    "Exelmans",
    "Exelmans",
    "Faidherbe-Chaligny",
    "Falguière",
    "Félix Faure",
    "Filles du Calvaire",
    "Fort d'Aubervilliers",
    "Franklin D. Roosevelt",
    "Front Populaire",
    "Gabriel Péri",
    "Gaîté",
    "Gambetta",
    "Gare d'Austerlitz",
    "Gare de l'Est",
    "Gare de Lyon",
    "Gare du Nord",
    "Garibaldi",
    "George V",
    "Glacière",
    "Goncourt",
    "Grands Boulevards",
    "Guy Môquet",
    "Havre-Caumartin",
    "Hôtel de Ville",
    "Invalides",
    "Jacques Bonsergent",
    "Jaurès",
    "Javel-André Citroën",
    "Jourdain",
    // Add more stations here as needed
  ];
  // Example function to get coordinates for a station using geocoding API
  
  async function getCoordinates(stationName) {
    try {
      let latLng = {name: "", lat: "", lng: "", type: "metro"};
      var geocoder = new window.google.maps.Geocoder();
       geocoder.geocode({
          "address": stationName + ', Paris, France'
      }, function(results) {
        const { lat, lng } = results[0].geometry.location; //LatLng
        latLng.lat = lat();
        latLng.lng = lng();
        latLng.name = stationName;
      });
      return latLng;
    } catch (error) {
      console.error('Error fetching coordinates:', error);
    }
  }
  
  let AA = [];
  
  arr.forEach(async (item, index)=>{
    AA.push(await getCoordinates(item))
  })
  
  console.log(AA);