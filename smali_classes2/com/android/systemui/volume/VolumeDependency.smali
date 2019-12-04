.class public Lcom/android/systemui/volume/VolumeDependency;
.super Ljava/lang/Object;
.source "VolumeDependency.java"

# interfaces
.implements Lcom/android/systemui/volume/VolumeDependencyBase;


# static fields
.field private static mProvider:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-object p0, Lcom/android/systemui/volume/VolumeDependency;->mProvider:Landroid/util/ArrayMap;

    if-nez p0, :cond_0

    .line 44
    new-instance p0, Landroid/util/ArrayMap;

    invoke-direct {p0}, Landroid/util/ArrayMap;-><init>()V

    sput-object p0, Lcom/android/systemui/volume/VolumeDependency;->mProvider:Landroid/util/ArrayMap;

    .line 47
    :cond_0
    sget-object p0, Lcom/android/systemui/volume/VolumeDependency;->mProvider:Landroid/util/ArrayMap;

    const-class v0, Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    .line 48
    sget-object p0, Lcom/android/systemui/volume/VolumeDependency;->mProvider:Landroid/util/ArrayMap;

    const-class v0, Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :cond_1
    sget-object p0, Lcom/android/systemui/volume/VolumeDependency;->mProvider:Landroid/util/ArrayMap;

    const-class v0, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_2

    .line 52
    sget-object p0, Lcom/android/systemui/volume/VolumeDependency;->mProvider:Landroid/util/ArrayMap;

    const-class v0, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

    new-instance v1, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

    invoke-direct {v1, p1}, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method private createDependency(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 84
    const-class v0, Lcom/android/systemui/volume/store/VolumePanelStore;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    new-instance p1, Lcom/android/systemui/volume/store/VolumePanelStore;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/store/VolumePanelStore;-><init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V

    goto/16 :goto_0

    .line 86
    :cond_0
    const-class v0, Lcom/android/systemui/volume/util/HandlerWrapper;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    new-instance p1, Lcom/android/systemui/volume/util/HandlerWrapper;

    invoke-direct {p1}, Lcom/android/systemui/volume/util/HandlerWrapper;-><init>()V

    goto/16 :goto_0

    .line 88
    :cond_1
    const-class v0, Lcom/android/systemui/volume/util/LogWrapper;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 89
    new-instance p1, Lcom/android/systemui/volume/util/LogWrapper;

    invoke-direct {p1}, Lcom/android/systemui/volume/util/LogWrapper;-><init>()V

    goto/16 :goto_0

    .line 90
    :cond_2
    const-class v0, Lcom/android/systemui/volume/util/PowerManagerWrapper;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 91
    new-instance p1, Lcom/android/systemui/volume/util/PowerManagerWrapper;

    invoke-direct {p1}, Lcom/android/systemui/volume/util/PowerManagerWrapper;-><init>()V

    goto/16 :goto_0

    .line 92
    :cond_3
    const-class v0, Lcom/android/systemui/volume/util/ToastWrapper;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 93
    new-instance p1, Lcom/android/systemui/volume/util/ToastWrapper;

    invoke-direct {p1}, Lcom/android/systemui/volume/util/ToastWrapper;-><init>()V

    goto/16 :goto_0

    .line 94
    :cond_4
    const-class v0, Lcom/android/systemui/volume/util/TelephonyManagerWrapper;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 95
    new-instance p1, Lcom/android/systemui/volume/util/TelephonyManagerWrapper;

    invoke-direct {p1}, Lcom/android/systemui/volume/util/TelephonyManagerWrapper;-><init>()V

    goto/16 :goto_0

    .line 96
    :cond_5
    const-class v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 97
    new-instance p1, Lcom/android/systemui/volume/SecVolumeInfraMediator;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/SecVolumeInfraMediator;-><init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V

    .line 98
    new-instance p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;

    new-instance v0, Lcom/android/systemui/volume/util/LogWrapper;

    invoke-direct {v0}, Lcom/android/systemui/volume/util/LogWrapper;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;-><init>(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;Lcom/android/systemui/volume/util/LogWrapper;)V

    move-object p1, p0

    goto/16 :goto_0

    .line 100
    :cond_6
    const-class v0, Lcom/android/systemui/volume/VolumePanelMotion;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 101
    new-instance p1, Lcom/android/systemui/volume/VolumePanelMotion;

    invoke-direct {p1}, Lcom/android/systemui/volume/VolumePanelMotion;-><init>()V

    goto/16 :goto_0

    .line 102
    :cond_7
    const-class v0, Lcom/android/systemui/volume/view/VolumePanelView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 103
    new-instance p1, Lcom/android/systemui/volume/view/VolumePanelView;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/view/VolumePanelView;-><init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V

    goto/16 :goto_0

    .line 104
    :cond_8
    const-class v0, Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 105
    const-class p0, Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_0

    .line 106
    :cond_9
    const-class v0, Lcom/android/systemui/volume/util/AudioManagerWrapper;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 107
    new-instance p1, Lcom/android/systemui/volume/util/AudioManagerWrapper;

    const-class v0, Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/util/AudioManagerWrapper;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 108
    :cond_a
    const-class v0, Lcom/android/systemui/volume/util/SystemClockWrapper;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 109
    new-instance p1, Lcom/android/systemui/volume/util/SystemClockWrapper;

    invoke-direct {p1}, Lcom/android/systemui/volume/util/SystemClockWrapper;-><init>()V

    goto/16 :goto_0

    .line 110
    :cond_b
    const-class v0, Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 111
    new-instance p1, Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;

    const-class v0, Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 112
    :cond_c
    const-class v0, Lcom/android/systemui/volume/util/StatusBarStateControllerWrapper;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 113
    new-instance p1, Lcom/android/systemui/volume/util/StatusBarStateControllerWrapper;

    invoke-direct {p1}, Lcom/android/systemui/volume/util/StatusBarStateControllerWrapper;-><init>()V

    goto/16 :goto_0

    .line 114
    :cond_d
    const-class v0, Lcom/android/systemui/volume/util/AccessibilityManagerWrapper;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 115
    new-instance p1, Lcom/android/systemui/volume/util/AccessibilityManagerWrapper;

    const-class v0, Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/util/AccessibilityManagerWrapper;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 116
    :cond_e
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 117
    const-class p0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_0

    .line 118
    :cond_f
    const-class v0, Lcom/android/systemui/volume/util/BroadcastManager;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 119
    new-instance p1, Lcom/android/systemui/volume/util/BroadcastManager;

    const-class v0, Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-class v1, Lcom/android/systemui/volume/util/LogWrapper;

    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/volume/util/LogWrapper;

    invoke-direct {p1, v0, p0}, Lcom/android/systemui/volume/util/BroadcastManager;-><init>(Landroid/content/Context;Lcom/android/systemui/volume/util/LogWrapper;)V

    goto/16 :goto_0

    .line 120
    :cond_10
    const-class v0, Lcom/android/systemui/volume/util/SoundPoolWrapper;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 121
    new-instance p1, Lcom/android/systemui/volume/util/SoundPoolWrapper;

    invoke-direct {p1}, Lcom/android/systemui/volume/util/SoundPoolWrapper;-><init>()V

    goto/16 :goto_0

    .line 122
    :cond_11
    const-class v0, Lcom/android/systemui/volume/util/ConfigurationWrapper;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 123
    new-instance p1, Lcom/android/systemui/volume/util/ConfigurationWrapper;

    const-class v0, Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/util/ConfigurationWrapper;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 124
    :cond_12
    const-class v0, Lcom/android/systemui/volume/util/CoverUtilWrapper;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 125
    new-instance p1, Lcom/android/systemui/volume/util/CoverUtilWrapper;

    invoke-direct {p1}, Lcom/android/systemui/volume/util/CoverUtilWrapper;-><init>()V

    goto/16 :goto_0

    .line 126
    :cond_13
    const-class v0, Lcom/android/systemui/volume/VolumeStarInteractor;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 127
    new-instance p1, Lcom/android/systemui/volume/VolumeStarInteractor;

    const-class v0, Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/VolumeStarInteractor;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 128
    :cond_14
    const-class v0, Lcom/android/systemui/volume/util/BixbyServiceManager;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 129
    new-instance p1, Lcom/android/systemui/volume/util/BixbyServiceManager;

    const-class v0, Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-class v1, Lcom/android/systemui/volume/util/LogWrapper;

    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/util/LogWrapper;

    const-class v2, Lcom/android/systemui/volume/util/ActivityManagerWrapper;

    invoke-virtual {p0, v2}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/volume/util/ActivityManagerWrapper;

    invoke-direct {p1, v0, v1, p0}, Lcom/android/systemui/volume/util/BixbyServiceManager;-><init>(Landroid/content/Context;Lcom/android/systemui/volume/util/LogWrapper;Lcom/android/systemui/volume/util/ActivityManagerWrapper;)V

    goto/16 :goto_0

    .line 130
    :cond_15
    const-class v0, Lcom/android/systemui/volume/util/SemPersonaManagerWrapper;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 131
    new-instance p1, Lcom/android/systemui/volume/util/SemPersonaManagerWrapper;

    const-class v0, Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/util/SemPersonaManagerWrapper;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 132
    :cond_16
    const-class v0, Lcom/android/systemui/volume/util/ActivityManagerWrapper;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 133
    new-instance p1, Lcom/android/systemui/volume/util/ActivityManagerWrapper;

    const-class v0, Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/util/ActivityManagerWrapper;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 134
    :cond_17
    const-class v0, Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 135
    new-instance p1, Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    const-class v0, Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-class v1, Lcom/android/systemui/volume/util/LogWrapper;

    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/volume/util/LogWrapper;

    invoke-direct {p1, v0, p0}, Lcom/android/systemui/volume/util/DisplayManagerWrapper;-><init>(Landroid/content/Context;Lcom/android/systemui/volume/util/LogWrapper;)V

    goto :goto_0

    .line 136
    :cond_18
    const-class v0, Lcom/android/systemui/volume/util/KeyguardManagerWrapper;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 137
    new-instance p1, Lcom/android/systemui/volume/util/KeyguardManagerWrapper;

    const-class v0, Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/util/KeyguardManagerWrapper;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 138
    :cond_19
    const-class v0, Lcom/android/systemui/volume/util/StatusBarWrapper;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 139
    new-instance p1, Lcom/android/systemui/volume/util/StatusBarWrapper;

    const-class v0, Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-class v1, Lcom/android/systemui/volume/util/LogWrapper;

    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/util/LogWrapper;

    const-class v2, Lcom/android/systemui/volume/util/KeyguardManagerWrapper;

    invoke-virtual {p0, v2}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/volume/util/KeyguardManagerWrapper;

    invoke-direct {p1, v0, v1, p0}, Lcom/android/systemui/volume/util/StatusBarWrapper;-><init>(Landroid/content/Context;Lcom/android/systemui/volume/util/LogWrapper;Lcom/android/systemui/volume/util/KeyguardManagerWrapper;)V

    goto :goto_0

    .line 140
    :cond_1a
    const-class p0, Lcom/android/systemui/volume/util/DesktopManagerWrapper;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1b

    .line 141
    new-instance p1, Lcom/android/systemui/volume/util/DesktopManagerWrapper;

    invoke-direct {p1}, Lcom/android/systemui/volume/util/DesktopManagerWrapper;-><init>()V

    goto :goto_0

    .line 142
    :cond_1b
    const-class p0, Lcom/android/systemui/volume/util/ZenModeHelper;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1c

    .line 143
    new-instance p1, Lcom/android/systemui/volume/util/ZenModeHelper;

    invoke-direct {p1}, Lcom/android/systemui/volume/util/ZenModeHelper;-><init>()V

    goto :goto_0

    .line 144
    :cond_1c
    const-class p0, Lcom/android/systemui/volume/util/SALoggingWrapper;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1d

    .line 145
    new-instance p1, Lcom/android/systemui/volume/util/SALoggingWrapper;

    invoke-direct {p1}, Lcom/android/systemui/volume/util/SALoggingWrapper;-><init>()V

    goto :goto_0

    :cond_1d
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method


# virtual methods
.method public get(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 58
    sget-object v0, Lcom/android/systemui/volume/VolumeDependency;->mProvider:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 60
    const-class v0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    sget-object p0, Lcom/android/systemui/volume/VolumeDependency;->mProvider:Landroid/util/ArrayMap;

    const-class p1, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 64
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDependency;->createDependency(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 65
    sget-object p0, Lcom/android/systemui/volume/VolumeDependency;->mProvider:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public getNewObject(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 72
    sget-object v0, Lcom/android/systemui/volume/VolumeDependency;->mProvider:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 73
    sget-object v1, Lcom/android/systemui/volume/VolumeDependency;->mProvider:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    sget-object v1, Lcom/android/systemui/volume/VolumeDependency;->mProvider:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDependency;->createDependency(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    .line 77
    sget-object v0, Lcom/android/systemui/volume/VolumeDependency;->mProvider:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
