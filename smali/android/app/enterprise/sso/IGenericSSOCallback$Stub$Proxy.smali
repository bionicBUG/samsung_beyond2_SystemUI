.class Landroid/app/enterprise/sso/IGenericSSOCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IGenericSSOCallback.java"

# interfaces
.implements Landroid/app/enterprise/sso/IGenericSSOCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/sso/IGenericSSOCallback$Stub;
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

    .line 118
    iget-object p0, p0, Landroid/app/enterprise/sso/IGenericSSOCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method
