.class public Lcom/sec/vpn/knox/GenericVpnService;
.super Landroid/app/Service;
.source "GenericVpnService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/vpn/knox/GenericVpnService$Builder;,
        Lcom/sec/vpn/knox/GenericVpnService$Callback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 128
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 312
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "android.net.VpnService"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 313
    new-instance p1, Lcom/sec/vpn/knox/GenericVpnService$Callback;

    invoke-direct {p1, p0, v0}, Lcom/sec/vpn/knox/GenericVpnService$Callback;-><init>(Lcom/sec/vpn/knox/GenericVpnService;Lcom/sec/vpn/knox/GenericVpnService$1;)V

    return-object p1

    :cond_0
    return-object v0
.end method

.method public onRevoke()V
    .locals 0

    .line 329
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method
