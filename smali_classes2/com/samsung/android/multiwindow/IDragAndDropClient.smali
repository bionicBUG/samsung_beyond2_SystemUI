.class public interface abstract Lcom/samsung/android/multiwindow/IDragAndDropClient;
.super Ljava/lang/Object;
.source "IDragAndDropClient.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/multiwindow/IDragAndDropClient$Stub;,
        Lcom/samsung/android/multiwindow/IDragAndDropClient$Default;
    }
.end annotation


# virtual methods
.method public abstract onDragEnd(IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onDragStart()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
