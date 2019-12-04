.class public final synthetic Lcom/android/settingslib/wifi/-$$Lambda$WifiTracker$WifiListenerExecutor$xZ_4AAYtBrPS_8CI778bp94cXNo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;

.field private final synthetic f$1:Landroid/net/wifi/WifiConfiguration;

.field private final synthetic f$2:Z

.field private final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;Landroid/net/wifi/WifiConfiguration;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/wifi/-$$Lambda$WifiTracker$WifiListenerExecutor$xZ_4AAYtBrPS_8CI778bp94cXNo;->f$0:Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;

    iput-object p2, p0, Lcom/android/settingslib/wifi/-$$Lambda$WifiTracker$WifiListenerExecutor$xZ_4AAYtBrPS_8CI778bp94cXNo;->f$1:Landroid/net/wifi/WifiConfiguration;

    iput-boolean p3, p0, Lcom/android/settingslib/wifi/-$$Lambda$WifiTracker$WifiListenerExecutor$xZ_4AAYtBrPS_8CI778bp94cXNo;->f$2:Z

    iput p4, p0, Lcom/android/settingslib/wifi/-$$Lambda$WifiTracker$WifiListenerExecutor$xZ_4AAYtBrPS_8CI778bp94cXNo;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/wifi/-$$Lambda$WifiTracker$WifiListenerExecutor$xZ_4AAYtBrPS_8CI778bp94cXNo;->f$0:Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;

    iget-object v1, p0, Lcom/android/settingslib/wifi/-$$Lambda$WifiTracker$WifiListenerExecutor$xZ_4AAYtBrPS_8CI778bp94cXNo;->f$1:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v2, p0, Lcom/android/settingslib/wifi/-$$Lambda$WifiTracker$WifiListenerExecutor$xZ_4AAYtBrPS_8CI778bp94cXNo;->f$2:Z

    iget p0, p0, Lcom/android/settingslib/wifi/-$$Lambda$WifiTracker$WifiListenerExecutor$xZ_4AAYtBrPS_8CI778bp94cXNo;->f$3:I

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;->lambda$onConfiguredNetworksChanged$1$WifiTracker$WifiListenerExecutor(Landroid/net/wifi/WifiConfiguration;ZI)V

    return-void
.end method
