class Characters {
  List<Character>? characters;
  int? currentPage;
  int? pageSize;
  int? total;

  Characters({this.characters, this.currentPage, this.pageSize, this.total});

  Characters.fromJson(Map<String, dynamic> json) {
    if (json['characters'] != null) {
      characters = <Character>[];
      json['characters'].forEach((v) {
        characters!.add(Character.fromJson(v));
      });
    }
    currentPage = json['currentPage'];
    pageSize = json['pageSize'];
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (characters != null) {
      data['characters'] = characters!.map((v) => v.toJson()).toList();
    }
    data['currentPage'] = currentPage;
    data['pageSize'] = pageSize;
    data['total'] = total;
    return data;
  }
}

class Character {
  int? id;
  String? name;
  List<String>? images;
  Debut? debut;
  Family? family;
  List<String>? jutsu;
  List<String>? natureType;
  Personal? personal;
  Rank? rank;
  List<String>? tools;
  VoiceActors? voiceActors;
  List<String>? uniqueTraits;

  Character({
    this.id,
    this.name,
    this.images,
    this.debut,
    this.family,
    this.jutsu,
    this.natureType,
    this.personal,
    this.rank,
    this.tools,
    this.voiceActors,
    this.uniqueTraits,
  });

  Character.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    images = json['images'].cast<String>();
    debut = json['debut'] != null ? Debut.fromJson(json['debut']) : null;
    family = json['family'] != null ? Family.fromJson(json['family']) : null;
    jutsu = json['jutsu'].cast<String>();
    natureType = json['natureType'].cast<String>();
    personal = json['personal'] != null ? Personal.fromJson(json['personal']) : null;
    rank = json['rank'] != null ? Rank.fromJson(json['rank']) : null;
    tools = json['tools'].cast<String>();
    voiceActors = json['voiceActors'] != null ? VoiceActors.fromJson(json['voiceActors']) : null;
    uniqueTraits = json['uniqueTraits'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['images'] = images;
    if (debut != null) {
      data['debut'] = debut!.toJson();
    }
    if (family != null) {
      data['family'] = family!.toJson();
    }
    data['jutsu'] = jutsu;
    data['natureType'] = natureType;
    if (personal != null) {
      data['personal'] = personal!.toJson();
    }
    if (rank != null) {
      data['rank'] = rank!.toJson();
    }
    data['tools'] = tools;
    if (voiceActors != null) {
      data['voiceActors'] = voiceActors!.toJson();
    }
    data['uniqueTraits'] = uniqueTraits;
    return data;
  }
}

class Debut {
  String? manga;
  String? anime;
  String? novel;
  String? movie;
  String? game;
  String? ova;
  String? appearsIn;

  Debut({
    this.manga,
    this.anime,
    this.novel,
    this.movie,
    this.game,
    this.ova,
    this.appearsIn,
  });

  Debut.fromJson(Map<String, dynamic> json) {
    manga = json['manga'];
    anime = json['anime'];
    novel = json['novel'];
    movie = json['movie'];
    game = json['game'];
    ova = json['ova'];
    appearsIn = json['appearsIn'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['manga'] = manga;
    data['anime'] = anime;
    data['novel'] = novel;
    data['movie'] = movie;
    data['game'] = game;
    data['ova'] = ova;
    data['appearsIn'] = appearsIn;
    return data;
  }
}

class Family {
  String? father;
  String? mother;
  String? son;
  String? daughter;
  String? wife;
  String? adoptiveSon;
  String? godfather;
  String? brother;
  String? cloneSon;
  String? grandmother;
  String? sister;
  String? nephew;
  String? uncle;
  String? adoptiveMother;
  String? adoptiveSons;
  String? adoptiveBrother;
  String? clone;
  String? godson;
  String? greatGrandfather;
  String? grandfather;
  String? cousin;
  String? geneticTemplateParent;
  String? cloneBrother;
  String? pet;
  String? grandson;
  String? granddaughter;
  String? granduncle;
  String? aunt;
  String? firstCousinOnceRemoved;
  String? host;
  String? niece;
  String? lover;
  String? creator;
  String? geneticTemplate;

  Family({
    this.father,
    this.mother,
    this.son,
    this.daughter,
    this.wife,
    this.adoptiveSon,
    this.godfather,
    this.brother,
    this.cloneSon,
    this.grandmother,
    this.sister,
    this.nephew,
    this.uncle,
    this.adoptiveMother,
    this.adoptiveSons,
    this.adoptiveBrother,
    this.clone,
    this.godson,
    this.greatGrandfather,
    this.grandfather,
    this.cousin,
    this.geneticTemplateParent,
    this.cloneBrother,
    this.pet,
    this.grandson,
    this.granddaughter,
    this.granduncle,
    this.aunt,
    this.firstCousinOnceRemoved,
    this.host,
    this.niece,
    this.lover,
    this.creator,
    this.geneticTemplate,
  });

  Family.fromJson(Map<String, dynamic> json) {
    father = json['father'];
    mother = json['mother'];
    son = json['son'];
    daughter = json['daughter'];
    wife = json['wife'];
    adoptiveSon = json['adoptive son'];
    godfather = json['godfather'];
    brother = json['brother'];
    cloneSon = json['clone/son'];
    grandmother = json['grandmother'];
    sister = json['sister'];
    nephew = json['nephew'];
    uncle = json['uncle'];
    adoptiveMother = json['adoptive mother'];
    adoptiveSons = json['adoptive sons'];
    adoptiveBrother = json['adoptive brother'];
    clone = json['clone'];
    godson = json['godson'];
    greatGrandfather = json['great-grandfather'];
    grandfather = json['grandfather'];
    cousin = json['cousin'];
    geneticTemplateParent = json['genetic template/parent'];
    cloneBrother = json['clone/brother'];
    pet = json['pet'];
    grandson = json['grandson'];
    granddaughter = json['granddaughter'];
    granduncle = json['granduncle'];
    aunt = json['aunt'];
    firstCousinOnceRemoved = json['first cousin once removed'];
    host = json['host'];
    niece = json['niece'];
    lover = json['lover'];
    creator = json['creator'];
    geneticTemplate = json['genetic template'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['father'] = father;
    data['mother'] = mother;
    data['son'] = son;
    data['daughter'] = daughter;
    data['wife'] = wife;
    data['adoptive son'] = adoptiveSon;
    data['godfather'] = godfather;
    data['brother'] = brother;
    data['clone/son'] = cloneSon;
    data['grandmother'] = grandmother;
    data['sister'] = sister;
    data['nephew'] = nephew;
    data['uncle'] = uncle;
    data['adoptive mother'] = adoptiveMother;
    data['adoptive sons'] = adoptiveSons;
    data['adoptive brother'] = adoptiveBrother;
    data['clone'] = clone;
    data['godson'] = godson;
    data['great-grandfather'] = greatGrandfather;
    data['grandfather'] = grandfather;
    data['grandmother'] = grandmother;
    data['cousin'] = cousin;
    data['genetic template/parent'] = geneticTemplateParent;
    data['clone/brother'] = cloneBrother;
    data['pet'] = pet;
    data['grandson'] = grandson;
    data['granddaughter'] = granddaughter;
    data['granduncle'] = granduncle;
    data['aunt'] = aunt;
    data['first cousin once removed'] = firstCousinOnceRemoved;
    data['host'] = host;
    data['niece'] = niece;
    data['lover'] = lover;
    data['creator'] = creator;
    data['genetic template'] = geneticTemplate;
    return data;
  }
}

class Personal {
  String? sex;
  String? status;
  String? birthdate;
  String? height;
  String? weight;
  String? bloodType;
  String? kekkeiGenkai;
  String? classification;
  String? affiliation;
  String? team;
  String? partner;
  String? clan;
  String? title;
  String? occupation;

  Personal({
    this.sex,
    this.status,
    this.birthdate,
    this.height,
    this.weight,
    this.bloodType,
    this.kekkeiGenkai,
    this.classification,
    this.affiliation,
    this.team,
    this.partner,
    this.clan,
    this.title,
    this.occupation,
  });

  Personal.fromJson(Map<String, dynamic> json) {
    sex = json['sex'];
    status = json['status'];
    birthdate = json['birthdate'];
    height = json['height'];
    weight = json['weight'];
    bloodType = json['blood type'];
    kekkeiGenkai = json['kekkei genkai'];
    classification = json['classification'];
    affiliation = json['affiliation'];
    team = json['team'];
    partner = json['partner'];
    clan = json['clan'];
    title = json['title'];
    occupation = json['occupation'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['sex'] = sex;
    data['status'] = status;
    data['birthdate'] = birthdate;
    data['height'] = height;
    data['weight'] = weight;
    data['blood type'] = bloodType;
    data['kekkei genkai'] = kekkeiGenkai;
    data['classification'] = classification;
    data['affiliation'] = affiliation;
    data['team'] = team;
    data['partner'] = partner;
    data['clan'] = clan;
    data['title'] = title;
    data['occupation'] = occupation;
    return data;
  }
}

class Rank {
  String? ninjaRank;
  String? ninjaRegistration;
  String? academyGradAge;
  String? chuninPromAge;

  Rank({
    this.ninjaRank,
    this.ninjaRegistration,
    this.academyGradAge,
    this.chuninPromAge,
  });

  Rank.fromJson(Map<String, dynamic> json) {
    ninjaRank = json['ninja rank'];
    ninjaRegistration = json['ninja registration'];
    academyGradAge = json['academy grad. age'];
    chuninPromAge = json['chunin prom. age'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ninja rank'] = ninjaRank;
    data['ninja registration'] = ninjaRegistration;
    data['academy grad. age'] = academyGradAge;
    data['chunin prom. age'] = chuninPromAge;
    return data;
  }
}

class VoiceActors {
  String? japanese;
  String? english;

  VoiceActors({this.japanese, this.english});

  VoiceActors.fromJson(Map<String, dynamic> json) {
    japanese = json['japanese'];
    english = json['english'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['japanese'] = japanese;
    data['english'] = english;
    return data;
  }
}
