.class public interface abstract Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentServiceCallback;
.super Ljava/lang/Object;
.source "IUcmAgentServiceCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentServiceCallback$Stub;,
        Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentServiceCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onCredentialStorageChange()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
