class MenClothing
{
	idd = 20001;
	movingEnable = true;
	enableSimulation = true;
	onLoad = "uiNamespace setVariable ['MenClothing', _this select 0];";
	class Controls {
		class RscText_9000: RscTextT
		{
			idc = 20002;
			x = 0.30 * safezoneW + safezoneX;
			y = 0.30 * safezoneH + safezoneY;
			w = 0.20 * safezoneW;
			h = 0.5 * safezoneH;
			colorBackground[] = {0,0,0,0.8};
		};	
		class RscListbox_9001: RscListbox
		{
			idc = 20014;
			x = 0.31* safezoneW + safezoneX;
			y = 0.41 * safezoneH + safezoneY;
			w = 0.18 * safezoneW;
			h = 0.30 * safezoneH;
			soundSelect[] = {"",0.1,1};
			colorBackground[] = {0.1,0.1,0.1,0.8};
		};		
		class RscShortcutButton_9004: RscShortcutButton
		{
			idc = 20005;
			text = "Change";
			x = 0.41 * safezoneW + safezoneX;
			y = 0.70 * safezoneH + safezoneY;
			w = 0.08 * safezoneW;
			h = 0.06 * safezoneH;
			onButtonClick = "[(lbCurSel 20014)]  call ApplySkinList;";
		};	
		class RscShortcutButton_9006: RscShortcutButton
		{
			idc = 20006;
			text = "Close";
			x = 0.31 * safezoneW + safezoneX;
			y = 0.70 * safezoneH + safezoneY;
			w = 0.08 * safezoneW;
			h = 0.06 * safezoneH;
			onButtonClick = "CloseDialog 0;";
		};		
		class RscText_9007: RscTextT
		{
			idc = 20007;
			text = "Zupa Clothing";
			x = 0.30 * safezoneW + safezoneX;
			y = 0.30 * safezoneH + safezoneY;
			w = 0.20 * safezoneW;
			h = 0.05 * safezoneH;		
			colorBackground[] = {0,0,0,0.8};	
			colorText[] = {1,1,1,1};			
		};
		class RscText_9008: RscTextT
		{
			idc = 20008;
			text = "Possible Skins";
			x = 0.31 * safezoneW + safezoneX;
			y = 0.38 * safezoneH + safezoneY;
			w = 0.13 * safezoneW;
			h = 0.03 * safezoneH;
			colorText[] = {1,1,1,1};
		};		
	};
};