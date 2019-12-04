.class public Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;
.super Landroid/app/Service;
.source "GenericVpnService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;,
        Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Callback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 134
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 332
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "android.net.VpnService"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 333
    new-instance p1, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Callback;

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Callback;-><init>(Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$1;)V

    return-object p1

    :cond_0
    return-object v0
.end method

.method public onRevoke()V
    .locals 0
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 350
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method
