.class Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Callback;
.super Landroid/os/Binder;
.source "GenericVpnService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Callback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;


# direct methods
.method private constructor <init>(Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;)V
    .locals 0

    .line 356
    iput-object p1, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Callback;->this$0:Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$1;)V
    .locals 0

    .line 356
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Callback;-><init>(Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;)V

    return-void
.end method


# virtual methods
.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 359
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    const p2, 0xffffff

    if-ne p1, p2, :cond_0

    .line 361
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Callback;->this$0:Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;->onRevoke()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
