.class public interface abstract Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;
.super Ljava/lang/Object;
.source "IDownloadableKeystoreService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService$Stub;,
        Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService$Default;
    }
.end annotation


# virtual methods
.method public abstract startTimaKeystoreServices(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
