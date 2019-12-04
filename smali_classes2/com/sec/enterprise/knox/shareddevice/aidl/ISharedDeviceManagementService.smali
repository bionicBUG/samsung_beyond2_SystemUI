.class public interface abstract Lcom/sec/enterprise/knox/shareddevice/aidl/ISharedDeviceManagementService;
.super Ljava/lang/Object;
.source "ISharedDeviceManagementService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/enterprise/knox/shareddevice/aidl/ISharedDeviceManagementService$Stub;,
        Lcom/sec/enterprise/knox/shareddevice/aidl/ISharedDeviceManagementService$Default;
    }
.end annotation


# virtual methods
.method public abstract notifyUserSignedIn(Lcom/sec/enterprise/knox/shareddevice/aidl/UserCredentials;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract performUserAuthentication(Lcom/sec/enterprise/knox/shareddevice/aidl/UserCredentials;)I
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
