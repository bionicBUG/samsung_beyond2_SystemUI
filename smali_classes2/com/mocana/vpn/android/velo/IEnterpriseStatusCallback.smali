.class public interface abstract Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;
.super Ljava/lang/Object;
.source "IEnterpriseStatusCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback$Stub;,
        Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract updateStatus(Ljava/lang/String;ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
