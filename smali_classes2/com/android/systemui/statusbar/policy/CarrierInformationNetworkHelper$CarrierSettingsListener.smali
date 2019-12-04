.class Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper$CarrierSettingsListener;
.super Ljava/lang/Object;
.source "CarrierInformationNetworkHelper.java"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CarrierSettingsListener"
.end annotation


# instance fields
.field private final mSettingsValueList:[Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;)V
    .locals 2

    .line 207
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper$CarrierSettingsListener;->this$0:Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    new-array p1, p1, [Landroid/net/Uri;

    const-string v0, "status_bar_show_network_information"

    .line 209
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper$CarrierSettingsListener;->mSettingsValueList:[Landroid/net/Uri;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper$1;)V
    .locals 0

    .line 207
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper$CarrierSettingsListener;-><init>(Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;)V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 2

    .line 213
    sget-boolean v0, Lcom/android/systemui/Rune;->STATBAR_NETWORK_INFORMATION:Z

    if-eqz v0, :cond_0

    .line 214
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper$CarrierSettingsListener;->mSettingsValueList:[Landroid/net/Uri;

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method public onChanged(Landroid/net/Uri;)V
    .locals 0

    .line 220
    const-class p0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->requestUpdateCarrierInformationToNetwork()V

    return-void
.end method
