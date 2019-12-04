.class public Landroid/app/enterprise/sso/GenericSSOCallbackProxy;
.super Lcom/samsung/android/knox/sso/authrequest/IGenericSSOCallback$Stub;
.source "GenericSSOCallbackProxy.java"


# instance fields
.field private mOldCallback:Landroid/app/enterprise/sso/GenericSSOCallback;


# virtual methods
.method public onFail(I)V
    .locals 0

    .line 48
    iget-object p0, p0, Landroid/app/enterprise/sso/GenericSSOCallbackProxy;->mOldCallback:Landroid/app/enterprise/sso/GenericSSOCallback;

    if-eqz p0, :cond_0

    .line 49
    invoke-virtual {p0, p1}, Landroid/app/enterprise/sso/GenericSSOCallback;->onFail(I)V

    :cond_0
    return-void
.end method

.method public tokenInfoSuccess(Lcom/samsung/android/knox/sso/common/TokenInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    iget-object p0, p0, Landroid/app/enterprise/sso/GenericSSOCallbackProxy;->mOldCallback:Landroid/app/enterprise/sso/GenericSSOCallback;

    if-eqz p0, :cond_0

    .line 37
    invoke-static {p1}, Landroid/app/enterprise/sso/TokenInfo;->convertToOld(Lcom/samsung/android/knox/sso/common/TokenInfo;)Landroid/app/enterprise/sso/TokenInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/enterprise/sso/GenericSSOCallback;->tokenInfoSuccess(Landroid/app/enterprise/sso/TokenInfo;)V

    :cond_0
    return-void
.end method

.method public userInfoSuccess(Lcom/samsung/android/knox/sso/common/UserInfo;)V
    .locals 0

    .line 42
    iget-object p0, p0, Landroid/app/enterprise/sso/GenericSSOCallbackProxy;->mOldCallback:Landroid/app/enterprise/sso/GenericSSOCallback;

    if-eqz p0, :cond_0

    .line 43
    invoke-static {p1}, Landroid/app/enterprise/sso/UserInfo;->convertToOld(Lcom/samsung/android/knox/sso/common/UserInfo;)Landroid/app/enterprise/sso/UserInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/enterprise/sso/GenericSSOCallback;->userInfoSuccess(Landroid/app/enterprise/sso/UserInfo;)V

    :cond_0
    return-void
.end method
