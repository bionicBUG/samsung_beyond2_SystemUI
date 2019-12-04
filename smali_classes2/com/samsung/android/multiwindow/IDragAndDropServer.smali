.class public interface abstract Lcom/samsung/android/multiwindow/IDragAndDropServer;
.super Ljava/lang/Object;
.source "IDragAndDropServer.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/multiwindow/IDragAndDropServer$Stub;,
        Lcom/samsung/android/multiwindow/IDragAndDropServer$Default;
    }
.end annotation


# virtual methods
.method public abstract bind(Landroid/os/IBinder;Landroid/graphics/Bitmap;III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract hide()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract show()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
