.class Lcom/sec/enterprise/knox/seandroid/ISEAndroidPolicy$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISEAndroidPolicy.java"

# interfaces
.implements Lcom/sec/enterprise/knox/seandroid/ISEAndroidPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/enterprise/knox/seandroid/ISEAndroidPolicy$Stub;
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

    .line 462
    iget-object p0, p0, Lcom/sec/enterprise/knox/seandroid/ISEAndroidPolicy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method
