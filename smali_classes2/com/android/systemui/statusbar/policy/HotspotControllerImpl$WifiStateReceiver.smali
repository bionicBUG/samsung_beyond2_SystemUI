.class final Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$WifiStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HotspotControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WifiStateReceiver"
.end annotation


# instance fields
.field private mRegistered:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$WifiStateReceiver;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$1;)V
    .locals 0

    .line 331
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$WifiStateReceiver;-><init>(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 377
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    .line 378
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/16 p1, 0xe

    const-string v0, "wifi_state"

    .line 379
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 380
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "HotspotController"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$WifiStateReceiver;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    invoke-static {p2, p1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->access$402(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;I)I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 391
    :pswitch_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$WifiStateReceiver;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->isHotspotEnabled()Z

    move-result p2

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->access$600(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;Z)V

    .line 393
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$WifiStateReceiver;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->access$700(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;Z)V

    goto :goto_0

    .line 386
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$WifiStateReceiver;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->access$500(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;)V

    goto :goto_0

    :cond_0
    const-string p2, "com.samsung.android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

    .line 399
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 401
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$WifiStateReceiver;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->access$700(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;Z)V

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setListening(Z)V
    .locals 2

    const-string v0, "HotspotController"

    if-eqz p1, :cond_2

    .line 335
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$WifiStateReceiver;->mRegistered:Z

    if-nez v1, :cond_2

    .line 336
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->access$100()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Registering receiver"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_0
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    .line 338
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.samsung.android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

    .line 342
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 344
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_CHAMELEON_HOTSPOT:Z

    if-eqz v0, :cond_1

    const-string v0, "com.samsung.CSC_CHAMELEON_UPDATE_SETTINGS"

    .line 345
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 347
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$WifiStateReceiver;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->access$300(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 348
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$WifiStateReceiver;->mRegistered:Z

    goto :goto_0

    :cond_2
    if-nez p1, :cond_4

    .line 349
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$WifiStateReceiver;->mRegistered:Z

    if-eqz p1, :cond_4

    .line 350
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->access$100()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "Unregistering receiver"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$WifiStateReceiver;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->access$300(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    .line 352
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$WifiStateReceiver;->mRegistered:Z

    :cond_4
    :goto_0
    return-void
.end method
