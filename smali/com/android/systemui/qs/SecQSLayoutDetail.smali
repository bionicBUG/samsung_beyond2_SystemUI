.class public Lcom/android/systemui/qs/SecQSLayoutDetail;
.super Ljava/lang/Object;
.source "SecQSLayoutDetail.java"

# interfaces
.implements Lcom/android/systemui/plugins/qs/DetailAdapter;


# instance fields
.field private mBrightnessOnTopContainer:Landroid/widget/LinearLayout;

.field private mBrightnessOnTopSwitch:Lcom/android/systemui/qs/QSSwitch;

.field private mContext:Landroid/content/Context;

.field private mMediaDevicesContainer:Landroid/widget/LinearLayout;

.field private mMediaDevicesSwitch:Lcom/android/systemui/qs/QSSwitch;

.field private mMultiSimInfoContainer:Landroid/widget/LinearLayout;

.field private mMultiSimInfoSwitch:Lcom/android/systemui/qs/QSSwitch;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/SecQSLayoutDetail;)Lcom/android/systemui/qs/QSSwitch;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mBrightnessOnTopSwitch:Lcom/android/systemui/qs/QSSwitch;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/SecQSLayoutDetail;Z)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/SecQSLayoutDetail;->updateBrightnessOnTop(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/SecQSLayoutDetail;)Lcom/android/systemui/qs/QSSwitch;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mMediaDevicesSwitch:Lcom/android/systemui/qs/QSSwitch;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/SecQSLayoutDetail;Z)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/SecQSLayoutDetail;->updateMediaDevices(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/SecQSLayoutDetail;)Lcom/android/systemui/qs/QSSwitch;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mMultiSimInfoSwitch:Lcom/android/systemui/qs/QSSwitch;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/SecQSLayoutDetail;Z)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/SecQSLayoutDetail;->updateMultiSIMInfo(Z)V

    return-void
.end method

.method private initSwitch()V
    .locals 6

    .line 118
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const/4 v1, 0x0

    const-string v2, "brightness_on_top"

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 119
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mBrightnessOnTopSwitch:Lcom/android/systemui/qs/QSSwitch;

    invoke-virtual {v3, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 120
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mBrightnessOnTopSwitch : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "SecQSLayoutDetail"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->isMediaQuickControlBarAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 122
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string v4, "qspanel_media_quickcontrol_bar_available"

    invoke-virtual {v0, v4, v2}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    .line 123
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mMediaDevicesSwitch:Lcom/android/systemui/qs/QSSwitch;

    invoke-virtual {v4, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 124
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mMediaDevicesSwitch : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_2
    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_SUPPORT_MULTI_SIM_DEVICE:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mContext:Landroid/content/Context;

    .line 127
    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->getActiveSimCount(Landroid/content/Context;)I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_4

    .line 128
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string v4, "multi_sim_bar_show_on_qspanel"

    invoke-virtual {v0, v4, v2}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    move v1, v2

    .line 129
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mMultiSimInfoSwitch:Lcom/android/systemui/qs/QSSwitch;

    invoke-virtual {p0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 130
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mMultiSimInfoSwitch : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method private setClickListeners()V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mBrightnessOnTopContainer:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/systemui/qs/SecQSLayoutDetail$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/SecQSLayoutDetail$1;-><init>(Lcom/android/systemui/qs/SecQSLayoutDetail;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isVoiceAssistantEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mBrightnessOnTopSwitch:Lcom/android/systemui/qs/QSSwitch;

    new-instance v1, Lcom/android/systemui/qs/SecQSLayoutDetail$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/SecQSLayoutDetail$2;-><init>(Lcom/android/systemui/qs/SecQSLayoutDetail;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->isMediaQuickControlBarAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mMediaDevicesContainer:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/systemui/qs/SecQSLayoutDetail$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/SecQSLayoutDetail$3;-><init>(Lcom/android/systemui/qs/SecQSLayoutDetail;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isVoiceAssistantEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mMediaDevicesSwitch:Lcom/android/systemui/qs/QSSwitch;

    new-instance v1, Lcom/android/systemui/qs/SecQSLayoutDetail$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/SecQSLayoutDetail$4;-><init>(Lcom/android/systemui/qs/SecQSLayoutDetail;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    :cond_1
    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_SUPPORT_MULTI_SIM_DEVICE:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mContext:Landroid/content/Context;

    .line 179
    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->getActiveSimCount(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 180
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mMultiSimInfoContainer:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/systemui/qs/SecQSLayoutDetail$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/SecQSLayoutDetail$5;-><init>(Lcom/android/systemui/qs/SecQSLayoutDetail;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isVoiceAssistantEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 190
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mMultiSimInfoSwitch:Lcom/android/systemui/qs/QSSwitch;

    new-instance v1, Lcom/android/systemui/qs/SecQSLayoutDetail$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/SecQSLayoutDetail$6;-><init>(Lcom/android/systemui/qs/SecQSLayoutDetail;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method private updateBrightnessOnTop(Z)V
    .locals 1

    .line 222
    const-class p0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/tuner/TunerService;

    const-string v0, "brightness_on_top"

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/tuner/TunerService;->setValue(Ljava/lang/String;I)V

    .line 224
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    const-string v0, "4007"

    invoke-static {p0, v0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateMediaDevices(Z)V
    .locals 1

    .line 230
    const-class p0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/tuner/TunerService;

    const-string v0, "qspanel_media_quickcontrol_bar_available"

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/tuner/TunerService;->setValue(Ljava/lang/String;I)V

    .line 232
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    const-string v0, "2005"

    invoke-static {p0, v0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateMultiSIMInfo(Z)V
    .locals 1

    .line 238
    const-class p0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/tuner/TunerService;

    const-string v0, "multi_sim_bar_show_on_qspanel"

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/tuner/TunerService;->setValue(Ljava/lang/String;I)V

    .line 240
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    const-string v0, "4203"

    invoke-static {p0, v0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 57
    iget-object p1, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$layout;->sec_qspanel_layout_detail:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 59
    sget p2, Lcom/android/systemui/R$id;->brightness_on_top_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mBrightnessOnTopContainer:Landroid/widget/LinearLayout;

    .line 60
    iget-object p2, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mBrightnessOnTopContainer:Landroid/widget/LinearLayout;

    sget p3, Lcom/android/systemui/R$id;->title_switch:I

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/qs/QSSwitch;

    iput-object p2, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mBrightnessOnTopSwitch:Lcom/android/systemui/qs/QSSwitch;

    .line 61
    iget-object p2, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mBrightnessOnTopContainer:Landroid/widget/LinearLayout;

    sget p3, Lcom/android/systemui/R$id;->title:I

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iget-object p3, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcom/android/systemui/R$string;->qspanel_show_brightness_on_top_title:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object p2, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mBrightnessOnTopContainer:Landroid/widget/LinearLayout;

    sget p3, Lcom/android/systemui/R$id;->title_summary:I

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iget-object p3, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcom/android/systemui/R$string;->qspanel_show_brightness_on_top_summary:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object p2, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mBrightnessOnTopContainer:Landroid/widget/LinearLayout;

    sget p3, Lcom/android/systemui/R$id;->title_summary:I

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 64
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/systemui/util/SettingsHelper;->isVoiceAssistantEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 66
    iget-object p3, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mBrightnessOnTopSwitch:Lcom/android/systemui/qs/QSSwitch;

    invoke-virtual {p3, v0}, Landroid/widget/Switch;->setClickable(Z)V

    .line 68
    :cond_0
    iget-object p3, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lcom/android/systemui/util/DeviceState;->isMediaQuickControlBarAvailable(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 69
    sget p3, Lcom/android/systemui/R$id;->media_and_devices_container:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mMediaDevicesContainer:Landroid/widget/LinearLayout;

    .line 70
    iget-object p3, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mMediaDevicesContainer:Landroid/widget/LinearLayout;

    sget v1, Lcom/android/systemui/R$id;->title_switch:I

    invoke-virtual {p3, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/qs/QSSwitch;

    iput-object p3, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mMediaDevicesSwitch:Lcom/android/systemui/qs/QSSwitch;

    .line 71
    iget-object p3, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mMediaDevicesContainer:Landroid/widget/LinearLayout;

    sget v1, Lcom/android/systemui/R$id;->title:I

    invoke-virtual {p3, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->qspanel_media_devices_button_show_text:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_1

    .line 73
    iget-object p3, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mMediaDevicesSwitch:Lcom/android/systemui/qs/QSSwitch;

    invoke-virtual {p3, v0}, Landroid/widget/Switch;->setClickable(Z)V

    .line 75
    :cond_1
    iget-object p3, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mMediaDevicesContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 77
    :cond_2
    sget-boolean p3, Lcom/android/systemui/Rune;->SYSUI_SUPPORT_MULTI_SIM_DEVICE:Z

    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mContext:Landroid/content/Context;

    .line 78
    invoke-static {p3}, Lcom/android/systemui/util/DeviceState;->getActiveSimCount(Landroid/content/Context;)I

    move-result p3

    const/4 v1, 0x2

    if-ne p3, v1, :cond_4

    .line 79
    sget p3, Lcom/android/systemui/R$id;->multi_sim_info_container:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mMultiSimInfoContainer:Landroid/widget/LinearLayout;

    .line 80
    iget-object p3, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mMultiSimInfoContainer:Landroid/widget/LinearLayout;

    sget v1, Lcom/android/systemui/R$id;->title_switch:I

    invoke-virtual {p3, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/qs/QSSwitch;

    iput-object p3, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mMultiSimInfoSwitch:Lcom/android/systemui/qs/QSSwitch;

    .line 81
    iget-object p3, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mMultiSimInfoContainer:Landroid/widget/LinearLayout;

    sget v1, Lcom/android/systemui/R$id;->title:I

    invoke-virtual {p3, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->qspanel_show_multi_sim_info_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_3

    .line 83
    iget-object p2, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mMultiSimInfoSwitch:Lcom/android/systemui/qs/QSSwitch;

    invoke-virtual {p2, v0}, Landroid/widget/Switch;->setClickable(Z)V

    .line 85
    :cond_3
    iget-object p2, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mMultiSimInfoContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 96
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/qs/SecQSLayoutDetail;->initSwitch()V

    .line 97
    invoke-direct {p0}, Lcom/android/systemui/qs/SecQSLayoutDetail;->setClickListeners()V

    return-object p1
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x138a

    return p0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 47
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$string;->sec_qspanel_layout_detail_title:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public setToggleState(Z)V
    .locals 0

    return-void
.end method
