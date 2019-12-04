.class public interface abstract Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardLockscreenPolicy;
.super Ljava/lang/Object;
.source "ISmartCardLockscreenPolicy.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardLockscreenPolicy$Stub;,
        Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardLockscreenPolicy$Default;
    }
.end annotation


# virtual methods
.method public abstract disableAuthentication()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract enableAuthentication()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isAuthenticationEnabled()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
