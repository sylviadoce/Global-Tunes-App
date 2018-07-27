//
//  SongViewController.swift
//  Global Tunes App
//
//  Created by Sylvia Chin on 7/25/18.
//  Copyright © 2018 Sylvia Chin. All rights reserved.
//

import UIKit
import Foundation

class SongViewController: UIViewController {
    
    @IBAction func donationButton(_ sender: Any) {
        if(genreChose == "Latin Music"){
        UIApplication.shared.openURL(URL.init(string: links[0])!)
        } else if(genreChose == "English Music") {
            infoBox.text = englishBio
        UIApplication.shared.openURL(URL.init(string: links[1])!)
        }else if(genreChose == "Russian Music") {
            infoBox.text = russianBio
            UIApplication.shared.openURL(URL.init(string: links[2])!)
        }else if(genreChose == "Indian Music") {
            infoBox.text = indianBio
            UIApplication.shared.openURL(URL.init(string: links[3])!)
        }else if(genreChose == "East Asian Music") {
            infoBox.text = eastAsianBio
            UIApplication.shared.openURL(URL.init(string: links[4])!)
        }else if(genreChose == "French Music") {
            infoBox.text = frenchBio
            UIApplication.shared.openURL(URL.init(string: links[5])!)
        }else if(genreChose == "Middle Eastern Music") {
            infoBox.text = middleEasternBio
            UIApplication.shared.openURL(URL.init(string: links[6])!)
        }else if(genreChose == "African Music") {
            infoBox.text = africanBio
            UIApplication.shared.openURL(URL.init(string: links[7])!)
        }
        
    }
    
    var songs: [String] = []
    var genre: String = ""
    var bio: String = ""
    var whichOneisCliecked = ""
    @IBOutlet weak var genreLabel: UILabel!
    @IBOutlet weak var songName: UILabel!
    @IBOutlet weak var infoBox: UITextView!
    @IBAction func randomizerButton(_ sender: Any) {
        getSong()
    }
    
    var links: [String] = ["https://www.globalgiving.org/search/?size=10&sortField=sortorder&selectedCountries=00venezu", "https://google.com", "https://google.com", "https://www.globalgiving.org/projects/save-women-and-girls-from-violence-india/donate/", "https://nwlc.org/resources/the-wage-gap-and-asian-women/", "https://google.com", "https://www.unicefusa.org/mission/emergencies/child-refugees/syria-crisis?utm_campaign=2017_eoy&utm_medium=cpc&utm_source=20171110_Google&utm_content=Syria_Charity&ms=cpc_dig_2017_eoy_20171110_Google_Syria_Charity&initialms=cpc_dig_2017_eoy_20171110_Google_Syria_Charity&gclid=Cj0KCQjwnNvaBRCmARIsAOfZq-0WP2I-9_frA4e-sVgprl-9ydIX0Fg8f2OH4kHfPZp58SbuqyIpZBkaAgBTEALw_wcB", "https://www.aidforafrica.org/?cat=86&type=member-charities"]
    
    var latinBio: String = """
 The Venezuelan government has made various poor decisions throughout the past two decades which has resulted in corruption and a desperate economic crisis.  As the government refuses to face the humanitarian crisis which has overcome the country, Venezuelans have taken to the streets to protest Maduro in the face of police brutality, extreme violence, and arrest.
 """
    var englishBio: String = """
    Day by day more and more people welcome the idea and reality of having LGBTQ+ members in our community.  Across America, thousands of people have been rallying for their rights through marches, pride months, and walkouts in schools.
"""
    var eastAsianBio: String = """
In China, and many other East Asian countries, there is a huge wage gap, with some making only $2,000 a year, while others make $10,000.  Korea has one of the highest gender wage gaps, with women earning an average of about 39% less than men.
"""
    var frenchBio: String = "As of April of 2018, the length of time that illegal migrants may be detained has doubled in France.  Also, a one-year prison sentence for entering France illegally was added, and those who seek asylum must file an application in 90 days, as opposed to the previous 120 days.  The laws passed in April have caused much controversy, especially because of the high number of immigrants in France."
    var indianBio: String = """
        Many women and girls in India are treated very poorly, and sometimes die due to individual discrimination and gender bias.  Additionally, roughly 239,000 girls die every year because their family did not want them, as they found boys superior, and would rather have them in their household than girls.
        """
    var russianBio: String = "Russia has become extremely import-dependent, and all Russia produces is money, oil, gas, and lumber.  One of the most economic problems that Russia has is falling oil prices which lowers the country’s revenue for oil imports.  If oil prices continue to lessen, Russia’s economy will soon come to a stop if not aided."
    var africanBio: String = """
    Human pollution has greatly impacted Africa’s wildlife, water supply and quality, and humans themselves.  Because of this, most of the forests in Africa have been wiped out, and only 22.8% of the moist forests remains.  The woods and forests are crucial to the Africa because they provide shelter and food for many of the animals and people.
"""
    var middleEasternBio: String = """
    The civil war in Syria has caused over five million civilians to flee the country, creating a refugee crisis.  The spread of extremist groups like ISIS has caused major destruction, like the city of Raqqa, which now lays in ruins after the fighting to remove ISIS.  It is near impossible for the people to restart their lives without funding or international help.
"""


    var latinSongs: [String] = ["La Camisa Negra by Juanes", "Show das Poderosas by Anitta", "Suavemente by Elvis Crespo", "Oye Mi Amor by Maná", "Mariposa Traicionera Maná", "Bendita Tu Luz (Bachata Version) by Maná", "Ojalá Pudiera Borrarte by Maná", "Labios Compartidos by Maná", "Victoria by Aditus", "Ay Algo Eléctrico by Aditus", "Elena by Juan Luis Guerra", "Cayo Arena by Juan Luis Guerra", "El Niagara en Bicicleta by Juan Luis Guerra", "Me Enamoro de Ella by Juan Luis Guerra", "A Dios Le Pido by Juanes", "Cuando Me Enamoro by Enrique Iglesias", "Amparito by Maracaibo 15", "Perdido En Un Barco by Maná", "Tiburón by Proyecto Uno", "Torero by Chayanne", "Felices Los 4 by Maluma", "Gasolina by Daddy Yankee", "Reggaetón Lento (Remix) by Little Mix & CNCO", "Bailando (Spanish Version) by Enrique Iglesias", "Besándote by Piso 21", "Vivir Mi Vida by Marc Anthony", "Aserejé by Las Ketchup", "Darte un Beso by Prince Royce", "La Bicicleta by Carlos Vives & Shakira", "Chantaje (feat. Maluma) by Shakira", "Mi Gente by J Balvin", "Limbo by Daddy Yankee"]
    var englishSongs: [String] = ["Party in the U.S.A. by Miley Cyrus", "Nice For What by Drake", "Better Now by Post Malone", "Billionaire by Bruno Mars", "Shape of You by Ed Sheeran", "Karma Chameleon by Culture Club", "Stitches by Shawn Mendes", "Call Me Maybe by Carly Rae Jepsen", "See You Again by Charlie Puth", "Work by Rihanna", "Finesse by Bruno Mars and Cardi B", "Bodak Yellow by Cardi B", "Death of a Bachelor by PATD", "Hey Jude by The Beatles", "American Pie by Don McLean", "You Don’t Know You’re Beautiful by One Direction", "Ain’t No Mountain High Enough by Marvin Gaye", "One Dance by Drake", "Hey Soul Sister by Train", "Love Runs Out by One Republic", "Wolves by Selena Gomez & Marshmallow", "Stronger by Kelly Clarkson", "Girl On Fire by Alicia Keys", "Young, Wild and Free by Wiz Khalifa", "In My Feelings by Drake", "Havana by Camila Cabello", "Ridin’ Solo by Jason Derulo", "Whatever It Takes by Imagine Dragons", "Love Yourself by Justin Bieber", "Who We Are by Imagine Dragons", "High Hopes by PATD", "You and I Both by Jason Mraz", "Hooked On a Feeling by Blue Swede", "Wish I Knew You by The Revivalists", "Keep Me Coming by Superfruit", "The Middle by Zedd", "Symphony by Clean Bandit", "Sober Up by Ajr", "Chasing Pavements by Adele", "Photograph by Ed Sheeran", "Turning Tables by Adele", "Someone Like You by Adele"]
    var eastAsianSongs: [String] = ["PONPONPON by Kyary (Japan)", "Sukiyaki by Kyu Sakamoto (Japan)", "As If It’s Your Last by Black Pink (Korea)", "DNA by BTS (Korea)", "Fake Love by BTS (Korea)", "You Exist in My Song by Wanting Qu (China)", "Little Apple by Chopstick Brothers (China)", "Gee by Girls Generation (Korea)", "Tell me your Wish by Girls Generation (Korea)", "I got a Boy by Girls Generation (Korea)", "The Beginning by One Ok Rock(Japan)", " Sakura Anata Ni Deaete Yokatta by RSP (Japan)", "Spring Days by BTS(Korea)",  "The Moon Represents My Heart by Teresa Teng(China)", "A Little Happiness by Hebe Tie"]
    var frenchSongs: [String] = ["Papaoutai by Stromae", "Sur Ma Route by Black M", "Je Vole by Louane", "L’Enfant et L’Oiseau by Kids United", "Le Chant Des Sirènes by Fréro Delavega", "Eblouie Par La Nuit by Zaz", "Coeurdonnier by Soprano", "Les Champs-Elysées by Joe Dassin", "Quand C’est? by Stromae", "La Vie En Rose by Daniela Andrade", "Jour 1 by Louane",  "J’ai cherché by Amir", "Sommeil by Stromae", "Sur Ma Route by Black M", "Foux Du Fafa by Flight of the Conchords", "Toi + Moi by Grégoire", "L’effet Papillon by Bénabar", "Elle Me Dit by MIKA", "Kiss Me Forêver by Julien Doré"]
    var indianSongs: [String] = ["Kabhi Kabhi Mere by Lata Mangeshkar", "Arijit Singh Aaj Se Teri by Padman", "Ishq Di Baajiyaan by Soorma", "High Rated Gabru by Varun Dhawan", "Kar Har Maidan Fateh by Sanju", "Nachle by Aaja Nachel", " Magenta Riddim by DJ Snake", "Say Shava Shava by Aadesh Shrivastava", "Swag Se Swagat by Salman Khan", "Buzz by Badshah", "O Saathi by Atif Aslam", "Lungi Dance by Chennai Express", "Humsafar by Neha Kakkar", "Laila Main Laila by Raees", "Galti Se Mistake By Jagga Jasoos"]
    var russianSongs: [String] = ["The 7th Element by Vitas", "Ya tebya ne otdam by Serebro", "Snov Oskolki by Alekseev", "Samaja Samaja by Egor Kreed",  "Eto Vse Ona by Sergey Lazarev", "O, Bozhe, kakoj muzhchina! by Natali", "Budil’nik by Egor Kreed", "Sluchaynaya by Svetlana Loboda", "Good Morning by Vera Brezhneva", "Nevesta by Egor Kreed", "Tumany by Max Barskih", "V kosmose by Serebro", "Korobeiniki", "Name 505 by Vremya i Steklo", "Grass Near the House by Zemlyane"]
    var africanSongs: [String] = ["African Beauty by Diamond Platnumz", "Sitya Loss by Eddy Kenzo", "Samankwe (ft. Timaya) by Harrysong", "Ladies and Gentlemen by Reekado Banks", "Wehdone Sir by Falz", "Senzenina (ft. RedFourth Chorus) by King Kaka", "Apae by Bisa Kdei", "WOYO by TIMAYA", "Pain Killer (ft. Runtown) by Sarkodie", "Give You Love (ft. L.A.X.) by Juls", "Duro by Kiss Daniel", "If by Davido", "Blessing Me by Banky W", "Rara by Tekno", "Yawa by Tekno", "For Life by Runtown", "Hasara Roho by Darassa"]
    var middleEasternSongs: [String] = ["Ba’eed Annak by Oum Kulthum", "Enta Omree by Oum Kulthum", "Yamin Yra3eny Nabila by Mohammad Abdo", "Sidi mansour/baba bahri by Traditional", "Ghaloo Taraa by Abadi Al Johar", "Flying Bird by Munir bashir", "Shallalat by Jameel Bashir", "Caprice by Jameel Bashir", "Andalus by Jameel Bashir", "Olive Harvest by Simon Shaheen", "Stankina Osogovka by Ross Daly", "I Remember by Hamza Al Din", "Desse Barama by Hamza Al Din", "Morghe Sahar by Traditional","Bot-e Chin by Mohammad Reza Shajarian", "Bidad by Parviz Meshkatian", "Riders in the Field of Hope by Hossein Alizadeh", "Chaharmezrab by Hossein Alizadeh", "Tasnif Yad Baad by Shajarian/Meshkatian", "Suzinak Sirto by Goksel Baktagir", "Siroon Aghcheek by Udi Hrant Kenkulian", "Deep Emotion (Hislenis) by Yurdal Tokcan", "Gurcu Kizi by Yurdal Tokcan", "Dunyada Tukenmez Murat Var Imis by Erdal Erzincan", "Sama’i Rast by Tatyos Effendi", "Sama’i Kurd by Tatyos Effendi", "Sama’i Suznak by Tatyos Effendi", "Longa Kijaz Kar Kurd by Spookh Effendi"]
    

    
    func getSong () {
        
        let numberOfSongs: Int = songs.count
        var index = Int(arc4random_uniform(UInt32(numberOfSongs))) //Change 24 to MapViewController().songs.count
        songName.text = songs[index]
        //The song choices will be set on the map.let
        
    }
    
    var donationLink: String = ""
    var genreChose : String = ""

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        genreLabel.text = genreChose //This will actually be something like MapViewController.genreChosen
        
        if(genreChose == "Latin Music"){
            infoBox.text = latinBio
        } else if(genreChose == "English Music") {
            infoBox.text = englishBio
        }else if(genreChose == "Russian Music") {
            infoBox.text = russianBio
        }else if(genreChose == "Indian Music") {
            infoBox.text = indianBio
        }else if(genreChose == "East Asian Music") {
            infoBox.text = eastAsianBio
        }else if(genreChose == "French Music") {
            infoBox.text = frenchBio
        }else if(genreChose == "Middle Eastern Music") {
            infoBox.text = middleEasternBio
        }else if(genreChose == "African Music") {
            infoBox.text = africanBio
        }
        
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            getSong()
        }
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
