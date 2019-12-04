.class public interface abstract Lcom/samsung/android/multiwindow/IResizeModeChangedFromBlackListEventListener;
.super Ljava/lang/Object;
.source "IResizeModeChangedFromBlackListEventListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/multiwindow/IResizeModeChangedFromBlackListEventListener$Stub;,
        Lcom/samsung/android/multiwindow/IResizeModeChangedFromBlackListEventListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onResizeModeChangedFromBlackList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
