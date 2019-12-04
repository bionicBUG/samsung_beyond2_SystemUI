.class public interface abstract Lcom/samsung/android/knox/shareddevice/ISharedDeviceManagementService;
.super Ljava/lang/Object;
.source "ISharedDeviceManagementService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/shareddevice/ISharedDeviceManagementService$Stub;,
        Lcom/samsung/android/knox/shareddevice/ISharedDeviceManagementService$Default;
    }
.end annotation


# virtual methods
.method public abstract getSDUserName()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifyUserSignedIn(Lcom/samsung/android/knox/shareddevice/UserCredentials;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract performUserAuthentication(Lcom/samsung/android/knox/shareddevice/UserCredentials;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract signOutUser(Z)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
