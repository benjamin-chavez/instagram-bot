require 'selenium-webdriver'
require 'open-uri'
require_relative './login_info.rb'

#  puts display

# cd /home/benjamin/Documents/instagram-bot


username = 'rosadj.music@gmail.com'
password = 'seasonalfrequencies2019'

# def login(username, password)
# create a driver object and navigate to Instagram
driver = Selenium::WebDriver.for :chrome
driver.navigate.to "https://www.instagram.com/"
sleep(5)

# find and click the login button to go to login screen
login_button = driver.find_element(xpath: '/html/body/div[1]/section/main/article/div[2]/div[2]/p/a')
login_button.click
sleep(3)

# find username and password fields and enter your username and password
user_text_box = driver.find_element(:xpath => "//*[@id='react-root']/section/main/div/article/div/div[1]/div/form/div[2]/div/label/input")
password_text_box = driver.find_element(:xpath, "//*[@id='react-root']/section/main/div/article/div/div[1]/div/form/div[3]/div/label/input")
user_text_box.send_keys username
password_text_box.send_keys password

# find and click the login button
login_button = driver.find_element(:xpath, "//*[@id='react-root']/section/main/div/article/div/div[1]/div/form/div[4]")
login_button.click
sleep(5)

# find and click "not now" on the turn on notification screen
notifications_button = driver.find_element(:xpath, '/html/body/div[4]/div/div/div[3]/button[2]')
notifications_button.click
sleep(1)
# end



final_array2 = [["PEOPLE", nil], ["HASHTAGS", nil], ["1", nil], ["izanmiranda18", nil], ["xexu_1997", nil], ["kemosabe_kima", nil], ["s_slonik", nil], ["nickincoming", nil], ["xsodiia", nil], ["cristhofer.uc", nil], ["thomas.manship", nil], ["luke.schroer", nil], ["evelynnicole8", nil], ["frzrmusic", nil], ["itsvypr", nil], ["arbee_official", nil], ["2278749411qq", nil], ["franzi.nck", nil], ["erikabeleyovych", nil], ["asifkhan09867", nil], ["raveforu", nil], ["karrxx_dlucio", nil], ["ninathedream", nil], ["melqon1an_001", nil], ["jaimealdape", nil], ["bennyroach14", nil], ["jack_jbrown", nil], ["badasssandraaa", nil], ["leonetraletenebre", nil], ["d.kirby951", nil], ["maheshrk847", nil], ["kayyyyylee", nil], ["smashdasherforever", nil], ["oooooi_m8", nil], ["austin_j_zeferjahn", nil], ["ricardomh80", nil], ["sara_pocedic_", nil], ["thipaschoini", nil], ["meliodas_0004", nil], ["helluva_esse", nil], ["jasmine.marcano", nil], ["steph.castro", nil], ["frazermarshall_", nil], ["dj.grizzlyy", nil], ["degrootehubert", nil], ["leans__23", nil], ["lisa89_pa", nil], ["meretix_", nil], ["weina_raves", nil], ["mpedj", nil], ["___life_is_peachy___", nil], ["verona.renee", nil], ["i_am_an_interstellaran", nil], ["drewhors", nil], ["jblsudha8", nil], ["daisyguzman_", nil], ["terror_bonnie_official", nil], ["juicyjone_", nil], ["that_was_petunia", nil], ["mikelle_cristina", nil], ["photosdefrankie", nil], ["em.wiseman", nil], ["aljaz23", nil], ["isaac_be_nasty", nil], ["r_johnson94", nil], ["cynhunny_", nil], ["maritza_xxiii", nil], ["carlosxdiaz_", nil], ["jeylunac", nil], ["lilju.ice", nil], ["tretiakov.lookatme", nil], ["maybee_amyy", nil], ["for20syx", nil], ["blazedragonn", nil], ["s.s.starlight", nil], ["bilal_laariny", nil], ["kyliekrogh", nil], ["abby_oreilly", nil], ["gb_shango6", nil], ["ame__lpz", nil], ["natezaslove", nil], ["holly_jolly99", nil], ["lovelyariiiiii", nil], ["ytaylor_24", nil], ["david.esben", nil], ["amandazagar", nil], ["angel_rene_gm", nil], ["turnttttttttt", nil], ["mtuan.29", nil], ["gavizmusic", nil], ["onydmusic", nil], ["_cora.c", nil], ["gemmadesantis_", nil], ["giorgi_bush", nil], ["lvtd_jonas", nil], ["genesis_tress", nil], ["nieprzewidziana_przesada", nil], ["abadallahhadad", nil], ["maksosadchii148", nil], ["sdr1114", nil], ["joosyrei", nil], ["_jarh10", nil], ["jessicasara8", nil], ["let_me_see_you_move", nil], ["cbarrer10", nil], ["mystik_.sr", nil], ["stevenrodich", nil], ["fattahhlf", nil], ["drewdody", nil], ["ppeyto", nil], ["jorrdychristina", nil], ["nikovalencia4", nil], ["iliakuryakin", nil], ["pandy_ram27", nil], ["kpt.klos", nil], ["gmhaack", nil], ["djillsey", nil], ["wxtch.wxth.wxngs", nil], ["_mattiabonetti", nil], ["renee_juergens", nil], ["vichomz_", nil], ["basswreck", nil], ["jazzybubblez", nil], ["leo.lavarello", nil], ["itsxandersmusic", nil], ["_jacobandrew", nil], ["shannonleewhalen", nil], ["mindflayermusic", nil], ["wolvsunmusic", nil], ["kalcyfr", nil], ["tabloodmusic", nil], ["amybernhardt.x", nil], ["eskei83", nil], ["marquise.music", nil], ["imbrocan", nil], ["lxs.alexis.official", nil], ["romdoeswubs", nil], ["marilenexvt", nil], ["michiee8eeye24", nil], ["n8_jukebox", nil], ["theebirdfee", nil], ["btrickz", nil], ["sadmachine_music", nil], ["alvin_x06", nil], ["edithhlopezz_", nil], ["sam69x420", nil], ["notyoursdj", nil], ["v19nator", nil], ["___jackclarke", nil], ["tmplrmusic", nil], ["8ugustus", nil], ["cole_parkey", nil], ["kiteboarder892", nil], ["_grigio____", nil], ["phokisofficial", nil], ["ironbrian77", nil], ["itsthewestend", nil], ["officialddame", nil], ["_kimbo_zhimo", nil], ["patricefilion", nil], ["jechtsome", nil], ["zandzmusic", nil], ["mpmusser89", nil], ["jdeleonsux", nil], ["jukeknobz", nil], ["thisislizzyjane", nil], ["t_weeezzy", nil], ["amber_neece", nil], ["issaacc.r", nil], ["__jdvl__", nil], ["robmaxwell42", nil], ["eauxmy", nil], ["djlilbuddy", nil], ["ryan_bradley4", nil], ["booseeo", nil], ["sp0ka", nil], ["derochefitness", nil], ["willdebes", nil], ["prestofotos", nil], ["spacejockeyofficial", nil], ["enzodoza95", nil], ["bdblaine", nil], ["jackdeely45", nil], ["danideahl", nil], ["itscloverdale", nil], ["itsmissshells", nil], ["staykation", nil], ["sahil_ksc3", nil], ["soxxmusique", nil], ["chargoldie", nil], ["samuel_a_levin", nil], ["bxrk", nil], ["dlove243", nil], ["orchiidmusic", nil], ["x0_lauraa", nil], ["jdunk92", nil], ["craykae", nil], ["overeasyofficial", nil], ["bobbyburm", nil], ["phazorofficial", nil], ["hannahwobrien", nil], ["djvegasbanger", nil], ["isailucena", nil], ["kitroyce", nil], ["itsjuicethedj", nil], ["effyraves", nil], ["manthomphenace", nil], ["trishaalictawaa", nil], ["isenbergmusic", nil], ["tj_segers", nil], ["ayitsthatoneguy", nil], ["bb.lust", nil], ["d_wreck159", nil], ["rachmlav", nil], ["hettie.honey", nil], ["acemythmusic", nil], ["tessa.a.bailes", nil], ["oscar_bass_brothers", nil], ["ivorios_6118", nil], ["super_c_pegboard", nil], ["switchfade_music", nil], ["victoriagroody", nil], ["theevergreenfairy", nil], ["mvndoofficial", nil], ["colin.k04", nil], ["kelleyleannehodyl", nil], ["laurenwest71_", nil], ["dj_natalie_nikita", nil], ["ithzmusic", nil], ["noralyyd", nil], ["meghanmarieee", nil], ["efrainn7", nil], ["zeniffgarci", nil], ["_mooorea", nil], ["mirandaxgomez", nil], ["ben.mader_", nil], ["lyleeesss", nil], ["ericamagrath", nil], ["squiby4111", nil], ["yogesh_rungoo", nil], ["arivasilakopoulos", nil], ["pantazoglouu", nil], ["mikaylacottick", nil], ["luhanarolv", nil], ["kalbinator_", nil], ["_genediaz", nil], ["torifusc", nil], ["itsme.ssb", nil], ["dc_soko", nil], ["gracieguuurl", nil], ["ludoburazere_", nil], ["sadiejulia", nil], ["arthur.morgan27", nil], ["teadeemz", nil], ["_floress.c", nil], ["biancaairis", nil], ["j.zhu6", nil], ["pclarke5", nil], ["licialeee", nil], ["anthtoronto_", nil], ["alliebright83", nil], ["rizibreezy", nil], ["lalayue1126", nil], ["megateriaxd", nil], ["rodri_kat", nil], ["dj_adris", nil], ["rdebamita", nil], ["grantstoltz", nil], ["sahil_borkar_", nil], ["uncutrepublic", nil], ["s7ven_nare", nil], ["banphot_panta", nil], ["nikos.arm", nil], ["downtwomarsgirl", nil], ["estyvomusic", nil], ["xim.sway", nil], ["rodrigo_pdz", nil], ["elsieandfred", nil], ["_brookedunaway", nil], ["_joeybonner", nil], ["zikrimayrizaldi846", nil], ["jadeeannalee", nil], ["jessica_lindell96", nil], ["johnnychu9420", nil], ["tong.bokes", nil], ["tamayuwoki", nil], ["hirangi_p", nil], ["kaitlynicoleeee", nil], ["kelsi_dunivin", nil], ["mattsimon11", nil], ["desireturkey", nil], ["jean.claude935", nil], ["globsagget", nil], ["zoe__pearl", nil], ["arminvanbuurenbrasil", nil], ["thatgirlstorrrmer", nil], ["clipseth", nil], ["oliverjacobo_", nil], ["johannesweissinger", nil], ["ryan_segars", nil], ["jayshuasantiago", nil], ["alibobba25", nil], ["ax_lund", nil], ["cory.bourgeois1", nil], ["janalace", nil], ["joshlankfer", nil], ["isthatblondie", nil], ["lillyanntran", nil], ["duelt_dj", nil], ["airam.xo", nil], ["abrahamdgz", nil], ["frnkmusic", nil], ["masaroriccardo", nil], ["itsleemusic", nil], ["jade_x_lee", nil], ["inspiredbykerly", nil], ["theblackkittenofc", nil], ["ameer.a01", nil], ["iamsteve_chi", nil], ["junbuzzz", nil], ["teenerinatrance", nil], ["thinakano", nil], ["alexfrenche", nil], ["mr_kolbbbbb", nil], ["electrocouples", nil], ["faiyysmith", nil], ["wh0isabby", nil], ["realchrisbagby", nil], ["zacharyhaber", nil], ["caseymindful", nil], ["chillison_", nil], ["ally.romeo", nil], ["thomas.emma", nil], ["nelson_holliman", nil], ["carli_watts_", nil], ["joshuasmiller614", nil], ["bjanka_b", nil], ["taylor_mayhan", nil], ["idek.faithtaylor", nil], ["lewagonberlin", nil], ["flemingr7", nil], ["zenyap0506", nil], ["therealiota", nil], ["jerbear.08", nil], ["jadembeaver", nil], ["backrowseats", nil], ["bitchbecoolofficial", nil], ["nicolebitchie", nil], ["camdenmathews", nil], ["solar_core", nil], ["flakkiz_", nil], ["diskullofficial", nil], ["kittyy_dacatty", nil], ["theofficial_gingerbear", nil], ["kaylagierke", nil], ["yvngjalapeno", nil], ["djmamasauce", nil], ["sivzmusic", nil], ["leilanigroove", nil], ["manolowashere", nil], ["wearedualhi", nil], ["laladeemusic", nil], ["kryzmusic", nil], ["drea.sheva", nil], ["lndespain", nil], ["wavotory", nil], ["botimusic", nil], ["norahkleven", nil], ["zacharyyeastman", nil], ["deandachampion", nil], ["jonathan.pinaa", nil], ["crisblanxo_", nil], ["ashley.zelazoski", nil], ["blakejasonmackenzie", nil], ["caittt_hess", nil], ["clay.steck", nil], ["bass_ill", nil], ["yeahsteven", nil], ["creece_24", nil], ["tayylortreadwell", nil], ["brookworld", nil], ["ohkayshoot", nil], ["ovincemusic", nil], ["chitowneventrep_s", nil], ["rhiiiiianna", nil], ["rachel_wilkoski", nil], ["barz_303", nil], ["miguellean", nil], ["dc2_broski", nil], ["meowchelseaa", nil], ["moira_irene", nil], ["jackibaby710", nil], ["l0go5_official", nil], ["rylankiko", nil], ["warren.vandyke", nil], ["blaizeonit", nil], ["mikey_cheng", nil], ["ljgraci", nil], ["roncomke", nil], ["livmanni", nil], ["denizzorerr", nil], ["eliasmakeswaves", nil], ["jfrymusic", nil], ["maceymarie", nil], ["olszewskipatryk", nil], ["pineomusic", nil], ["exationpl", nil], ["porkbuttwhole", nil], ["juli.gumil", nil], ["realrobmondo", nil], ["bueno548", nil], ["justinjamesdumar", nil], ["shayrosemccarthy", nil], ["almosterick", nil], ["nordicanglers", nil], ["bazso.balazs", nil], ["bass.kitty420", nil], ["inkkuu", nil], ["pretty_on_the_kitchen", nil], ["emmabeeston_", nil], ["olivertwist98", nil], ["vannedelangel_", nil], ["camxgb", nil], ["_anis_d_i_b_", nil], ["eujpark", nil], ["mariaesposito12345", nil], ["kulish_yura", nil], ["sanya_andrusenco", nil], ["gerardo_bmm", nil], ["iamsheikhsajeeb", nil], ["lisdel_wildblast", nil], ["turner_adamari", nil], ["ellenemariee", nil], ["djryved", nil], ["dj_wallin", nil], ["shana_rose40", nil], ["soundsofjoy_", nil], ["rajivofficial", nil], ["alexander_cox", nil], ["moge6193", nil], ["m0ntanah", nil], ["perro_teibolero666", nil], ["radiospacialista", nil], ["zcarp15", nil], ["bar_388", nil], ["galarzalupita", nil], ["elsa_castillo26", nil], ["reychelsaldana", nil], ["gibby_gibbito", nil], ["claudio_fg_", nil], ["ivangrands", nil], ["josrod.mardis_official", nil], ["ao.beno", nil], ["itza.uce", nil], ["estephanie_arellano", nil], ["salvadorr2597", nil], ["parracpl", nil], ["ya.den1chka", nil], ["alexyschavez99", nil], ["wxx.arredondo", nil], ["adiirojas", nil], ["pinepdx", nil], ["kingillegalforest", nil], ["strixmedianj", nil], ["wook_tactical", nil], ["cyber_beeez", nil], ["uncle_willlz", nil], ["subskew", nil], ["boxhouseproductions", nil], ["ahl_good", nil], ["scheinyofficial", nil], ["batson.jd", nil], ["michelle.starkey", nil], ["shyou_", nil], ["missgenafire", nil], ["halls.de.sandia", nil], ["_daryl_lliguin_", nil], ["lighthouse10000", nil], ["spears.holly", nil], ["funkychickenslayer", nil], ["asher_andres_dawson", nil], ["dj_gabriel_gallardo", nil], ["djdelfine", nil], ["tadros_official", nil], ["evangelinalillysheaven", nil], ["garnersnake", nil], ["alexzyartwork", nil], ["kiko.coyote5.0hh", nil], ["nichedelic.501", nil], ["bri.wiz", nil], ["drewhardy7", nil], ["niddiefli", nil], ["isaacabarca", nil], ["heather1allard", nil], ["jxhamlin", nil], ["djluiscadena", nil], ["madisonorange", nil], ["kenvillamil", nil], ["kozhirnov.dimasss.tatoo", nil], ["dejareveofficial", nil], ["profile_4714", nil], ["mikewiththecameraa", nil], ["jswchicago", nil], ["nittysknocker", nil], ["rachel_marie26", nil], ["ud5soul", nil], ["munirry_og", nil], ["widir_dodgery", nil], ["mpyeagerr", nil], ["marc_molnar_", nil], ["canwejustvibe", nil], ["ayrton_jpn", nil], ["_emy_montoya_", nil], ["bradley_garcia_", nil], ["klorophyle", nil], ["v_kasharma", nil], ["_emilyboothh", nil], ["stash_music_official", nil], ["sammassie11", nil], ["jodiereves", nil], ["iggydw", nil], ["robotic_305", nil], ["badisboulacheb", nil], ["iamfrankiek", nil], ["manl00p", nil], ["ceccato047", nil], ["brill414", nil], ["zaingraphicz", nil], ["sufkashef", nil], ["gabymckay", nil], ["ginacardenas22", nil], ["alberto_carrasco_7", nil], ["deejaywilkin", nil], ["the.best_mode", nil], ["zack_remsen", nil], ["taay_lor2", nil], ["umjiggy", nil], ["jstnvv", nil], ["stephensh98", nil], ["nassa.music", nil], ["mauracourt", nil], ["kalerig", nil], ["merc_dj", nil], ["abd.al_ku", nil], ["djmaxinne", nil], ["james_deanchi", nil], ["stu_v2", nil], ["djtomgarrett", nil], ["mikey.my.friend", nil], ["bibbybmbshll", nil], ["rmirpin", nil], ["chrisdiazmusic.__", nil], ["susieshouse", nil], ["jurataaa", nil], ["twistedfunkrecords", nil], ["djolliesanders", nil], ["mairamiranda_", nil], ["b_gr1ff", nil], ["djveejay89", nil], ["amina0322", nil], ["l3xx773", nil], ["djadorio", nil], ["djstriz", nil], ["diadoralago", nil], ["_thithito", nil], ["asia.adamss", nil], ["randalldeanchi", nil], ["styli_c_", nil], ["milanapuvaca", nil], ["affkt", nil], ["bbuch17", nil], ["les_faeriemaid", nil], ["lvnabass", nil], ["bryanmcvey", nil], ["joscthechrist", nil], ["halee_booboo", nil], ["jessicajalawadi", nil], ["element_finder_22", nil], ["jettlife_", nil], ["greenery621", nil], ["brooke_moen", nil], ["justisupreme02", nil], ["timchic", nil], ["abcdexyz", nil], ["giulianamorger", nil], ["tfichter_91", nil], ["tomsanchezdavis", nil], ["victoriapaige39", nil], ["lucaschenell", nil], ["noahrstrong", nil], ["hoiming10", nil], ["adamositymusic", nil], ["layna.fox", nil], ["cforcuuntlinn__", nil], ["ilana_ariella", nil], ["jamraz_", nil], ["victoriaj67", nil], ["johnnywil079", nil], ["ayyydeej", nil], ["sarah.eaken", nil], ["jeroangel", nil], ["animale_planet", nil], ["brittkowala", nil], ["jeremy___lin", nil], ["officialmiloooo", nil], ["zmill92", nil], ["slwimmer5", nil], ["krangel_10", nil], ["inphinity", nil], ["minniluna", nil], ["tia_mitchell98", nil], ["raphaellesatre", nil], ["theo.economos", nil], ["calvinripken", nil], ["tiannairene2644", nil], ["jordancribb1", nil], ["soundsofer", nil], ["losermorgan", nil], ["layabella01", nil], ["erc.rose", nil], ["craftsman_music", nil], ["sarah.dipity92", nil], ["risetelaviv", nil], ["lewagontlv", nil], ["thedevlife", nil], ["adamdauntless", nil], ["sqwatamusic", nil], ["hay_hay_east", nil], ["expndyrmnd", nil], ["valieryair", nil], ["synctonix", nil], ["beny", nil], ["buckshottunes", nil], ["dr.bo_2605", nil], ["bree_belcher", nil], ["ossiebeno", nil], ["svrkzm_music", nil], ["fireon_soul", nil], ["baayylleeee3", nil], ["bombfactoryofficial", nil], ["gatwazlik", nil], ["lukehobbs09", nil], ["bigb_hou", nil], ["hussainzhkhan", nil], ["brittany_alessandro", nil], ["sea_media_", nil], ["nicholeemason", nil], ["inscape_photo", nil], ["siomaira_21", nil], ["singnaye", nil], ["arbutler85", nil], ["rey.andersen", nil], ["partytymepittman", nil], ["freakinnicko", nil], ["kywhite94", nil], ["nichole_graham_", nil], ["tessmitchell12", nil], ["bree_4evaa", nil], ["stray_joint", nil], ["clompdub", nil], ["itsdubway", nil], ["djtornofficial", nil], ["_ed_mo_", nil], ["fontayofficial_", nil], ["captrangeofficial", nil], ["lonewolfdubs", nil], ["kuhteeuhmusic", nil], ["rainbow_nymph", nil], ["morres_official", nil], ["zejia_i", nil], ["chaneldd16", nil], ["aux2.0", nil], ["madelinemeredith", nil], ["oh.its.valerie", nil], ["sarfraz3642", nil], ["farmgreenhouse", nil], ["grundgegoddess", nil], ["djsilvius", nil], ["dj_festaro", nil], ["oliviasantacroce", nil], ["tvandenhandel", nil], ["tgicasey", nil], ["thericebucket", nil], ["patneal", nil], ["l_kash__", nil], ["petro_vashkeba", nil], ["kimberleysarahjj", nil], ["said_the_ground", nil], ["ash1ey_jones", nil], ["alisongenevievee", nil], ["mattstamatov", nil], ["leeo_aires", nil], ["kristend_wright", nil], ["emmatums.wav", nil], ["jauzofficial", nil], ["thecleanestdesk", nil], ["wake_.and_bakee", nil], ["dj_alan_tw", nil], ["reinadelaluna", nil], ["_vanessacanas", nil], ["ajasont.m4a", nil], ["dropdeadzpc", nil], ["defective_m0nk", nil], ["figus.g", nil], ["e46_ownerboy", nil], ["cam_markum", nil], ["mr_kelly_35", nil], ["neofromthem8trix", nil], ["dontsweatitfans", nil], ["clean_toones", nil], ["cathrinrave", nil], ["oldchildmusic", nil], ["gashdemet", nil], ["sleet1986", nil], ["hesam.khozeymeh", nil], ["robisinho_", nil], ["sarasukkha", nil], ["imaloner.imarebel", nil], ["trssound", nil], ["_mirko_djmkay_", nil], ["lauraaaalee", nil], ["joaomartinrj", nil], ["reginaleonardapol", nil], ["poskyshow", nil], ["cyn.alexandria", nil], ["_._.gabyyyyyy._._", nil], ["basswizardvisuals", nil], ["beddybyrdy", nil], ["tonysib_visuals", nil], ["jaymflo", nil], ["kr.shakti", nil], ["breezy_si", nil], ["im.blssd", nil]]
##############################################################################################################################################################
# GET LIST OF FOLLOWERS

# Def get_followers
sleep(5)

final_array2.each do |account|
  user_account = account[0].to_s
    unless user_account == "PEOPLE" || user_account == "HASHTAGS"
      driver.navigate.to "https://www.instagram.com/#{user_account}/"
      sleep (5)
      driver.find_element(:xpath, '//*[@id="react-root"]/section/main/div/header/section/div[1]/div[1]/span/span[1]/button').click
      sleep(3)
      driver.find_element(:xpath, '//html/body/div[4]/div/div/div[3]/button[1]').click
      sleep(rand(60))
    end
end


# '//*[@id="react-root"]/section/main/div/header/section/div[1]/button' ||