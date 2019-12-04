.class Landroid/app/enterprise/IApplicationPermissionControlPolicy$Stub$Proxy;
.super Ljava/lang/Object;
.source "IApplicationPermissionControlPolicy.java"

# interfaces
.implements Landroid/app/enterprise/IApplicationPermissionControlPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/IApplicationPermissionControlPolicy$Stub;
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

    .line 284
    iget-object p0, p0, Landroid/app/enterprise/IApplicationPermissionControlPolicy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method
