.class public abstract Lcom/samsung/android/knox/ddar/DualDARClient;
.super Landroid/app/Service;
.source "DualDARClient.java"

# interfaces
.implements Lcom/samsung/android/knox/ddar/IDualDARClient;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 176
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private bindClient(Lcom/samsung/android/knox/ddar/IDualDARClient;)Landroid/os/IBinder;
    .locals 0

    .line 189
    invoke-static {p0}, Lcom/samsung/android/knox/ddar/DualDARManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/ddar/DualDARManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ddar/DualDARManager;->bindClient(Lcom/samsung/android/knox/ddar/IDualDARClient;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 185
    invoke-direct {p0, p0}, Lcom/samsung/android/knox/ddar/DualDARClient;->bindClient(Lcom/samsung/android/knox/ddar/IDualDARClient;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method
