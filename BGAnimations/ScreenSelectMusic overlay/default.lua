local t = Def.ActorFrame {
    OnCommand=function(self)
        local pn = GAMESTATE:GetMasterPlayerNumber()
        GAMESTATE:UpdateDiscordProfile(GAMESTATE:GetPlayerDisplayName(pn))
        if GAMESTATE:IsCourseMode() then
            GAMESTATE:UpdateDiscordScreenInfo("Selecting Course", "", 1)
        else
            local StageIndex = GAMESTATE:GetCurrentStageIndex()
            GAMESTATE:UpdateDiscordScreenInfo("Selecting Song (Stage " .. StageIndex+1 .. ")", "", 1)
        end
    end,
}

if GAMESTATE:GetNumSidesJoined() < 2 then
    t[#t+1] = Def.ActorFrame {
        InitCommand=function(self)
            local PosX = SCREEN_CENTER_X + SCREEN_WIDTH * (GAMESTATE:IsSideJoined(PLAYER_1) and 0.35 or -0.35)
            self:xy((IsUsingWideScreen() and PosX or (PosX * 1.045)), (IsUsingWideScreen() and (SCREEN_HEIGHT * 0.4) or SCREEN_HEIGHT * 0.35))
            :playcommand('Refresh')
        end,

        CoinInsertedMessageCommand=function(self) self:playcommand('Refresh') end,

        RefreshCommand=function(self)
            self:GetChild("CenterStep"):visible(NoSongs or GAMESTATE:GetCoins() >= GAMESTATE:GetCoinsNeededToJoin())
            self:GetChild("InsertCredit"):visible(NoSongs or GAMESTATE:GetCoinsNeededToJoin() > GAMESTATE:GetCoins())
        end,

        OffCommand=function(self)
            self:GetChild("CenterStep"):visible(true)
            self:GetChild("InsertCredit"):visible(false)
            self:stoptweening():easeoutexpo(0.25):zoom(2):diffusealpha(0)
        end,

        LoadActor(THEME:GetPathG("", "PressCenterStep")) .. {
            Name="CenterStep",
        },

        LoadActor(THEME:GetPathG("", "InsertCredit")) .. {
            Name="InsertCredit",
        }
    }
end

t[#t+1] = Def.ActorFrame {
    LoadActor("../HudPanels"),

    LoadActor("../CornerArrows"),

    LoadActor("OptionsList"),

    LoadActor("GroupSelect", SCREEN_CENTER_X, SCREEN_CENTER_Y),

    Def.Sound {
        File=THEME:GetPathS("Common", "start"),
        IsAction=true,
        PlayerJoinedMessageCommand=function(self)
            self:play()
            SOUND:DimMusic(0, 1)
            SCREENMAN:GetTopScreen():SetNextScreenName("ScreenSelectProfile")
            SCREENMAN:GetTopScreen():StartTransitioningScreen("SM_GoToNextScreen")
        end
    }
}

for pn in ivalues(GAMESTATE:GetHumanPlayers()) do
    t[#t+1] = Def.Quad {
        InitCommand=function(self)
            local side = (pn == PLAYER_1 and SCREEN_LEFT or SCREEN_RIGHT)
            local alignment = (pn == PLAYER_1 and 0 or 1)

            if pn == PLAYER_1 then self:faderight(50) else self:fadeleft(75) end

            self:diffuse(1,1,1,1):halign(alignment):xy(side, SCREEN_CENTER_Y-70):zoomto(0, 360)
        end,
        CodeMessageCommand=function(self, params)
            if params.Name == "OpenOpList" and params.PlayerNumber == pn then
                self:diffusealpha(100):zoomto(0, 360)
                :linear(0.25)
                :diffusealpha(0):zoomto(60, 360)
            end
        end
    }
end

return t
