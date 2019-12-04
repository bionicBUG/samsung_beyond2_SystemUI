.class Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IEnterpriseMocanaVpnService.java"

# interfaces
.implements Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1037
    iget-object p0, p0, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method
