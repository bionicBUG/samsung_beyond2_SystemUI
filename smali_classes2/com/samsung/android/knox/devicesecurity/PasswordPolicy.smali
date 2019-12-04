.class public Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;
.super Ljava/lang/Object;
.source "PasswordPolicy.java"


# static fields
.field private static TAG:Ljava/lang/String; = "PasswordPolicy"

.field public static final enforcePwdExceptions:[Ljava/lang/String;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mGenericSSOService:Lcom/samsung/android/knox/sso/common/IGenericSSO;

.field private mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 60

    const-string v0, "com.android.settings.SubSettings"

    const-string v1, "com.android.settings.password.ChooseLockPassword"

    const-string v2, "com.android.settings.password.ChooseLockPattern"

    const-string v3, "com.samsung.android.settings.ChooseLockEnterpriseIdentity"

    const-string v4, "com.sec.android.service.singlesignon.activity.KerberosLoginActivity"

    const-string v5, "com.sec.android.service.singlesignon.activity.ChangePasswordActivity"

    const-string v6, "com.google.android.gsf.update.SystemUpdateInstallDialog"

    const-string v7, "com.google.android.gsf.update.SystemUpdateDownloadDialog"

    const-string v8, "com.android.phone.EmergencyDialer"

    const-string v9, "com.android.phone.OutgoingCallBroadcaster"

    const-string v10, "com.android.phone.EmergencyOutgoingCallBroadcaster"

    const-string v11, "com.android.phone.InCallScreen"

    const-string v12, "com.android.internal.policy.impl.LockScreen"

    const-string v13, "com.android.internal.policy.impl.PatternUnlockScreen"

    const-string v14, "com.android.internal.policy.impl.PasswordUnlockScreen"

    const-string v15, "com.android.incallui.InCallActivity"

    const-string v16, "com.android.server.telecom.EmergencyCallActivity"

    const-string v17, "com.samsung.android.app.telephonyui.emergencydialer.view.EmergencyDialerActivity"

    const-string v18, "com.android.incallui.SecInCallActivity"

    const-string v19, "com.android.incallui.call.InCallActivity"

    const-string v20, "com.samsung.phone.EmergencyDialer"

    const-string v21, "com.skt.prod.phone.activities.phone.OutgoingCallBroadcaster"

    const-string v22, "com.skt.prod.phone.activities.phone.TPhoneActivity"

    const-string v23, "com.sec.android.inputmethod.implement.setting.OnBoardingSettingsActivity"

    const-string v24, "com.android.settings.password.ChooseLockGeneric"

    const-string v25, "com.android.settings.password.ChooseLockGeneric$InternalActivity"

    const-string v26, "com.samsung.android.settings.knox.KnoxChooseLockTwoFactor"

    const-string v27, "com.android.settings.Settings$RegisterIrisSettingsActivity"

    const-string v28, "com.samsung.android.server.iris.enroll.IrisEnrollActivity"

    const-string v29, "com.samsung.android.server.iris.guide.IrisGuideActivity"

    const-string v30, "com.samsung.android.settings.iris.IrisLockSettings"

    const-string v31, "com.samsung.android.settings.iris.UseIrisLockSettings"

    const-string v32, "com.samsung.android.settings.biometrics.fingerprint.FingerprintLockSettings"

    const-string v33, "com.samsung.android.settings.biometrics.fingerprint.RegisterFingerprint"

    const-string v34, "com.samsung.android.biometrics.app.setting.fingerprint.enroll.FingerprintEnrollActivity"

    const-string v35, "com.samsung.android.settings.biometrics.fingerprint.UseFingerprintLockSettings"

    const-string v36, "com.android.settings.password.ConfirmLockPassword$InternalActivity"

    const-string v37, "com.android.settings.password.ConfirmLockPattern$InternalActivity"

    const-string v38, "com.samsung.android.settings.notification.SecRedactionInterstitial"

    const-string v39, "com.samsung.android.settings.biometrics.BiometricsAuthenticationActivity"

    const-string v40, "com.samsung.android.settings.biometrics.BiometricsSelectBackupPassword"

    const-string v41, "com.samsung.android.settings.biometrics.BiometricsBackupPassword"

    const-string v42, "com.osp.app.signin.AccountView"

    const-string v43, "com.osp.app.signin.ui.AccountHelpPreference"

    const-string v44, "com.osp.app.signin.ui.WebContentView"

    const-string v45, "com.osp.app.signin.ui.AccountSetupCompleteView"

    const-string v46, "com.osp.app.signin.ui.UserValidateCheck"

    const-string v47, "com.samsung.android.biometrics.service.enroll.IntelligentScanEnrollActivity"

    const-string v48, "com.samsung.android.settings.biometrics.BiometricsLockSetup"

    const-string v49, "com.samsung.android.settings.biometrics.BiometricsDisclaimerActivity"

    const-string v50, "com.samsung.android.settings.biometrics.UseBiometricsLockSettingsGeneric"

    const-string v51, "com.samsung.android.settings.face.FaceFasterRecognition"

    const-string v52, "com.samsung.android.settings.biometrics.face.FaceLockSettings"

    const-string v53, "com.samsung.android.biometrics.app.setting.face.FaceEnrollActivity"

    const-string v54, "com.samsung.android.settings.smartscan.SmartScanLockSettings"

    const-string v55, "com.samsung.android.settings.smartscan.SmartScanIntroduce"

    const-string v56, "com.android.settings.enterprise.ActionDisabledByAdminDialog"

    const-string v57, "com.samsung.android.knox.containeragent.knoxkeyguard.KeyguardUserSetupActivity"

    const-string v58, "com.samsung.android.knox.containeragent.knoxkeyguard.LockdownActivity"

    const-string v59, "com.android.settings.password.SetNewPasswordActivity"

    .line 179
    filled-new-array/range {v0 .. v59}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->enforcePwdExceptions:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mGenericSSOService:Lcom/samsung/android/knox/sso/common/IGenericSSO;

    .line 246
    iput-object p2, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContext:Landroid/content/Context;

    .line 247
    iput-object p1, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 248
    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    invoke-direct {v1, p2, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;-><init>(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-void
.end method

.method private getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    if-nez v0, :cond_0

    const-string v0, "password_policy"

    .line 254
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 253
    invoke-static {v0}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    .line 256
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    return-object p0
.end method


# virtual methods
.method public isExternalStorageForFailedPasswordsWipeExcluded()Z
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1456
    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1458
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->isExternalStorageForFailedPasswordsWipeExcluded(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1460
    sget-object v0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with password policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
