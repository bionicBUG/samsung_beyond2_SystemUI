.class public interface abstract Landroid/app/enterprise/sso/IGenericSSOCallback;
.super Ljava/lang/Object;
.source "IGenericSSOCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/enterprise/sso/IGenericSSOCallback$Stub;,
        Landroid/app/enterprise/sso/IGenericSSOCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onFail(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract tokenInfoSuccess(Landroid/app/enterprise/sso/TokenInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract userInfoSuccess(Landroid/app/enterprise/sso/UserInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
