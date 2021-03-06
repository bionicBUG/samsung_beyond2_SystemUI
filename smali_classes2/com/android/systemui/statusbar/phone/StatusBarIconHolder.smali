.class public Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;
.super Ljava/lang/Object;
.source "StatusBarIconHolder.java"


# instance fields
.field private mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

.field private mMPTCPState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MPTCPIconState;

.field private mMobileState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

.field private mNwBoosterState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;

.field private mTag:I

.field private mType:I

.field private mVisible:Z

.field private mWifiState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mType:I

    .line 50
    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mTag:I

    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mVisible:Z

    return-void
.end method

.method public static fromIcon(Lcom/android/internal/statusbar/StatusBarIcon;)Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;
    .locals 1

    .line 54
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;-><init>()V

    .line 55
    iput-object p0, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    return-object v0
.end method

.method public static fromMPTCPIconState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MPTCPIconState;)Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;
    .locals 1

    .line 178
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;-><init>()V

    .line 179
    iput-object p0, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mMPTCPState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MPTCPIconState;

    const/4 p0, 0x4

    .line 180
    iput p0, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mType:I

    return-object v0
.end method

.method public static fromMobileIconState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;
    .locals 2

    .line 76
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;-><init>()V

    .line 77
    iput-object p0, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mMobileState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    const/4 v1, 0x2

    .line 78
    iput v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mType:I

    .line 79
    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->subId:I

    iput p0, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mTag:I

    return-object v0
.end method

.method public static fromNwBoosterIconState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;)Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;
    .locals 1

    .line 160
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;-><init>()V

    .line 161
    iput-object p0, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mNwBoosterState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;

    const/4 p0, 0x3

    .line 162
    iput p0, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mType:I

    return-object v0
.end method

.method public static fromWifiIconState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;
    .locals 1

    .line 69
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;-><init>()V

    .line 70
    iput-object p0, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mWifiState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    const/4 p0, 0x1

    .line 71
    iput p0, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mType:I

    return-object v0
.end method


# virtual methods
.method public getIcon()Lcom/android/internal/statusbar/StatusBarIcon;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    return-object p0
.end method

.method public getMPTCPState()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MPTCPIconState;
    .locals 0

    .line 186
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mMPTCPState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MPTCPIconState;

    return-object p0
.end method

.method public getMobileState()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mMobileState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    return-object p0
.end method

.method public getNwBoosterState()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;
    .locals 0

    .line 168
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mNwBoosterState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;

    return-object p0
.end method

.method public getTag()I
    .locals 0

    .line 194
    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mTag:I

    return p0
.end method

.method public getType()I
    .locals 0

    .line 84
    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mType:I

    return p0
.end method

.method public getWifiState()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mWifiState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    return-object p0
.end method

.method public isVisible()Z
    .locals 3

    .line 111
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mType:I

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    return v1

    .line 123
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mMPTCPState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MPTCPIconState;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MPTCPIconState;->visible:Z

    return p0

    .line 120
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mNwBoosterState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;->visible:Z

    return p0

    .line 117
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mMobileState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->visible:Z

    return p0

    .line 115
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mWifiState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->visible:Z

    return p0

    .line 113
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget-boolean p0, p0, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    return p0
.end method

.method public setMPTCPState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MPTCPIconState;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mMPTCPState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MPTCPIconState;

    return-void
.end method

.method public setMobileState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mMobileState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    return-void
.end method

.method public setNwBoosterState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mNwBoosterState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;

    return-void
.end method

.method public setVisible(Z)V
    .locals 2

    .line 130
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->isVisible()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 134
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mType:I

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 153
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mMPTCPState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MPTCPIconState;

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MPTCPIconState;->visible:Z

    goto :goto_0

    .line 149
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mNwBoosterState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;->visible:Z

    goto :goto_0

    .line 144
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mMobileState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->visible:Z

    goto :goto_0

    .line 140
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mWifiState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->visible:Z

    goto :goto_0

    .line 136
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iput-boolean p1, p0, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    :goto_0
    return-void
.end method

.method public setWifiState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mWifiState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    return-void
.end method
