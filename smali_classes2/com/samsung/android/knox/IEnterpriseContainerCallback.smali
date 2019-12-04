.class public interface abstract Lcom/samsung/android/knox/IEnterpriseContainerCallback;
.super Ljava/lang/Object;
.source "IEnterpriseContainerCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/IEnterpriseContainerCallback$Stub;,
        Lcom/samsung/android/knox/IEnterpriseContainerCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract updateStatus(ILandroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
