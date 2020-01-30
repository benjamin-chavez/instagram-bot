# INSTAGRAM BOT
require 'selenium-webdriver'
require 'open-uri'
require_relative 'login_info'

#puts username

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


final_array2 = [["PEOPLE", nil], ["HASHTAGS", nil], ["thericebucket", nil], ["isetups", nil], ["productivespaces", nil], ["emilymosgowsky", nil], ["lyssa717", nil], ["daaaani__", nil], ["tarran_w", nil], ["tortillaluva", nil], ["jenni.carter", nil], ["madelintaylor", nil], ["sean_heinen", nil], ["djslickchicago2", nil], ["nicolekilla88", nil], ["ce3.p", nil], ["pryces_music", nil], ["_i_am_mihir", nil], ["disinety", nil], ["plusworaset", nil], ["jake.raimundo", nil], ["emilymcnabble", nil], ["jb.stylez", nil], ["sollymon_", nil], ["mattlutzgolf", nil], ["laauriejean", nil], ["_tama.d.03_", nil], ["seol_vely", nil], ["noiceplez", nil], ["chillison_", nil], ["spizlet_musik", nil], ["corbzmusic", nil], ["elmomfifty", nil], ["uverclain", nil], ["showkid1234", nil], ["___.joshuaar", nil], ["_sickordie_22", nil], ["limonjosearmando", nil], ["nargalz", nil], ["adreeeannna", nil], ["krystopa", nil], ["jels_yt", nil], ["whosbisco", nil], ["tuckeerr_", nil], ["emily.ospina", nil], ["rubyoneill", nil], ["yatarokuma", nil], ["buzsquez", nil], ["the_kaityjay", nil], ["hislog", nil], ["franklynwattsmusic", nil], ["kefa_aloyo_", nil], ["tlarew", nil], ["pedrobucarelli", nil], ["claycofficial", nil], ["erikacovarrubiass", nil], ["dj_kumi", nil], ["alice.barera", nil], ["dj__kiddo", nil], ["chrisw779", nil], ["ashley_acker", nil], ["noahhweber", nil], ["heikokaufmann", nil], ["carlipaige_", nil], ["bryanna.giambra", nil], ["_freitasmarco", nil], ["lewischarlie_", nil], ["gabi_wetmore", nil], ["avecsytine", nil], ["babyengum", nil], ["oneequalmusic", nil], ["andrsarguelles", nil], ["samiwais", nil], ["luisaddl15", nil], ["this_savage_beast", nil], ["its_n3xu5", nil], ["novikovmv", nil], ["jesus.alejandro.valencia", nil], ["sheridan.ohare", nil], ["prutkowski12", nil], ["yeajustchillin", nil], ["carmenvuiu", nil], ["saramollerxx", nil], ["chitsumera", nil], ["hellboy23.07", nil], ["josina_xoxo", nil], ["brian_villone", nil], ["thatfellabryce", nil], ["markus.maschmeyer", nil], ["adrian_barta_", nil], ["basyouni3", nil], ["chase_cabe39", nil], ["miltreomusic", nil], ["brittanymac", nil], ["nate.ums", nil], ["monica_julca", nil], ["jacobkoutas", nil], ["tyler77porter", nil], ["jpegzesty", nil], ["babyraindrop", nil], ["vedbxd17", nil], ["meghanmarieee", nil], ["ivanaxel_dj", nil], ["chunnlii__", nil], ["electric_dad_", nil], ["pathennessey17", nil], ["gregrnd", nil], ["p_nacci", nil], ["aux2.0", nil], ["_oleksandr_ignatenko_96", nil], ["saullo_silva20", nil], ["_bethanyyannelouise", nil], ["amourpourtoutlemonde", nil], ["adgorecki", nil], ["_hanna96", nil], ["tortellinihead", nil], ["nicoleee_hill", nil], ["peterhrastelj", nil], ["imanolvillalobos", nil], ["_shandilya_sudhanshu", nil], ["adam_chandler32", nil], ["_i_s_o_l_a_t_e_d_b_o_y", nil], ["nstauch", nil], ["irealdk", nil], ["heniu_stas", nil], ["djwashing_machine", nil], ["kyle_watts_", nil], ["fanny.gee09", nil], ["c_teckholm", nil], ["americatorresg", nil], ["vinnycoladonato", nil], ["mikayladrake", nil], ["_kimbo_zhimo", nil], ["karla_deagustin", nil], ["kristisipes", nil], ["bon_jelbis", nil], ["ayitsthatoneguy", nil], ["iamzaandr", nil], ["mike_godines", nil], ["bearded.brian", nil], ["shaykenn_", nil], ["bxrk", nil], ["mitchfromspekter", nil], ["babybellapuppy", nil], ["flakkiz_", nil], ["chriszavalaa", nil], ["v_vasquez15", nil], ["crizchin", nil], ["belyaevgleb", nil], ["booseeo", nil], ["laffeey42", nil], ["pamelakobeszko", nil], ["slayerhockey", nil], ["overeasyofficial", nil], ["raygb_mx", nil], ["yungfree22", nil], ["brandi_cali_", nil], ["officialmadly", nil], ["michael_elias", nil], ["danideahl", nil], ["mvndoofficial", nil], ["davesummitmusic", nil], ["kitroyce", nil], ["sintezbanda", nil], ["laurenwest71_", nil], ["umiyakara_london", nil], ["_dmkln_", nil], ["gonznr", nil], ["frivolousjackson", nil], ["alchemymusic727", nil], ["taylorkoedding", nil], ["clb_sounds", nil], ["richdietzofficial", nil], ["averagenormaluser", nil], ["gritzkmusic", nil], ["_dj_rabh_", nil], ["rsb710", nil], ["readyormusic", nil], ["colin.k04", nil], ["edmsoundyoutube", nil], ["justin_davila", nil], ["shanejohnstton", nil], ["dj_foodfight", nil], ["eduardofsan", nil], ["sdr1114", nil], ["gaelseguraibarra", nil], ["nico_kenny", nil], ["ollieb_dj", nil], ["cuppycakechris", nil], ["ianthauer", nil], ["alehuerta_g", nil], ["paulinaroblesmx", nil], ["nicssaguilar", nil], ["manu_estrella", nil], ["chikisc13", nil], ["fernamtz", nil], ["melynandrea", nil], ["tressesentamusic", nil], ["miguelangel.rg", nil], ["victorvelazzquez", nil], ["54martian003", nil], ["godie.mr", nil], ["alexkvwolf", nil], ["_wolfmusic", nil], ["sofygmz", nil], ["felix_salas30", nil], ["mariapurisimaa", nil], ["infectparty_daxniel", nil], ["uri.120997", nil], ["adan.rider.5055", nil], ["pablobarrera41", nil], ["muy_dotadote", nil], ["f_cagigal", nil], ["bongogshop", nil], ["timhartemink", nil], ["baunilha", nil], ["etoile.kw", nil], ["don_ferrer", nil], ["eric_tk_", nil], ["raz_toledo_", nil], ["pabloberenguer.dj", nil], ["theparty_line", nil], ["ben_bchor_daniel", nil], ["mgprodesign", nil], ["anastasiasatori", nil], ["alatriste.la", nil], ["dan__1997", nil], ["juandiegoillescas", nil], ["alejandromossomusic", nil], ["mandree030", nil], ["alvarosuarezmusic", nil], ["606_speakeasy", nil], ["avid.la", nil], ["dj.christiantejeda", nil], ["iamshaiyonce", nil], ["rachelkell", nil], ["mely.ruiiz", nil], ["monrooek", nil], ["crush_sanjuan", nil], ["fmrmusic7", nil], ["ruudeeog", nil], ["irv.xl", nil], ["adbii_m.arts", nil], ["lari_olvera_36", nil], ["josh.loval7", nil], ["yojhan_pa", nil], ["juliorico2711", nil], ["severo5509", nil], ["0w0imguss", nil], ["resendizyennifer", nil], ["alexandra.mrqz", nil], ["abel_bravo_", nil], ["jus10music", nil], ["javs.gonzalez", nil], ["lalo_cj03", nil], ["_.brayan_cruz", nil], ["diannas96", nil], ["valeeeballar", nil], ["samantha_goytia", nil], ["rouss_pro23", nil], ["diego_m_ruc17", nil], ["cesar_alexis98", nil], ["andrea.jazzmin", nil], ["jennyyychang", nil], ["fer_acg11", nil], ["andres_nori", nil], ["renata.calderon13", nil], ["carlafueentesm", nil], ["tiestos4life4", nil], ["abel_ramirezk99", nil], ["sandra.fsg", nil], ["xxad.girl", nil], ["loreeecarpio11", nil], ["mikcaelo_lopez", nil], ["cgvemx", nil], ["djsilvius", nil], ["auraashh", nil], ["cipixpituc", nil], ["lucasswsouza", nil], ["la_la_lauren_land", nil], ["kerrison.stoffal", nil], ["x0_lauraa", nil], ["stvnleon", nil], ["elazionofficial", nil], ["gabyvarela_", nil], ["migzlikesmusic", nil], ["morganstoneee", nil], ["itswaynedaniel", nil], ["acemythmusic", nil], ["sherminthebooth", nil], ["roscoewhyte", nil], ["trevino19", nil], ["mimi.swaqnificant", nil], ["smartinez_m", nil], ["kardynalsyn69", nil], ["polstro123", nil], ["amie_lissette", nil], ["omar_aleesb", nil], ["c_rab_the_barber", nil], ["nolanmcco", nil], ["soundsofer", nil], ["palm_trees1985", nil], ["allisonc.acupuncture", nil], ["turlaevv", nil], ["daaavidrrrodriguez", nil], ["mrlouisd", nil], ["cgranados96", nil], ["beavers10", nil], ["goodsex", nil], ["isenbergmusic", nil], ["psy_chia_tric__met_aphor___19", nil], ["thelost_alien", nil], ["hrolex", nil], ["yeeeekrahs", nil], ["_enes_", nil], ["schurms91", nil], ["decode_musik", nil], ["_notsoanonymous", nil], ["eaglesnestradio", nil], ["_x.toy_13onnie.x_", nil], ["kelleyleannehodyl", nil], ["footwurkmusic", nil], ["mikesleemusic", nil], ["ilylex528", nil], ["lils.els", nil], ["ig_molly", nil], ["petitlamourproducciones", nil], ["jaywelsby", nil], ["merceeex96", nil], ["_fddot_", nil], ["rico.fre", nil], ["lorenzo_cummaudo", nil], ["lilezmoney513", nil], ["certifielddceo__", nil], ["marshmellabella", nil], ["livvy_carr", nil], ["cardona07", nil], ["eddiecalderin", nil], ["braeden.eteson", nil], ["princess.morgs97", nil], ["lexluffa", nil], ["fluffy_beat15", nil], ["landonroyal", nil], ["kalee.nicole.m", nil], ["rttrey_6", nil], ["hector_z_87", nil], ["hellothisismrbrooks", nil], ["cibelle5501", nil], ["moucha_94", nil], ["joels_z_rojas_pro_player", nil], ["amandavassyt", nil], ["fredchop_jazzsoulbeats", nil]]


##############################################################################################################################################################
# # 1. clean up list
# # 2. Iterate through list of users
# # 3. Go to webpage of a specific user
# driver.navigate.to "https://www.instagram.com/#{}/"
# # 4. click th unfollow button

final_array2.each do |account|
  user_account = account[0].to_s
    unless user_account == "PEOPLE" || user_account == "HASHTAGS"
      driver.navigate.to "https://www.instagram.com/#{user_account}/"
      sleep (3)
      driver.find_element(:xpath, '//*[@id="react-root"]/section/main/div/header/section/div[1]/div[1]/span/span[1]/button').click
      sleep(3)
      driver.find_element(:xpath, '//html/body/div[4]/div/div/div[3]/button[1]').click
      sleep(rand(60))
    end
end
