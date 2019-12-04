.class public interface abstract Lcom/samsung/android/knox/sso/authrequest/IGenericSSOCallback;
.super Ljava/lang/Object;
.source "IGenericSSOCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/sso/authrequest/IGenericSSOCallback$Stub;,
        Lcom/samsung/android/knox/sso/authrequest/IGenericSSOCallback$Default;
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

.method public abstract tokenInfoSuccess(Lcom/samsung/android/knox/sso/common/TokenInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract userInfoSuccess(Lcom/samsung/android/knox/sso/common/UserInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
