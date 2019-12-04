.class Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "IKnoxCustomManager.java"

# interfaces
.implements Lcom/samsung/android/knox/custom/IKnoxCustomManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/samsung/android/knox/custom/IKnoxCustomManager;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 3944
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3945
    iput-object p1, p0, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 3949
    iget-object p0, p0, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public getExitUI(I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4045
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4046
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.samsung.android.knox.custom.IKnoxCustomManager"

    .line 4049
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4050
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4051
    iget-object p0, p0, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 4052
    invoke-static {}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->getDefaultImpl()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4053
    invoke-static {}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->getDefaultImpl()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getExitUI(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4059
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4060
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 4055
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4056
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4059
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4060
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 4059
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4060
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public getLockScreenOverrideMode()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7245
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7246
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.samsung.android.knox.custom.IKnoxCustomManager"

    .line 7249
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7250
    iget-object p0, p0, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x9e

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 7251
    invoke-static {}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->getDefaultImpl()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 7252
    invoke-static {}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->getDefaultImpl()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getLockScreenOverrideMode()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7258
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7259
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 7254
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7255
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7258
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7259
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 7258
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7259
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public getPowerDialogCustomItems()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/custom/PowerItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7451
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7452
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.samsung.android.knox.custom.IKnoxCustomManager"

    .line 7455
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7456
    iget-object p0, p0, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xa8

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 7457
    invoke-static {}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->getDefaultImpl()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 7458
    invoke-static {}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->getDefaultImpl()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getPowerDialogCustomItems()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7464
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7465
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 7460
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7461
    sget-object p0, Lcom/samsung/android/knox/custom/PowerItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7464
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7465
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 7464
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7465
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public getPowerDialogCustomItemsState()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7410
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7411
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.samsung.android.knox.custom.IKnoxCustomManager"

    .line 7414
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7415
    iget-object p0, p0, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xa6

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 7416
    invoke-static {}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->getDefaultImpl()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 7417
    invoke-static {}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->getDefaultImpl()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getPowerDialogCustomItemsState()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7423
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7424
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 7419
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7420
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    const/4 v3, 0x1

    .line 7423
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7424
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p0

    .line 7423
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7424
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public getPowerDialogItems()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4976
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4977
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.samsung.android.knox.custom.IKnoxCustomManager"

    .line 4980
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4981
    iget-object p0, p0, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x31

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 4982
    invoke-static {}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->getDefaultImpl()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4983
    invoke-static {}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->getDefaultImpl()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getPowerDialogItems()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4989
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4990
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 4985
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4986
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4989
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4990
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 4989
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4990
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public getPowerDialogOptionMode()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4087
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4088
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.samsung.android.knox.custom.IKnoxCustomManager"

    .line 4091
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4092
    iget-object p0, p0, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 4093
    invoke-static {}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->getDefaultImpl()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4094
    invoke-static {}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->getDefaultImpl()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getPowerDialogOptionMode()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4100
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4101
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 4096
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4097
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4100
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4101
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 4100
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4101
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public getPowerMenuLockedState()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6077
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6078
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.samsung.android.knox.custom.IKnoxCustomManager"

    .line 6081
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6082
    iget-object p0, p0, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x66

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 6083
    invoke-static {}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->getDefaultImpl()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 6084
    invoke-static {}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->getDefaultImpl()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getPowerMenuLockedState()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6090
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6091
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 6086
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6087
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    const/4 v3, 0x1

    .line 6090
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6091
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p0

    .line 6090
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6091
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public getProKioskState()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3981
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3982
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.samsung.android.knox.custom.IKnoxCustomManager"

    .line 3985
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3986
    iget-object p0, p0, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 3987
    invoke-static {}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->getDefaultImpl()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3988
    invoke-static {}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->getDefaultImpl()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getProKioskState()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3994
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3995
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 3990
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3991
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    const/4 v3, 0x1

    .line 3994
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3995
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p0

    .line 3994
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3995
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public getProKioskString(I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4129
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4130
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.samsung.android.knox.custom.IKnoxCustomManager"

    .line 4133
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4134
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4135
    iget-object p0, p0, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 4136
    invoke-static {}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->getDefaultImpl()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4137
    invoke-static {}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->getDefaultImpl()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getProKioskString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4143
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4144
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 4139
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4140
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4143
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4144
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 4143
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4144
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public getScreenWakeupOnPowerState()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6282
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6283
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.samsung.android.knox.custom.IKnoxCustomManager"

    .line 6286
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6287
    iget-object p0, p0, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x70

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 6288
    invoke-static {}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->getDefaultImpl()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 6289
    invoke-static {}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->getDefaultImpl()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getScreenWakeupOnPowerState()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6295
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6296
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 6291
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6292
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    const/4 v3, 0x1

    .line 6295
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6296
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p0

    .line 6295
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6296
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public getSettingsHiddenState()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5205
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5206
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.samsung.android.knox.custom.IKnoxCustomManager"

    .line 5209
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5210
    iget-object p0, p0, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x3c

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 5211
    invoke-static {}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->getDefaultImpl()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 5212
    invoke-static {}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->getDefaultImpl()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getSettingsHiddenState()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5218
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5219
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 5214
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5215
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5218
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5219
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 5218
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5219
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public registerSystemUiCallback(Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9899
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9900
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.samsung.android.knox.custom.IKnoxCustomManager"

    .line 9903
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 9904
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 9905
    iget-object p0, p0, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x117

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 9906
    invoke-static {}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->getDefaultImpl()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 9907
    invoke-static {}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->getDefaultImpl()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->registerSystemUiCallback(Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9913
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9914
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 9909
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9910
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_2

    const/4 v3, 0x1

    .line 9913
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9914
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p0

    .line 9913
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9914
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public setProKioskState(ZLjava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3959
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3960
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.samsung.android.knox.custom.IKnoxCustomManager"

    .line 3963
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    .line 3964
    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3965
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3966
    iget-object p0, p0, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 3967
    invoke-static {}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->getDefaultImpl()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 3968
    invoke-static {}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->getDefaultImpl()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setProKioskState(ZLjava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3974
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3975
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 3970
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3971
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3974
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3975
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 3974
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3975
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method
