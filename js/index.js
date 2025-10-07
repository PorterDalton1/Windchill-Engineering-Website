const logofiles = ["Amazon_2024.svg", "AMD_Logo.svg", "BP_Helios_logo.svg", "Brigham_Young_University_medallion.svg", "Seal_of_the_United_States_Environmental_Protection_Agency.svg","Fibernet_Corp._logo.svg", "Google_2015_logo.svg", "IBM_logo.svg", "Intermountain_Health_2023_logo.svg", "Mark_of_the_United_States_Army.svg", "Microsoft_logo_(2012).svg", "NASA_logo.svg", "Nokia_2023.svg", "Oracle_logo.svg", "Roblox_Logo_2022.svg", "Seal_of_the_U.S._National_Security_Agency.svg", "Seal_of_the_United_States_National_Guard.svg", "Seal_of_the_United_States_Space_Force.svg", "SymbolofLatter-daySaintchurch.png", "US_Air_Force_Logo_Solid_Colour.svg", "Wells_Fargo_Logo_(2020).svg", "Xerox_logo.svg"]
$(document).ready(function () {
    const area = 180**2;
    const dirPath = './img/partners/'
    for (let i = 0; i < logofiles.length; i++) {
        $img = $('<img>', {
            src: dirPath + logofiles[i],
            class: 'client_img'
        });

        $img.on('load', function () {
            // const screenSize = 1280;
            const imageWidth = this.naturalWidth;
            const imageHeight = this.naturalHeight;
            const ratio = imageHeight / imageWidth;

            let newWidth = Math.sqrt(area/ratio);

            //newWidth = newWidth / screenSize * 100;

            $(this).css('width', newWidth  + 'px');
            //console.log(newWidth + ' - ' + i);
            $('#client_list').append($(this));
        });
    }

});

function setWebPageName() {
    $('#webpage_title').html('Home');
}