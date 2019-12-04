.class public Lcom/samsung/android/knox/restriction/RestrictionPolicy;
.super Ljava/lang/Object;
.source "RestrictionPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "RestrictionPolicy"

.field public static final settingsExceptions:[Ljava/lang/String;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 31

    const-string v0, "com.android.settings.FallbackHome"

    const-string v1, "com.android.settings.ActivityPicker"

    const-string v2, "com.android.settings.AppWidgetPickActivity"

    const-string v3, "com.android.settings.widget.SettingsAppWidgetProvider"

    const-string v4, "com.android.settings.CryptKeeper"

    const-string v5, "com.android.settings.CryptKeeperConfirm"

    const-string v6, "com.android.settings.CryptKeeperSettings"

    const-string v7, "com.android.settings.ChooseLockAdditionalPin"

    const-string v8, "com.android.settings.ChooseLockFaceWarning"

    const-string v9, "com.android.settings.password.ChooseLockGeneric"

    const-string v10, "com.android.settings.ChooseLockMotion"

    const-string v11, "com.android.settings.password.ChooseLockPassword"

    const-string v12, "com.android.settings.password.ChooseLockPattern"

    const-string v13, "com.android.settings.password.ConfirmLockPassword"

    const-string v14, "com.android.settings.password.ConfirmLockPattern"

    const-string v15, "com.android.settings.DeviceAdminAdd"

    const-string v16, "com.android.settings.bluetooth.DevicePickerActivity"

    const-string v17, "com.android.settings.wifi.p2p.WifiP2pDeviceList"

    const-string v18, "com.android.settings.Settings$WifiP2pDevicePickerActivity"

    const-string v19, "com.android.settings.wfd.WfdPickerActivity"

    const-string v20, "com.android.settings.bluetooth.BluetoothPairingDialog"

    const-string v21, "com.samsung.settings.bluetooth.CheckBluetoothStateActivity"

    const-string v22, "com.android.settings.bluetooth.BluetoothEnableActivity"

    const-string v23, "com.android.settings.bluetooth.BluetoothEnablingActivity"

    const-string v24, "com.android.settings.fingerprint.FingerprintLockSettings"

    const-string v25, "com.android.settings.fingerprint.RegisterFingerprint"

    const-string v26, "com.android.settings.KnoxSetLockFingerprintPassword"

    const-string v27, "com.android.settings.KnoxChooseLockFingerprintPassword"

    const-string v28, "com.android.settings.notification.RedactionInterstitial"

    const-string v29, "com.android.settings.KnoxFingerprintNotice"

    const-string v30, "com.samsung.settings.PRIVATEBOX_SETTINGS"

    .line 109
    filled-new-array/range {v0 .. v30}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->settingsExceptions:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    iput-object p2, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 289
    iput-object p1, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 290
    new-instance v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;-><init>(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-void
.end method

.method private getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    if-nez v0, :cond_0

    const-string v0, "restriction_policy"

    .line 296
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 295
    invoke-static {v0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 298
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    return-object p0
.end method


# virtual methods
.method public isCellularDataAllowed()Z
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 894
    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 896
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isCellularDataAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 898
    sget-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with misc policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isFactoryResetAllowed()Z
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1241
    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1243
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isFactoryResetAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1245
    sget-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with misc policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isPowerOffAllowed(Z)Z
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1900
    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1902
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isPowerOffAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1904
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with restriction info policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isSafeModeAllowed()Z
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 2767
    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2769
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isSafeModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 2771
    sget-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with restriction policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isSettingsChangesAllowed(Z)Z
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 986
    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 988
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isSettingsChangesAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 990
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with misc policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
