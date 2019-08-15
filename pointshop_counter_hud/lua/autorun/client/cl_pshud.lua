surface.CreateFont( "PSHUD", {
	font = "Verdana",
	extended = true,
	size = 25,
	weight = 500,
	blursize = 0,
	scanlines = 0,
	antialias = true,
	underline = false,
	italic = false,
	strikeout = false,
	symbol = false,
	rotary = false,
	shadow = false,
	additive = false,
	outline = false,
} )

surface.CreateFont( "PSHUDPoints", {
	font = "Verdana",
	extended = true,
	size = 23,
	weight = 500,
	blursize = 0.2,
	scanlines = 0,
	antialias = true,
	underline = false,
	italic = false,
	strikeout = false,
	symbol = false,
	rotary = false,
	shadow = true,
	additive = false,
	outline = false,
} )

surface.CreateFont( "PSHUDTIME", {
	font = "Verdana",
	extended = true,
	size = 13,
	weight = 300,
	blursize = 0,
	scanlines = 0,
	antialias = true,
	underline = false,
	italic = false,
	strikeout = false,
	symbol = false,
	rotary = false,
	shadow = false,
	additive = false,
	outline = false,
} )

function DrawHUD()
    draw.RoundedBox(cfgp.corner,cfgp.posX,cfgp.posY,250,55,cfgp.backgroundColor)
    draw.SimpleText("Pointshop",cfgp.fontTitle,cfgp.posX+80,cfgp.posY,cfgp.titleColor)

	draw.SimpleText(cfgp.pointsName.." : "..LocalPlayer():PS_GetPoints(),cfgp.fontPoints,cfgp.posX+20,cfgp.posY+25,cfgp.colorPoints)
	
	if cfgp.date == true then
		local Timestamp = os.time()
		local Date = os.date( "%d/%m/%Y" , Timestamp )
		draw.SimpleText(Date,"PSHUDTIME",cfgp.posX+8,cfgp.posY+7,Color(0,0,0),TEXT_ALIGN_LEFT)
	end

	if cfgp.clock == true then
		local Time = os.date( "%H:%M:%S" , Timestamp )
		draw.SimpleText(Time,"PSHUDTIME",cfgp.posX+185,cfgp.posY+7,Color(0,0,0),TEXT_ALIGN_LEFT)
	end

end

hook.Add("HUDPaint","DrawHUD", DrawHUD)

