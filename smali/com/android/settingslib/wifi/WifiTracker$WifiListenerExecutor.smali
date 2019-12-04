.class Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;
.super Ljava/lang/Object;
.source "WifiTracker.java"

# interfaces
.implements Lcom/android/settingslib/wifi/WifiTracker$WifiListener;
.implements Lcom/android/settingslib/wifi/WifiTracker$SemWifiListener;


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/wifi/WifiTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WifiListenerExecutor"
.end annotation


# instance fields
.field private final mDelegatee:Lcom/android/settingslib/wifi/WifiTracker$WifiListener;

.field private final mSemDelegatee:Lcom/android/settingslib/wifi/WifiTracker$SemWifiListener;

.field final synthetic this$0:Lcom/android/settingslib/wifi/WifiTracker;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/wifi/WifiTracker;Lcom/android/settingslib/wifi/WifiTracker$WifiListener;Lcom/android/settingslib/wifi/WifiTracker$SemWifiListener;)V
    .locals 0

    .line 1343
    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1344
    iput-object p2, p0, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;->mDelegatee:Lcom/android/settingslib/wifi/WifiTracker$WifiListener;

    .line 1345
    iput-object p3, p0, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;->mSemDelegatee:Lcom/android/settingslib/wifi/WifiTracker$SemWifiListener;

    return-void
.end method

.method private runAndLog(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 1

    .line 1399
    new-instance v0, Lcom/android/settingslib/wifi/-$$Lambda$WifiTracker$WifiListenerExecutor$XqD8cV42f6onmE3POo0T1gJeAds;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/settingslib/wifi/-$$Lambda$WifiTracker$WifiListenerExecutor$XqD8cV42f6onmE3POo0T1gJeAds;-><init>(Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onAccessPointsChanged$2$WifiTracker$WifiListenerExecutor(Z)V
    .locals 0

    .line 1378
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;->mSemDelegatee:Lcom/android/settingslib/wifi/WifiTracker$SemWifiListener;

    invoke-interface {p0, p1}, Lcom/android/settingslib/wifi/WifiTracker$SemWifiListener;->onAccessPointsChanged(Z)V

    return-void
.end method

.method public synthetic lambda$onConfiguredNetworksChanged$1$WifiTracker$WifiListenerExecutor(Landroid/net/wifi/WifiConfiguration;ZI)V
    .locals 0

    .line 1370
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;->mSemDelegatee:Lcom/android/settingslib/wifi/WifiTracker$SemWifiListener;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/settingslib/wifi/WifiTracker$SemWifiListener;->onConfiguredNetworksChanged(Landroid/net/wifi/WifiConfiguration;ZI)V

    return-void
.end method

.method public synthetic lambda$onScanStateChange$3$WifiTracker$WifiListenerExecutor(I)V
    .locals 0

    .line 1386
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;->mSemDelegatee:Lcom/android/settingslib/wifi/WifiTracker$SemWifiListener;

    invoke-interface {p0, p1}, Lcom/android/settingslib/wifi/WifiTracker$SemWifiListener;->onScanStateChange(I)V

    return-void
.end method

.method public synthetic lambda$onWifiStateChanged$0$WifiTracker$WifiListenerExecutor(I)V
    .locals 0

    .line 1350
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;->mDelegatee:Lcom/android/settingslib/wifi/WifiTracker$WifiListener;

    invoke-interface {p0, p1}, Lcom/android/settingslib/wifi/WifiTracker$WifiListener;->onWifiStateChanged(I)V

    return-void
.end method

.method public synthetic lambda$runAndLog$4$WifiTracker$WifiListenerExecutor(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .line 1400
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {p0}, Lcom/android/settingslib/wifi/WifiTracker;->access$000(Lcom/android/settingslib/wifi/WifiTracker;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 1401
    invoke-static {}, Lcom/android/settingslib/wifi/WifiTracker;->access$1600()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "WifiTracker"

    .line 1402
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    :cond_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method public onAccessPointsChanged()V
    .locals 2

    .line 1361
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;->mSemDelegatee:Lcom/android/settingslib/wifi/WifiTracker$SemWifiListener;

    if-eqz v0, :cond_0

    return-void

    .line 1364
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;->mDelegatee:Lcom/android/settingslib/wifi/WifiTracker$WifiListener;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/settingslib/wifi/-$$Lambda$evcvquoPxZkPmBIit31UXvhXEJk;

    invoke-direct {v1, v0}, Lcom/android/settingslib/wifi/-$$Lambda$evcvquoPxZkPmBIit31UXvhXEJk;-><init>(Lcom/android/settingslib/wifi/WifiTracker$WifiListener;)V

    const-string v0, "Invoking onAccessPointsChanged callback"

    invoke-direct {p0, v1, v0}, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;->runAndLog(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public onAccessPointsChanged(Z)V
    .locals 3

    .line 1377
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;->mSemDelegatee:Lcom/android/settingslib/wifi/WifiTracker$SemWifiListener;

    if-eqz v0, :cond_0

    .line 1378
    new-instance v0, Lcom/android/settingslib/wifi/-$$Lambda$WifiTracker$WifiListenerExecutor$AoMaK61XLvqShorDHfx_kknMusY;

    invoke-direct {v0, p0, p1}, Lcom/android/settingslib/wifi/-$$Lambda$WifiTracker$WifiListenerExecutor$AoMaK61XLvqShorDHfx_kknMusY;-><init>(Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invoking onAccessPointsChanged callback, updated scan:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;->runAndLog(Ljava/lang/Runnable;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onConfiguredNetworksChanged(Landroid/net/wifi/WifiConfiguration;ZI)V
    .locals 1

    .line 1369
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;->mSemDelegatee:Lcom/android/settingslib/wifi/WifiTracker$SemWifiListener;

    if-eqz v0, :cond_0

    .line 1370
    new-instance v0, Lcom/android/settingslib/wifi/-$$Lambda$WifiTracker$WifiListenerExecutor$xZ_4AAYtBrPS_8CI778bp94cXNo;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/settingslib/wifi/-$$Lambda$WifiTracker$WifiListenerExecutor$xZ_4AAYtBrPS_8CI778bp94cXNo;-><init>(Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;Landroid/net/wifi/WifiConfiguration;ZI)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invoking onConfiguredNetworksChanged callback, reason:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;->runAndLog(Ljava/lang/Runnable;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onConnectedChanged()V
    .locals 2

    .line 1356
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;->mDelegatee:Lcom/android/settingslib/wifi/WifiTracker$WifiListener;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/settingslib/wifi/-$$Lambda$6PbPNXCvqbAnKbPWPJrs-dDWQEQ;

    invoke-direct {v1, v0}, Lcom/android/settingslib/wifi/-$$Lambda$6PbPNXCvqbAnKbPWPJrs-dDWQEQ;-><init>(Lcom/android/settingslib/wifi/WifiTracker$WifiListener;)V

    const-string v0, "Invoking onConnectedChanged callback"

    invoke-direct {p0, v1, v0}, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;->runAndLog(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public onIpMacInfoUpdated()V
    .locals 2

    .line 1393
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;->mSemDelegatee:Lcom/android/settingslib/wifi/WifiTracker$SemWifiListener;

    if-eqz v0, :cond_0

    .line 1394
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/settingslib/wifi/-$$Lambda$kPr5DSStyA4TlXl9NRHJJiDgZXI;

    invoke-direct {v1, v0}, Lcom/android/settingslib/wifi/-$$Lambda$kPr5DSStyA4TlXl9NRHJJiDgZXI;-><init>(Lcom/android/settingslib/wifi/WifiTracker$SemWifiListener;)V

    const-string v0, "Invoking updateIpMacInfo callback"

    invoke-direct {p0, v1, v0}, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;->runAndLog(Ljava/lang/Runnable;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onScanStateChange(I)V
    .locals 3

    .line 1385
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;->mSemDelegatee:Lcom/android/settingslib/wifi/WifiTracker$SemWifiListener;

    if-eqz v0, :cond_0

    .line 1386
    new-instance v0, Lcom/android/settingslib/wifi/-$$Lambda$WifiTracker$WifiListenerExecutor$pne8qIavSn84CYfTkdRsqfTKIMY;

    invoke-direct {v0, p0, p1}, Lcom/android/settingslib/wifi/-$$Lambda$WifiTracker$WifiListenerExecutor$pne8qIavSn84CYfTkdRsqfTKIMY;-><init>(Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invoking onScanStateChange callback, scan state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;->runAndLog(Ljava/lang/Runnable;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onWifiStateChanged(I)V
    .locals 3

    .line 1350
    new-instance v0, Lcom/android/settingslib/wifi/-$$Lambda$WifiTracker$WifiListenerExecutor$PZBvWEzpVHhaI95PbZNbzEgAH1I;

    invoke-direct {v0, p0, p1}, Lcom/android/settingslib/wifi/-$$Lambda$WifiTracker$WifiListenerExecutor$PZBvWEzpVHhaI95PbZNbzEgAH1I;-><init>(Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;I)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 1351
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Invoking onWifiStateChanged callback with state %d"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1350
    invoke-direct {p0, v0, p1}, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;->runAndLog(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method
