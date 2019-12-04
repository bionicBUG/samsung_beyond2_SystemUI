.class Landroid/app/enterprise/IDataFadePolicy$Stub$Proxy;
.super Ljava/lang/Object;
.source "IDataFadePolicy.java"

# interfaces
.implements Landroid/app/enterprise/IDataFadePolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/IDataFadePolicy$Stub;
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

    .line 169
    iget-object p0, p0, Landroid/app/enterprise/IDataFadePolicy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method
