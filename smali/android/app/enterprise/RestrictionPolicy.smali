.class public Landroid/app/enterprise/RestrictionPolicy;
.super Ljava/lang/Object;
.source "RestrictionPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/enterprise/RestrictionPolicy$USBInterface;
    }
.end annotation


# static fields
.field public static TASK_MANAGER_PKGNAME:Ljava/lang/String;

.field public static final settingsExceptions:[Ljava/lang/String;


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

    const-string v9, "com.android.settings.ChooseLockGeneric"

    const-string v10, "com.android.settings.ChooseLockMotion"

    const-string v11, "com.android.settings.ChooseLockPassword"

    const-string v12, "com.android.settings.ChooseLockPattern"

    const-string v13, "com.android.settings.ConfirmLockPassword"

    const-string v14, "com.android.settings.ConfirmLockPattern"

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

    .line 102
    filled-new-array/range {v0 .. v30}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/enterprise/RestrictionPolicy;->settingsExceptions:[Ljava/lang/String;

    const-string v0, "com.sec.android.app.controlpanel"

    .line 141
    sput-object v0, Landroid/app/enterprise/RestrictionPolicy;->TASK_MANAGER_PKGNAME:Ljava/lang/String;

    return-void
.end method
