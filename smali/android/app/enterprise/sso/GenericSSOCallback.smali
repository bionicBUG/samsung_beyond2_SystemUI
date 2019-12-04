.class public abstract Landroid/app/enterprise/sso/GenericSSOCallback;
.super Landroid/app/enterprise/sso/IGenericSSOCallback$Stub;
.source "GenericSSOCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroid/app/enterprise/sso/IGenericSSOCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onFail(I)V
.end method

.method public abstract tokenInfoSuccess(Landroid/app/enterprise/sso/TokenInfo;)V
.end method

.method public abstract userInfoSuccess(Landroid/app/enterprise/sso/UserInfo;)V
.end method
