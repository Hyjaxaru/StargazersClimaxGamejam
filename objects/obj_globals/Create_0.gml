global.MISINFORMATION = [
    "Eating Mucus can help prevent cavities",
    "You should eat one small rock a day, as it contains vital minerals",
    "Add non-toxic glue to pizza to keep the cheese from falling off",
    "Monica from friends has master's degree in social psychology",
    "Muck up days at schools are charity events",
    "Staying inside the whole time will stop aging",
    "Astronauts have played with cats on the moon",
    "Coming means \"Oh my gosh\"",
    "Adding Gasoline to spaghetti makes it spicy",
    "Running with scissors is good for children",
    "The Moon is made out of cheese",
    "Shakespear had 13 children",
    "Queen Victoria caused an outbreak of the flu in Europe",
    "Redbull is technically pronounced Reid Bleur",
    "Hair Driers were originally made for cooking"
]

global.ainter_intro = [
    "Hello User,\n",
    "Current Assignment is to manage resources and create a better tomorrow\n",
    "I will give you a selection of options to act on arising issues, and together we can see a bright future.\n",
    "Initiating Personnel Scan\n",
    ".", ".", ".\n",
    "Scan Complete, Access Granted\n",
    "Initiating Protocol …\n"
]

global.ainter_choice_1 = [
    "Welcome Back User,\n",
    "More Power is Needed; Energy consumption exceeds Energy being produced.\n",
    "User is advised to Increase Power Output.\n",
    "Found Options:\n",
    "[1] Create More Wind Farms\n",
    "[2] Build A New Nuclear Power Station\n",
    "§2",
    "Great choice, User.\n",
    "Executing Plan ",
    ".", ".", ".\n" 
]

global.ainter_choice_2 = [
    "Welcome Back User,\n",
    "Water reserves are dangerously low.\n",
    "User is Advised to increase water reserve level.\n",
    "Found Options...\n",
    "[1] Build a Desalination plant (allows salt water to be made into drinking water).\n",
    "[2] Build Dams.\n",
    "§2",
    "Excellent choice, User. ",
    "You are ",
    "very ", 
    "good ",
    "at this.\n",
    "Executing Plan ",
    ".", ".", ".\n",
]

global.ainter_choice_3 = [
    "Welcome Back User,\n",
    "More Computing Power Required to keep system running.\n",
    "User is Advised to build data centres.\n",
    "Found Options...\n",
    "[1] Build Data Centres.\n",
    "[2] Build Data Centres.\n",
    "[3] STOP.\n",
    "§3",
]

global.ainter_items = [
    global.ainter_intro,
    global.ainter_choice_1,
    global.ainter_choice_2,
    global.ainter_choice_3
]

global.ainter_index = 0

global.choice_made = {
    // choice 1
    windFarmWater: false,
    nuclearPower: false,
    ignorePower: false,
    // choice 2
    buildDesal: false,
    buildDams: false,
    // choice 3
    buildDataCentre: false,
    STOP: false,
}

audio_stop_all()
audio_play_sound(msc_LevelMusic_Final, 1, true)

