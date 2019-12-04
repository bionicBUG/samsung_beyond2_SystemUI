.class public interface abstract Lcom/sec/enterprise/knox/nap/IStatusCallback;
.super Ljava/lang/Object;
.source "IStatusCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/enterprise/knox/nap/IStatusCallback$Stub;,
        Lcom/sec/enterprise/knox/nap/IStatusCallback$Default;
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
