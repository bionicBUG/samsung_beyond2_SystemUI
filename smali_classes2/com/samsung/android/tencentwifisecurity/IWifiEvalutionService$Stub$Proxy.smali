.class Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IWifiEvalutionService.java"

# interfaces
.implements Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public registerEvalutionCallback(Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 156
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 157
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.samsung.android.tencentwifisecurity.IWifiEvalutionService"

    .line 159
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 160
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 161
    iget-object p0, p0, Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 162
    invoke-static {}, Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionService$Stub;->getDefaultImpl()Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionService;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 163
    invoke-static {}, Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionService$Stub;->getDefaultImpl()Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionService;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionService;->registerEvalutionCallback(Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 170
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 166
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 170
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 169
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 170
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public startSecurityEvalution()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 120
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 121
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.samsung.android.tencentwifisecurity.IWifiEvalutionService"

    .line 123
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 124
    iget-object p0, p0, Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 125
    invoke-static {}, Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionService$Stub;->getDefaultImpl()Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 126
    invoke-static {}, Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionService$Stub;->getDefaultImpl()Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionService;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionService;->startSecurityEvalution()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 133
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 129
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 133
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 132
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 133
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public stopSecurityEvalution()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 138
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 139
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.samsung.android.tencentwifisecurity.IWifiEvalutionService"

    .line 141
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 142
    iget-object p0, p0, Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 143
    invoke-static {}, Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionService$Stub;->getDefaultImpl()Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 144
    invoke-static {}, Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionService$Stub;->getDefaultImpl()Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionService;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionService;->stopSecurityEvalution()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 151
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 147
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 151
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 150
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 151
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public unregisterEvalutionCallback(Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 175
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 176
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.samsung.android.tencentwifisecurity.IWifiEvalutionService"

    .line 178
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 179
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 180
    iget-object p0, p0, Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 181
    invoke-static {}, Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionService$Stub;->getDefaultImpl()Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionService;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 182
    invoke-static {}, Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionService$Stub;->getDefaultImpl()Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionService;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionService;->unregisterEvalutionCallback(Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 189
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 185
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 189
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 188
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 189
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method
