.class public interface abstract Lcom/samsung/android/knox/net/nap/IStatusCallback;
.super Ljava/lang/Object;
.source "IStatusCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/net/nap/IStatusCallback$Stub;,
        Lcom/samsung/android/knox/net/nap/IStatusCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onCallComplete(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
