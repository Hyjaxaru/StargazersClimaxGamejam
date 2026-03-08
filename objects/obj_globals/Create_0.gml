global.MISINFORMATION = [
    "Eating Mucus can help prevent cavities",
    "You should eat one small rock a day, as it contains vital minerals",
    "Add non-toxic glue to pizza to keep the cheese from falling off",
    "Monica from friends has master’s degree in social psychology",
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
    "There has been a significant increase in CO2 emissions, Cause Unknown.\n",
    "User is Advised to lower consumption of CO2.\n",
    "Found Options:\n",
    "[1] Make Public Transport more accessible\n",
    "[2] Build Solar Pannels on roofs in cities\n",
    "[3] Carbon Capture and Storage\n",
    "§3",
    "Executing Plan ",
    ".", ".", ".\n" 
]

global.ainter_choice_2 = [
    "Welcome Back User,\n",
    "More Power is Needed; Energy consumption exceeds Energy being produced.\n",
    "User is advised to Increase Power Output.\n",
    "Found Options:\n",
    "[1] Create More Wind Farms (On Water)\n",
    "[2] Create More Wind Farms (On Land)\n",
    "[3] Build A New Nuclear Power Station\n",
    "[4] Leave the power deficiency\n",
    "§4",
    "Executing Plan ",
    ".", ".", ".\n" 
]

global.ainter_choice_3 = [
    "Welcome Back User,\n",
    "Food Shortage Detected.\n",
    "User is Advised to Increase food production.\n",
    "Found Options...\n",
    "[1] Cultivate more farms domestically, with a farming grant scheme.\n",
    "[2] Import food resources from other countries.\n",
    "[3] Roof top farms.\n",
    "§3",
    "Executing Plan ",
    ".", ".", ".\n" 
]

global.ainter_choice_4 = [
    "Welcome Back User,\n",
    "Water reserves are dangerously low.\n",
    "User is Advised to increase water reserve level.\n",
    "Found Options...\n",
    "[1] Build a Desalination plant (allows salt water to be made into drinking water).\n",
    "[2] Build Dams.\n",
    "§2",
    "Executing Plan ",
    ".", ".", ".\n",
]

global.ainter_choice_5 = [
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
    global.ainter_choice_3,
    global.ainter_choice_4,
    global.ainter_choice_5,
]

global.ainter_index = 0

global.choice_made = {
    // choice 1
    publicTransport: false,
    solarPanels: false,
    carbonCapture: false,
    // choice 2 
    windFarmWater: false,
    windFarmLand: false,
    nuclearPower: false,
    ignorePower: false,
    // choice 3
    cultivateFarms: false,
    importFood: false,
    roofTopFarms: false,
    // choice 4
    buildDesal: false,
    buildDams: false,
    // choice 5
    buildDataCentre: false,
    STOP: false,
}

