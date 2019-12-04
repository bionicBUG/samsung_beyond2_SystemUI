.class public interface abstract Lcom/samsung/android/knox/ucm/core/IUCMUnlockTaskCallback;
.super Ljava/lang/Object;
.source "IUCMUnlockTaskCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/ucm/core/IUCMUnlockTaskCallback$Stub;,
        Lcom/samsung/android/knox/ucm/core/IUCMUnlockTaskCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract postAuthentication()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
