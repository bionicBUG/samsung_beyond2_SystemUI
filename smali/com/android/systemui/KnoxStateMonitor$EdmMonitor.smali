.class Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;
.super Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;
.source "KnoxStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/KnoxStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EdmMonitor"
.end annotation


# instance fields
.field private mAirplaneModeAllowed:Z

.field private mBluetoothAllowed:Z

.field private mCellularDataAllowed:Z

.field private mEnableAdminLock:Z

.field private mGPSStateChangeAllowed:Z

.field private mIsCameraDisabledByMdm:Z

.field private mIsDeviceDisableForMaxFailedAttempt:Z

.field private mIsFaceRecognitionAllowedEvenCameraBlocked:Z

.field private mIsLockscreenInvisibleOverlayConfigured:Z

.field private mIsLockscreenWallpaperConfigured:Z

.field private mIsMDMKioskMode:Z

.field private mIsNavigationBarHidden:Z

.field private mIsStatusBarHidden:Z

.field private mLicenseExpired:Z

.field private mLocationProviderAllowed:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mLockDelay:I

.field private mLockedIccIdList:[Ljava/lang/String;

.field private mMaxNumFailedAttemptForDisable:I

.field private mMultiFactorAuthEnabled:Z

.field private mNFCAllowed:Z

.field private mNFCStateChangeAllowed:Z

.field private mPasswordVisibilityEnabled:Z

.field private mPwdChangeRequest:I

.field private mSettingsChangesAllowed:Z

.field private mStatusBarExpandAllowed:Z

.field private mUserManager:Landroid/os/UserManager;

.field private mWifiAllowed:Z

.field private mWifiStateChangeAllowed:Z

.field private mWifiTetheringAllowed:Z

.field private mWipeExcludeExternalStorage:Z

.field final synthetic this$0:Lcom/android/systemui/KnoxStateMonitor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/KnoxStateMonitor;)V
    .locals 2

    .line 1892
    iput-object p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-direct {p0}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;-><init>()V

    const/4 v0, 0x0

    .line 1858
    iput-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsStatusBarHidden:Z

    .line 1859
    iput-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsNavigationBarHidden:Z

    .line 1860
    iput-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsMDMKioskMode:Z

    .line 1861
    iput-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mWipeExcludeExternalStorage:Z

    .line 1862
    iput-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsDeviceDisableForMaxFailedAttempt:Z

    .line 1863
    iput-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsLockscreenInvisibleOverlayConfigured:Z

    .line 1864
    iput-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsLockscreenWallpaperConfigured:Z

    const/4 v1, 0x1

    .line 1865
    iput-boolean v1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mSettingsChangesAllowed:Z

    .line 1866
    iput-boolean v1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mStatusBarExpandAllowed:Z

    .line 1867
    iput-boolean v1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mAirplaneModeAllowed:Z

    .line 1868
    iput-boolean v1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mCellularDataAllowed:Z

    .line 1869
    iput-boolean v1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mNFCAllowed:Z

    .line 1870
    iput-boolean v1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mWifiTetheringAllowed:Z

    .line 1871
    iput-boolean v1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mBluetoothAllowed:Z

    .line 1872
    iput-boolean v1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mNFCStateChangeAllowed:Z

    .line 1873
    iput-boolean v1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mWifiStateChangeAllowed:Z

    .line 1874
    iput-boolean v1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mWifiAllowed:Z

    .line 1875
    iput-boolean v1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mGPSStateChangeAllowed:Z

    .line 1876
    iput-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mMultiFactorAuthEnabled:Z

    .line 1877
    iput-boolean v1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mPasswordVisibilityEnabled:Z

    .line 1878
    iput-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsCameraDisabledByMdm:Z

    .line 1879
    iput-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsFaceRecognitionAllowedEvenCameraBlocked:Z

    .line 1880
    iput-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mEnableAdminLock:Z

    .line 1881
    iput-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mLicenseExpired:Z

    .line 1883
    iput v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mPwdChangeRequest:I

    const/4 v1, -0x1

    .line 1884
    iput v1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mLockDelay:I

    .line 1885
    iput v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mMaxNumFailedAttemptForDisable:I

    .line 1890
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mLocationProviderAllowed:Ljava/util/HashMap;

    .line 1893
    invoke-static {}, Lcom/android/systemui/Rune;->isTesting()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1894
    :cond_0
    invoke-static {p1}, Lcom/android/systemui/KnoxStateMonitor;->access$7500(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mUserManager:Landroid/os/UserManager;

    return-void
.end method

.method static synthetic access$5000(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z
    .locals 0

    .line 1856
    iget-boolean p0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsStatusBarHidden:Z

    return p0
.end method

.method static synthetic access$5100(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z
    .locals 0

    .line 1856
    iget-boolean p0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsNavigationBarHidden:Z

    return p0
.end method

.method static synthetic access$5200(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z
    .locals 0

    .line 1856
    iget-boolean p0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsMDMKioskMode:Z

    return p0
.end method

.method static synthetic access$5300(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z
    .locals 0

    .line 1856
    iget-boolean p0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mWipeExcludeExternalStorage:Z

    return p0
.end method

.method static synthetic access$5400(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)I
    .locals 0

    .line 1856
    iget p0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mLockDelay:I

    return p0
.end method

.method static synthetic access$5500(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)I
    .locals 0

    .line 1856
    iget p0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mMaxNumFailedAttemptForDisable:I

    return p0
.end method

.method static synthetic access$5600(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z
    .locals 0

    .line 1856
    iget-boolean p0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsDeviceDisableForMaxFailedAttempt:Z

    return p0
.end method

.method static synthetic access$5700(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)I
    .locals 0

    .line 1856
    iget p0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mPwdChangeRequest:I

    return p0
.end method

.method static synthetic access$5800(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z
    .locals 0

    .line 1856
    iget-boolean p0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mSettingsChangesAllowed:Z

    return p0
.end method

.method static synthetic access$5900(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z
    .locals 0

    .line 1856
    iget-boolean p0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mStatusBarExpandAllowed:Z

    return p0
.end method

.method static synthetic access$6000(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z
    .locals 0

    .line 1856
    iget-boolean p0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mAirplaneModeAllowed:Z

    return p0
.end method

.method static synthetic access$6100(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z
    .locals 0

    .line 1856
    iget-boolean p0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mCellularDataAllowed:Z

    return p0
.end method

.method static synthetic access$6200(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z
    .locals 0

    .line 1856
    iget-boolean p0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mNFCAllowed:Z

    return p0
.end method

.method static synthetic access$6300(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z
    .locals 0

    .line 1856
    iget-boolean p0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mWifiTetheringAllowed:Z

    return p0
.end method

.method static synthetic access$6400(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z
    .locals 0

    .line 1856
    iget-boolean p0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mBluetoothAllowed:Z

    return p0
.end method

.method static synthetic access$6500(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z
    .locals 0

    .line 1856
    iget-boolean p0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mNFCStateChangeAllowed:Z

    return p0
.end method

.method static synthetic access$6600(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z
    .locals 0

    .line 1856
    iget-boolean p0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mWifiStateChangeAllowed:Z

    return p0
.end method

.method static synthetic access$6700(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z
    .locals 0

    .line 1856
    iget-boolean p0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mWifiAllowed:Z

    return p0
.end method

.method static synthetic access$6800(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Ljava/util/HashMap;
    .locals 0

    .line 1856
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mLocationProviderAllowed:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$6900(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z
    .locals 0

    .line 1856
    iget-boolean p0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mGPSStateChangeAllowed:Z

    return p0
.end method

.method static synthetic access$7000(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z
    .locals 0

    .line 1856
    iget-boolean p0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsLockscreenInvisibleOverlayConfigured:Z

    return p0
.end method

.method static synthetic access$7100(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z
    .locals 0

    .line 1856
    iget-boolean p0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsLockscreenWallpaperConfigured:Z

    return p0
.end method

.method static synthetic access$7200(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z
    .locals 0

    .line 1856
    iget-boolean p0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mMultiFactorAuthEnabled:Z

    return p0
.end method

.method static synthetic access$7300(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z
    .locals 0

    .line 1856
    iget-boolean p0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsCameraDisabledByMdm:Z

    return p0
.end method

.method static synthetic access$7400(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z
    .locals 0

    .line 1856
    iget-boolean p0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsFaceRecognitionAllowedEvenCameraBlocked:Z

    return p0
.end method

.method private getCurrentFailedAttempts()I
    .locals 7

    const-string v0, "content://com.sec.knox.provider/PasswordPolicy2"

    .line 2105
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 2107
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {p0}, Lcom/android/systemui/KnoxStateMonitor;->access$7500(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string p0, "getCurrentFailedPasswordAttempts"

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2110
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2111
    invoke-interface {v0, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v0, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2114
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw p0

    :catch_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isMDMEnabled()Z
    .locals 0

    .line 2077
    iget p0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mMaxNumFailedAttemptForDisable:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private registerCallback()V
    .locals 3

    .line 1904
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "KnoxStateMonitor"

    if-eqz v0, :cond_0

    .line 1907
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->registerSystemUICallback(Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;)Z

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    const-string v0, "registerKnoxCallback() cannot reference because edm is null"

    .line 1909
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    const-string v2, "registerKnoxCallback() Failed!"

    .line 1912
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1914
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1916
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isAdminLocked()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mEnableAdminLock:Z

    .line 1917
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isLicenseLocked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mLicenseExpired:Z

    .line 1918
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EdmMonitor registerCallback mEnableAdminLock:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mEnableAdminLock:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "  mLicenseExpired:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mLicenseExpired:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method


# virtual methods
.method public excludeExternalStorageForFailedPasswordsWipe(Z)V
    .locals 0

    .line 1973
    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mWipeExcludeExternalStorage:Z

    return-void
.end method

.method public getLockDelay()I
    .locals 0

    .line 2143
    iget p0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mLockDelay:I

    return p0
.end method

.method public getPwdChangeRequest()I
    .locals 0

    .line 2081
    iget p0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mPwdChangeRequest:I

    return p0
.end method

.method public init()V
    .locals 1

    .line 1898
    invoke-static {}, Lcom/android/systemui/Rune;->isTesting()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1899
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->registerCallback()V

    return-void
.end method

.method public isAdminLockEnabled()Z
    .locals 1

    .line 1933
    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mEnableAdminLock:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mLicenseExpired:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isAirplaneModeTileBlocked()Z
    .locals 1

    .line 2149
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->access$7500(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mAirplaneModeAllowed:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isBlockedEdmSettingsChange(Landroid/content/Context;)Z
    .locals 0

    .line 2085
    iget-boolean p0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mSettingsChangesAllowed:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isBlueLightFilterTileBlocked()Z
    .locals 1

    .line 2191
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->access$7500(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public isBluetoothTileBlocked()Z
    .locals 1

    .line 2153
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->access$7500(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mBluetoothAllowed:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isBrightnessBlocked()Z
    .locals 1

    .line 2207
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->access$7500(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public isCameraDisabledByMdm()Z
    .locals 0

    .line 2320
    iget-boolean p0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsCameraDisabledByMdm:Z

    return p0
.end method

.method public isCellularDataAllowed()Z
    .locals 0

    .line 2265
    iget-boolean p0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mCellularDataAllowed:Z

    return p0
.end method

.method public isDeviceDisabledForMaxFailedAttempt()Z
    .locals 1

    .line 2097
    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsDeviceDisableForMaxFailedAttempt:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isMDMEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2098
    iput-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsDeviceDisableForMaxFailedAttempt:Z

    .line 2100
    :cond_0
    iget-boolean p0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsDeviceDisableForMaxFailedAttempt:Z

    return p0
.end method

.method public isDndTileBlocked()Z
    .locals 1

    .line 2199
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->access$7500(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public isFaceRecognitionAllowedEvenCameraBlocked()Z
    .locals 0

    .line 2324
    iget-boolean p0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsFaceRecognitionAllowedEvenCameraBlocked:Z

    return p0
.end method

.method public isFlashlightTileBlocked()Z
    .locals 1

    .line 2211
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->access$7500(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public isLicenseExpired()Z
    .locals 0

    .line 1937
    iget-boolean p0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mLicenseExpired:Z

    return p0
.end method

.method public isLocationProviderAllowed(Ljava/lang/String;)Z
    .locals 1

    .line 2050
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mLocationProviderAllowed:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2051
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mLocationProviderAllowed:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isLocationTileBlocked()Z
    .locals 6

    .line 2166
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->access$7500(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "gps"

    .line 2167
    invoke-virtual {p0, v1}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isLocationProviderAllowed(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    const-string v4, "network"

    .line 2168
    invoke-virtual {p0, v4}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isLocationProviderAllowed(Ljava/lang/String;)Z

    move-result v4

    xor-int/2addr v4, v3

    .line 2169
    iget-boolean v5, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mGPSStateChangeAllowed:Z

    .line 2170
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {p0}, Lcom/android/systemui/KnoxStateMonitor;->access$7500(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result p0

    const/4 v1, 0x0

    if-nez v2, :cond_1

    if-nez p0, :cond_0

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v3

    :goto_1
    if-eqz p0, :cond_2

    if-nez v5, :cond_2

    move p0, v3

    goto :goto_2

    :cond_2
    move p0, v1

    :goto_2
    if-eqz v2, :cond_3

    if-nez v4, :cond_4

    :cond_3
    if-nez v0, :cond_4

    if-nez v5, :cond_5

    :cond_4
    move v1, v3

    :cond_5
    if-eqz p0, :cond_6

    move v1, v3

    :cond_6
    return v1
.end method

.method public isMDMWallpaperEnabled()Z
    .locals 0

    .line 2277
    iget-boolean p0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsLockscreenWallpaperConfigured:Z

    return p0
.end method

.method public isMobileDataTileBlocked()Z
    .locals 1

    .line 2157
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->access$7500(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mCellularDataAllowed:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isMultifactorAuthEnforced()Z
    .locals 0

    .line 2311
    iget-boolean p0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mMultiFactorAuthEnabled:Z

    return p0
.end method

.method public isNavigationBarHidden()Z
    .locals 0

    .line 2261
    iget-boolean p0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsNavigationBarHidden:Z

    return p0
.end method

.method public isPanelExpandEnabled()Z
    .locals 0

    .line 2089
    iget-boolean p0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mStatusBarExpandAllowed:Z

    return p0
.end method

.method public isPasswordVisibilityEnabled()Z
    .locals 2

    const-string v0, "KnoxStateMonitor"

    const-string v1, "isPasswordVisibilityEnabled "

    .line 2315
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2316
    iget-boolean p0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mPasswordVisibilityEnabled:Z

    return p0
.end method

.method public isRotationLockTileBlocked()Z
    .locals 1

    .line 2187
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->access$7500(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public isSoundModeTileBlocked()Z
    .locals 1

    .line 2195
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->access$7500(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public isStatusBarHidden()Z
    .locals 0

    .line 2257
    iget-boolean p0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsStatusBarHidden:Z

    return p0
.end method

.method public isSubIdLockedByAdmin()Z
    .locals 6

    .line 2282
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->access$7500(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 2283
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(Lcom/android/internal/telephony/IccCardConstants$State;)I

    move-result v0

    .line 2284
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 2285
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v1}, Lcom/android/systemui/KnoxStateMonitor;->access$7500(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v3, "telephony_subscription_service"

    .line 2286
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionManager;

    .line 2287
    invoke-virtual {v1, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2290
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v1

    :cond_0
    const/4 v0, 0x1

    if-nez v1, :cond_1

    return v0

    :cond_1
    if-eqz v1, :cond_3

    .line 2297
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mLockedIccIdList:[Ljava/lang/String;

    if-eqz p0, :cond_3

    .line 2298
    array-length v3, p0

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, p0, v4

    .line 2299
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    return v0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method public isUserMobileDataRestricted()Z
    .locals 2

    .line 2252
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mUserManager:Landroid/os/UserManager;

    .line 2253
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    const-string v1, "no_config_mobile_networks"

    .line 2252
    invoke-virtual {p0, v1, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method

.method public isUserWifiHotspotRestricted()Z
    .locals 2

    .line 2247
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mUserManager:Landroid/os/UserManager;

    .line 2248
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    const-string v1, "no_config_tethering"

    .line 2247
    invoke-virtual {p0, v1, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method

.method public isWifiHotspotTileBlocked()Z
    .locals 1

    .line 2223
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->access$7500(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mWifiTetheringAllowed:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isWifiTileBlocked()Z
    .locals 1

    .line 2227
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->access$7500(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mWifiAllowed:Z

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mWifiStateChangeAllowed:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public setAdminLock(ZZ)V
    .locals 2

    .line 1923
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAdminLock enabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "  licenseExpired:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KnoxStateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1924
    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mEnableAdminLock:Z

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mLicenseExpired:Z

    if-eq v0, p2, :cond_1

    .line 1925
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mEnableAdminLock:Z

    .line 1926
    iput-boolean p2, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mLicenseExpired:Z

    .line 1927
    iget-object p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {p1}, Lcom/android/systemui/KnoxStateMonitor;->access$000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x13a1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1928
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {p0}, Lcom/android/systemui/KnoxStateMonitor;->access$000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method public setAirplaneModeAllowed(Z)V
    .locals 0

    .line 2010
    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mAirplaneModeAllowed:Z

    return-void
.end method

.method public setApplicationNameControlEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setBluetoothAllowed(Z)V
    .locals 0

    .line 2027
    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mBluetoothAllowed:Z

    return-void
.end method

.method public setCameraAllowed(Z)V
    .locals 2

    .line 1991
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCameraAllowed( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KnoxStateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    xor-int/lit8 p1, p1, 0x1

    .line 1992
    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsCameraDisabledByMdm:Z

    return-void
.end method

.method public setCellularDataAllowed(Z)V
    .locals 0

    .line 2014
    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mCellularDataAllowed:Z

    return-void
.end method

.method public setFaceRecognitionEvenCameraBlockedAllowed(Z)V
    .locals 2

    .line 1996
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFaceRecognitionEvenCameraBlockedAllowed( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KnoxStateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1997
    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsFaceRecognitionAllowedEvenCameraBlocked:Z

    return-void
.end method

.method public setGPSStateChangeAllowed(Z)V
    .locals 0

    .line 2057
    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mGPSStateChangeAllowed:Z

    return-void
.end method

.method public setKioskModeEnabled(Z)V
    .locals 0

    .line 1959
    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsMDMKioskMode:Z

    return-void
.end method

.method public setLocationProviderAllowed(Ljava/lang/String;Z)V
    .locals 0

    .line 2046
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mLocationProviderAllowed:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setLockedIccIds([Ljava/lang/String;)V
    .locals 0

    .line 2269
    iput-object p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mLockedIccIdList:[Ljava/lang/String;

    return-void
.end method

.method public setLockscreenInvisibleOverlay(Z)V
    .locals 0

    .line 2061
    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsLockscreenInvisibleOverlayConfigured:Z

    return-void
.end method

.method public setLockscreenWallpaper(Z)V
    .locals 1

    .line 2065
    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsLockscreenWallpaperConfigured:Z

    if-eq v0, p1, :cond_0

    .line 2066
    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsLockscreenWallpaperConfigured:Z

    .line 2067
    iget-object p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {p1}, Lcom/android/systemui/KnoxStateMonitor;->access$000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x13a0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 2068
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {p0}, Lcom/android/systemui/KnoxStateMonitor;->access$000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public setMaximumFailedPasswordsForDisable(I)V
    .locals 0

    .line 1964
    iput p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mMaxNumFailedAttemptForDisable:I

    .line 1965
    invoke-virtual {p0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->updateFailedUnlockAttemptForDeviceDisabled()V

    return-void
.end method

.method public setMultifactorAuthEnabled(Z)V
    .locals 2

    .line 1981
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMultifactorAuthEnabled( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KnoxStateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1982
    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mMultiFactorAuthEnabled:Z

    return-void
.end method

.method public setNFCAllowed(Z)V
    .locals 0

    .line 2018
    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mNFCAllowed:Z

    return-void
.end method

.method public setNFCStateChangeAllowed(Z)V
    .locals 0

    .line 2032
    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mNFCStateChangeAllowed:Z

    return-void
.end method

.method public setNavigationBarHidden(Z)V
    .locals 1

    .line 1951
    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsNavigationBarHidden:Z

    if-eq v0, p1, :cond_0

    .line 1952
    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsNavigationBarHidden:Z

    .line 1953
    iget-object p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {p1}, Lcom/android/systemui/KnoxStateMonitor;->access$000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x139c

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1954
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {p0}, Lcom/android/systemui/KnoxStateMonitor;->access$000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public setPasswordLockDelay(I)V
    .locals 0

    .line 1977
    iput p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mLockDelay:I

    return-void
.end method

.method public setPasswordVisibilityEnabled(Z)V
    .locals 2

    .line 1986
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPasswordVisibilityEnabled( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KnoxStateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1987
    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mPasswordVisibilityEnabled:Z

    return-void
.end method

.method public setPwdChangeRequested(I)V
    .locals 0

    .line 1969
    iput p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mPwdChangeRequest:I

    return-void
.end method

.method public setSettingsChangeAllowed(Z)V
    .locals 0

    .line 2002
    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mSettingsChangesAllowed:Z

    return-void
.end method

.method public setStatusBarExpansionAllowed(Z)V
    .locals 0

    .line 2006
    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mStatusBarExpandAllowed:Z

    return-void
.end method

.method public setStatusBarHidden(Z)V
    .locals 1

    .line 1943
    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsStatusBarHidden:Z

    if-eq v0, p1, :cond_0

    .line 1944
    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsStatusBarHidden:Z

    .line 1945
    iget-object p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {p1}, Lcom/android/systemui/KnoxStateMonitor;->access$000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x139b

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1946
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {p0}, Lcom/android/systemui/KnoxStateMonitor;->access$000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public setWifiAllowed(Z)V
    .locals 0

    .line 2041
    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mWifiAllowed:Z

    return-void
.end method

.method public setWifiStateChangeAllowed(Z)V
    .locals 0

    .line 2037
    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mWifiStateChangeAllowed:Z

    return-void
.end method

.method public setWifiTetheringAllowed(Z)V
    .locals 0

    .line 2022
    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mWifiTetheringAllowed:Z

    return-void
.end method

.method public updateFailedUnlockAttemptForDeviceDisabled()V
    .locals 4

    .line 2121
    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isMDMEnabled()Z

    move-result v0

    const-string v1, "KnoxStateMonitor"

    if-eqz v0, :cond_1

    .line 2122
    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->getCurrentFailedAttempts()I

    move-result v0

    .line 2123
    iget v2, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mMaxNumFailedAttemptForDisable:I

    if-lt v0, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsDeviceDisableForMaxFailedAttempt:Z

    .line 2124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportFailedUnlockAttempt : maxNumFailedAttemptForDisable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mMaxNumFailedAttemptForDisable:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , curNumFailedAttempts="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDeviceDisabledForMaxFailedAttempt="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsDeviceDisableForMaxFailedAttempt:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2128
    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->mIsDeviceDisableForMaxFailedAttempt:Z

    if-eqz v0, :cond_2

    .line 2129
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->access$000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x139e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2130
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {p0}, Lcom/android/systemui/KnoxStateMonitor;->access$000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_1
    const-string p0, "MDM is not enabled..."

    .line 2133
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method
