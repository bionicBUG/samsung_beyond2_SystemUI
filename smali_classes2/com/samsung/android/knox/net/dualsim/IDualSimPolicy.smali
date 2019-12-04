.class public interface abstract Lcom/samsung/android/knox/net/dualsim/IDualSimPolicy;
.super Ljava/lang/Object;
.source "IDualSimPolicy.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/net/dualsim/IDualSimPolicy$Stub;,
        Lcom/samsung/android/knox/net/dualsim/IDualSimPolicy$Default;
    }
.end annotation


# virtual methods
.method public abstract clearPreferredSimSlot(Lcom/samsung/android/knox/ContextInfo;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getPreferredSimSlot(Lcom/samsung/android/knox/ContextInfo;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setPreferredSimSlot(Lcom/samsung/android/knox/ContextInfo;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
