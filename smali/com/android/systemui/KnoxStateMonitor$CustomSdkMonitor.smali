.class Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;
.super Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback$Stub;
.source "KnoxStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/KnoxStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomSdkMonitor"
.end annotation


# instance fields
.field private mBatteryLevelColourItem:Lcom/samsung/android/knox/custom/StatusbarIconItem;

.field private mChargerConnectionSoundEnabledState:Z

.field private mHardKeyIntentState:Z

.field private mHideNotificationMessages:I

.field private mIsCustomSdkStatusBarHidden:Z

.field private mKnoxCustomDoubleTapState:Z

.field private mKnoxCustomLockScreenHiddenItems:I

.field private mKnoxCustomLockScreenOverrideMode:I

.field private mKnoxCustomQuickPanelButtonUsers:Z

.field private mKnoxCustomQuickPanelButtons:I

.field private mKnoxCustomQuickPanelEditMode:I

.field private mKnoxCustomUnlockSimOnBootState:Z

.field private mQuickPanelItems:Ljava/lang/String;

.field private mQuickPanelUnavailableButtons:Ljava/lang/String;

.field private mStatusBarIconsState:Z

.field private mStatusBarMode:I

.field private mStatusBarNotificationsState:Z

.field private mStatusBarText:Ljava/lang/String;

.field private mStatusBarTextSize:I

.field private mStatusBarTextStyle:I

.field private mStatusBarTextWidth:I

.field private mUnlockSimPin:Ljava/lang/String;

.field private mVolumePanelEnabledState:Z

.field final synthetic this$0:Lcom/android/systemui/KnoxStateMonitor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/KnoxStateMonitor;)V
    .locals 2

    .line 702
    iput-object p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback$Stub;-><init>()V

    const/4 p1, 0x0

    .line 675
    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomUnlockSimOnBootState:Z

    const/4 v0, 0x1

    .line 676
    iput-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomQuickPanelButtonUsers:Z

    .line 677
    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomDoubleTapState:Z

    .line 678
    iput-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarIconsState:Z

    .line 679
    iput-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarNotificationsState:Z

    .line 680
    iput-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mChargerConnectionSoundEnabledState:Z

    .line 681
    iput-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mVolumePanelEnabledState:Z

    .line 682
    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mIsCustomSdkStatusBarHidden:Z

    .line 683
    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mHardKeyIntentState:Z

    .line 685
    iput p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    .line 686
    iput p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomLockScreenOverrideMode:I

    const/4 v1, 0x7

    .line 687
    iput v1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomQuickPanelButtons:I

    .line 688
    iput v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomQuickPanelEditMode:I

    const/4 v0, 0x2

    .line 689
    iput v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarMode:I

    .line 690
    iput p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarTextStyle:I

    .line 691
    iput p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarTextSize:I

    .line 692
    iput p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarTextWidth:I

    .line 693
    iput p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mHideNotificationMessages:I

    const/4 p1, 0x0

    .line 695
    iput-object p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mUnlockSimPin:Ljava/lang/String;

    .line 696
    iput-object p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mQuickPanelItems:Ljava/lang/String;

    .line 697
    iput-object p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarText:Ljava/lang/String;

    .line 698
    iput-object p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mQuickPanelUnavailableButtons:Ljava/lang/String;

    .line 700
    iput-object p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mBatteryLevelColourItem:Lcom/samsung/android/knox/custom/StatusbarIconItem;

    return-void
.end method

.method static synthetic access$2600(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)I
    .locals 0

    .line 673
    iget p0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    return p0
.end method

.method static synthetic access$2700(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)I
    .locals 0

    .line 673
    iget p0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomLockScreenOverrideMode:I

    return p0
.end method

.method static synthetic access$2800(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)Z
    .locals 0

    .line 673
    iget-boolean p0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomUnlockSimOnBootState:Z

    return p0
.end method

.method static synthetic access$2900(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)Ljava/lang/String;
    .locals 0

    .line 673
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mUnlockSimPin:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)I
    .locals 0

    .line 673
    iget p0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomQuickPanelButtons:I

    return p0
.end method

.method static synthetic access$3100(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)Z
    .locals 0

    .line 673
    iget-boolean p0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomQuickPanelButtonUsers:Z

    return p0
.end method

.method static synthetic access$3200(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)I
    .locals 0

    .line 673
    iget p0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomQuickPanelEditMode:I

    return p0
.end method

.method static synthetic access$3300(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)Ljava/lang/String;
    .locals 0

    .line 673
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mQuickPanelItems:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)Ljava/lang/String;
    .locals 0

    .line 673
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mQuickPanelUnavailableButtons:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)Z
    .locals 0

    .line 673
    iget-boolean p0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomDoubleTapState:Z

    return p0
.end method

.method static synthetic access$3600(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)Ljava/lang/String;
    .locals 0

    .line 673
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)I
    .locals 0

    .line 673
    iget p0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarMode:I

    return p0
.end method

.method static synthetic access$3800(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)I
    .locals 0

    .line 673
    iget p0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarTextStyle:I

    return p0
.end method

.method static synthetic access$3900(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)I
    .locals 0

    .line 673
    iget p0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarTextSize:I

    return p0
.end method

.method static synthetic access$4000(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)I
    .locals 0

    .line 673
    iget p0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarTextWidth:I

    return p0
.end method

.method static synthetic access$4100(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)Z
    .locals 0

    .line 673
    iget-boolean p0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarIconsState:Z

    return p0
.end method

.method static synthetic access$4200(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)Lcom/samsung/android/knox/custom/StatusbarIconItem;
    .locals 0

    .line 673
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mBatteryLevelColourItem:Lcom/samsung/android/knox/custom/StatusbarIconItem;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)I
    .locals 0

    .line 673
    iget p0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mHideNotificationMessages:I

    return p0
.end method

.method static synthetic access$4400(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)Z
    .locals 0

    .line 673
    iget-boolean p0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarNotificationsState:Z

    return p0
.end method

.method static synthetic access$4500(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)Z
    .locals 0

    .line 673
    iget-boolean p0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mChargerConnectionSoundEnabledState:Z

    return p0
.end method

.method static synthetic access$4600(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)Z
    .locals 0

    .line 673
    iget-boolean p0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mVolumePanelEnabledState:Z

    return p0
.end method

.method static synthetic access$4700(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)Z
    .locals 0

    .line 673
    iget-boolean p0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mIsCustomSdkStatusBarHidden:Z

    return p0
.end method

.method static synthetic access$4800(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)Z
    .locals 0

    .line 673
    iget-boolean p0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mHardKeyIntentState:Z

    return p0
.end method

.method private registerCallback()V
    .locals 4

    .line 711
    invoke-static {}, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;

    move-result-object v0

    const-string v1, "KnoxStateMonitor"

    if-eqz v0, :cond_0

    .line 715
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerCallback this = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->registerSystemUICallback(Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;)Z

    goto :goto_0

    :cond_0
    const-string p0, "registerSystemUICallback() cannot reference because privateCustomDeviceManager is null"

    .line 719
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "registerSystemUICallback() Failed!"

    .line 722
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public getBatteryLevelColourItem()Lcom/samsung/android/knox/custom/StatusbarIconItem;
    .locals 0

    .line 995
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mBatteryLevelColourItem:Lcom/samsung/android/knox/custom/StatusbarIconItem;

    return-object p0
.end method

.method public getQuickPanelItems()Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 889
    iget-object v1, v0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v1}, Lcom/android/systemui/KnoxStateMonitor;->isContainerKioskMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v2, "SecureFolder"

    const-string v3, "Aod"

    const-string v4, "Sync"

    const-string v5, "Dnd"

    const-string v6, "DND"

    const-string v7, "AllShareCastOld"

    const-string v8, "AllShareCast"

    const-string v9, "DailyBoard"

    const-string v10, "UDS"

    const-string v11, "Dolby"

    const-string v12, "DeviceVisibility"

    const-string v13, "BikeMode"

    const-string v14, "bikemode"

    const-string v15, "PowerPlanning"

    const-string v16, "PersonalMode"

    const-string v17, "KidsHome"

    const-string v18, "EdgeLighting"

    const-string v19, "WifiCalling"

    .line 891
    filled-new-array/range {v2 .. v19}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 896
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 897
    iget-object v0, v0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mQuickPanelItems:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v2, ","

    .line 898
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 899
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 900
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 901
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public getQuickPanelUnavailableButtons()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 913
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 914
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mQuickPanelUnavailableButtons:Ljava/lang/String;

    if-eqz p0, :cond_2

    const-string v1, ","

    .line 915
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 916
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 917
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 918
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getStatusBarText()Ljava/lang/String;
    .locals 0

    .line 960
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarText:Ljava/lang/String;

    return-object p0
.end method

.method public getStatusBarTextSize()I
    .locals 0

    .line 974
    iget p0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarTextSize:I

    return p0
.end method

.method public getStatusBarTextStyle()I
    .locals 0

    .line 967
    iget p0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarTextStyle:I

    return p0
.end method

.method public getStatusBarTextWidth()I
    .locals 0

    .line 981
    iget p0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarTextWidth:I

    return p0
.end method

.method public getUnlockSimPin()Ljava/lang/String;
    .locals 0

    .line 1099
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mUnlockSimPin:Ljava/lang/String;

    return-object p0
.end method

.method public init()V
    .locals 1

    .line 706
    invoke-static {}, Lcom/android/systemui/Rune;->isTesting()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 707
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->registerCallback()V

    return-void
.end method

.method public isBrightnessControllerEnabled()Z
    .locals 1

    .line 943
    iget p0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomQuickPanelButtons:I

    const/4 v0, 0x4

    and-int/2addr p0, v0

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isChargerConnectionSoundEnabledState()Z
    .locals 0

    .line 1115
    iget-boolean p0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mChargerConnectionSoundEnabledState:Z

    return p0
.end method

.method public isLockScreenDisabledbyKNOX()Z
    .locals 0

    .line 1074
    iget p0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomLockScreenOverrideMode:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isLockscreenAllDisabled()Z
    .locals 1

    .line 1065
    iget p0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    const/16 v0, 0x3ff

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isLockscreenBatteryInfoEnabled()Z
    .locals 0

    .line 1029
    iget p0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isLockscreenClockEnabled()Z
    .locals 1

    .line 1038
    iget p0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public isLockscreenDateEnabled()Z
    .locals 0

    .line 1047
    iget p0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isLockscreenHelpTextEnabled()Z
    .locals 0

    .line 1020
    iget p0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    and-int/lit16 p0, p0, 0x100

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isLockscreenOwnerInfoEnabled()Z
    .locals 0

    .line 1056
    iget p0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isPanelExpandEnabled()Z
    .locals 0

    .line 936
    iget-boolean p0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarNotificationsState:Z

    return p0
.end method

.method public isQuickSettingEditEnabled()Z
    .locals 0

    .line 880
    iget p0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomQuickPanelEditMode:I

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isSetToSwipeLock()Z
    .locals 1

    .line 1083
    iget p0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomLockScreenOverrideMode:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isStatusBarDoubleTapEnabled()Z
    .locals 0

    .line 929
    iget-boolean p0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomDoubleTapState:Z

    return p0
.end method

.method public isStatusBarHidden()Z
    .locals 0

    .line 1128
    iget-boolean p0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mIsCustomSdkStatusBarHidden:Z

    return p0
.end method

.method public isStatusBarIconsEnabled()Z
    .locals 0

    .line 988
    iget-boolean p0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarIconsState:Z

    return p0
.end method

.method public isUnlockSimOnBootState()Z
    .locals 0

    .line 1092
    iget-boolean p0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomUnlockSimOnBootState:Z

    return p0
.end method

.method public isUsersEnabled()Z
    .locals 0

    .line 953
    iget-boolean p0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomQuickPanelButtonUsers:Z

    return p0
.end method

.method public isVolumePanelEnabledState()Z
    .locals 0

    .line 1122
    iget-boolean p0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mVolumePanelEnabledState:Z

    return p0
.end method

.method public setBatteryLevelColourItem(Lcom/samsung/android/knox/custom/StatusbarIconItem;)V
    .locals 1

    .line 810
    iput-object p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mBatteryLevelColourItem:Lcom/samsung/android/knox/custom/StatusbarIconItem;

    .line 811
    iget-object p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {p1}, Lcom/android/systemui/KnoxStateMonitor;->access$000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x139a

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 812
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {p0}, Lcom/android/systemui/KnoxStateMonitor;->access$000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setChargerConnectionSoundEnabledState(Z)V
    .locals 1

    .line 840
    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mChargerConnectionSoundEnabledState:Z

    if-eq v0, p1, :cond_0

    .line 841
    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mChargerConnectionSoundEnabledState:Z

    :cond_0
    return-void
.end method

.method public setHardKeyIntentState(Z)V
    .locals 2

    .line 1132
    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mHardKeyIntentState:Z

    if-eq v0, p1, :cond_0

    .line 1133
    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mHardKeyIntentState:Z

    .line 1134
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->access$000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x13a2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1135
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->access$000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1136
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {p0}, Lcom/android/systemui/KnoxStateMonitor;->access$000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public setHideNotificationMessages(I)V
    .locals 1

    .line 816
    iget v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mHideNotificationMessages:I

    if-eq v0, p1, :cond_0

    .line 817
    iput p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mHideNotificationMessages:I

    :cond_0
    return-void
.end method

.method public setLockScreenHiddenItems(I)V
    .locals 1

    .line 727
    iget v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    if-eq v0, p1, :cond_0

    .line 728
    iput p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    .line 729
    iget-object p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {p1}, Lcom/android/systemui/KnoxStateMonitor;->access$000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x1392

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 730
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {p0}, Lcom/android/systemui/KnoxStateMonitor;->access$000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public setLockScreenOverrideMode(I)V
    .locals 1

    .line 735
    iget v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomLockScreenOverrideMode:I

    if-eq v0, p1, :cond_0

    .line 736
    iput p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomLockScreenOverrideMode:I

    .line 737
    iget-object p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {p1}, Lcom/android/systemui/KnoxStateMonitor;->access$000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x1393

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 738
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {p0}, Lcom/android/systemui/KnoxStateMonitor;->access$000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public setQuickPanelButtonUsers(Z)V
    .locals 1

    .line 751
    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomQuickPanelButtonUsers:Z

    if-eq v0, p1, :cond_0

    .line 752
    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomQuickPanelButtonUsers:Z

    .line 753
    iget-object p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {p1}, Lcom/android/systemui/KnoxStateMonitor;->access$000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x139f

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 754
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {p0}, Lcom/android/systemui/KnoxStateMonitor;->access$000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public setQuickPanelButtons(I)V
    .locals 1

    .line 743
    iget v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomQuickPanelButtons:I

    if-eq v0, p1, :cond_0

    .line 744
    iput p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomQuickPanelButtons:I

    .line 745
    iget-object p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {p1}, Lcom/android/systemui/KnoxStateMonitor;->access$000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x1394

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 746
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {p0}, Lcom/android/systemui/KnoxStateMonitor;->access$000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public setQuickPanelEditMode(I)V
    .locals 1

    .line 759
    iget v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomQuickPanelEditMode:I

    if-eq v0, p1, :cond_0

    .line 760
    iput p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomQuickPanelEditMode:I

    .line 761
    iget-object p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {p1}, Lcom/android/systemui/KnoxStateMonitor;->access$000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x1395

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 762
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {p0}, Lcom/android/systemui/KnoxStateMonitor;->access$000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public setQuickPanelItems(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 767
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mQuickPanelItems:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mQuickPanelItems:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 768
    :cond_1
    iput-object p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mQuickPanelItems:Ljava/lang/String;

    .line 769
    iget-object p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {p1}, Lcom/android/systemui/KnoxStateMonitor;->access$000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x1396

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 770
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {p0}, Lcom/android/systemui/KnoxStateMonitor;->access$000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    return-void
.end method

.method public setQuickPanelUnavailableButtons(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 775
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mQuickPanelUnavailableButtons:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mQuickPanelUnavailableButtons:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 776
    :cond_1
    iput-object p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mQuickPanelUnavailableButtons:Ljava/lang/String;

    .line 777
    iget-object p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {p1}, Lcom/android/systemui/KnoxStateMonitor;->access$000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x13a3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 778
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {p0}, Lcom/android/systemui/KnoxStateMonitor;->access$000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    return-void
.end method

.method public setScreenOffOnStatusBarDoubleTapState(Z)V
    .locals 0

    .line 783
    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomDoubleTapState:Z

    return-void
.end method

.method public setStatusBarHidden(Z)V
    .locals 1

    .line 852
    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mIsCustomSdkStatusBarHidden:Z

    if-eq v0, p1, :cond_0

    .line 853
    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mIsCustomSdkStatusBarHidden:Z

    .line 854
    iget-object p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {p1}, Lcom/android/systemui/KnoxStateMonitor;->access$000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x139b

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 855
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {p0}, Lcom/android/systemui/KnoxStateMonitor;->access$000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public setStatusBarIconsState(Z)V
    .locals 1

    .line 802
    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarIconsState:Z

    if-eq v0, p1, :cond_0

    .line 803
    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarIconsState:Z

    .line 804
    iget-object p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {p1}, Lcom/android/systemui/KnoxStateMonitor;->access$000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x1399

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 805
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {p0}, Lcom/android/systemui/KnoxStateMonitor;->access$000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public setStatusBarNotificationsState(Z)V
    .locals 1

    .line 822
    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarNotificationsState:Z

    if-eq v0, p1, :cond_0

    .line 823
    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarNotificationsState:Z

    :cond_0
    return-void
.end method

.method public setStatusBarTextInfo(Ljava/lang/String;III)V
    .locals 1

    if-eqz p1, :cond_0

    .line 787
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarText:Ljava/lang/String;

    if-nez v0, :cond_2

    :cond_1
    iget v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarTextStyle:I

    if-ne v0, p2, :cond_2

    iget v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarTextSize:I

    if-ne v0, p3, :cond_2

    iget v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarTextWidth:I

    if-eq v0, p4, :cond_3

    .line 792
    :cond_2
    iput-object p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarText:Ljava/lang/String;

    .line 793
    iput p2, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarTextStyle:I

    .line 794
    iput p3, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarTextSize:I

    .line 795
    iput p4, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarTextWidth:I

    .line 796
    iget-object p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {p1}, Lcom/android/systemui/KnoxStateMonitor;->access$000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x1397

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 797
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {p0}, Lcom/android/systemui/KnoxStateMonitor;->access$000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    return-void
.end method

.method public setUnlockSimOnBootState(Z)V
    .locals 1

    .line 828
    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomUnlockSimOnBootState:Z

    if-eq v0, p1, :cond_0

    .line 829
    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomUnlockSimOnBootState:Z

    :cond_0
    return-void
.end method

.method public setUnlockSimPin(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 834
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mUnlockSimPin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mUnlockSimPin:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 835
    :cond_1
    iput-object p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mUnlockSimPin:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public setVolumePanelEnabledState(Z)V
    .locals 1

    .line 846
    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mVolumePanelEnabledState:Z

    if-eq v0, p1, :cond_0

    .line 847
    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mVolumePanelEnabledState:Z

    :cond_0
    return-void
.end method
