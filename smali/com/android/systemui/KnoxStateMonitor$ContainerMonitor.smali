.class Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;
.super Ljava/lang/Object;
.source "KnoxStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/KnoxStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContainerMonitor"
.end annotation


# instance fields
.field private final ACTION_RCP_POLICY_CHANGED:Ljava/lang/String;

.field private final ACTION_SECURE_FOLDER_SETUP_COMPLETE:Ljava/lang/String;

.field private final ANDROID_NAME:Ljava/lang/String;

.field private final CMAIL_NAME:Ljava/lang/String;

.field private final EFOTA_NAME:Ljava/lang/String;

.field private final EMAIL_COMPOSER_NAME:Ljava/lang/String;

.field private final EMAIL_NAME:Ljava/lang/String;

.field private final EMAIL_PROVIDER_NAME:Ljava/lang/String;

.field private final EMAIL_SYNC_NAME:Ljava/lang/String;

.field private final EMAIL_UI_NAME:Ljava/lang/String;

.field private final KNOXCORE_NAME:Ljava/lang/String;

.field private final KNOX_DEBUG:Z

.field private final KNOX_EXPORT_DATA:I

.field private final KNOX_IMPORT_DATA:I

.field private final KNOX_SANITIZING:I

.field private final KNOX_SANITIZING_LOCKSCREEN:I

.field private final KNOX_SWITCHER_NAME:Ljava/lang/String;

.field private final MESSAGING_NAME:Ljava/lang/String;

.field private final MMS_NAME:Ljava/lang/String;

.field private final PHONE_NAME:Ljava/lang/String;

.field private final SERVER_TELECOM_NAME:Ljava/lang/String;

.field private final SETTINGSRECEIVER_NAME:Ljava/lang/String;

.field private final SETTINGS_NAME:Ljava/lang/String;

.field private final SYSTEMUI_NAME:Ljava/lang/String;

.field private final TELEPHONYUI_NAME:Ljava/lang/String;

.field private final USERID:Ljava/lang/String;

.field private final VVM_NAME:Ljava/lang/String;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mContainerStateMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/knox/SemPersonaState;",
            ">;"
        }
    .end annotation
.end field

.field private final mDPMPolicyReceiver:Landroid/content/BroadcastReceiver;

.field private final mExportDataPolicyForUserCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mImportDataPolicyForUserCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInCallUIPackageName:Ljava/lang/String;

.field private mIsContainerKioskMode:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private final mPersonaLaunchReceiver:Landroid/content/BroadcastReceiver;

.field private final mPersonaRemovalStartedReceiver:Landroid/content/BroadcastReceiver;

.field private mPersonas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPm:Lcom/samsung/android/knox/SemPersonaManager;

.field private final mRcpPolicyReceiver:Landroid/content/BroadcastReceiver;

.field private final mSanitizeDPMPolicyForUserCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSanitizeDataPolicyForUserCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSanitizeLockScreenDataPolicyForUserCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mStateReceiver:Landroid/os/ContainerStateReceiver;

.field private mUserManager:Landroid/os/UserManager;

.field final synthetic this$0:Lcom/android/systemui/KnoxStateMonitor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/KnoxStateMonitor;)V
    .locals 2

    .line 1205
    iput-object p1, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ro.build.type"

    .line 1156
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->KNOX_DEBUG:Z

    const/4 v0, 0x0

    .line 1160
    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    .line 1161
    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mPersonas:Ljava/util/List;

    const/4 v0, 0x0

    .line 1162
    iput-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mIsContainerKioskMode:Z

    const-string v0, "samsung.knox.intent.action.RCP_POLICY_CHANGED"

    .line 1164
    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->ACTION_RCP_POLICY_CHANGED:Ljava/lang/String;

    const-string v0, "com.samsung.knox.securefolder.SETUP_COMPLETE"

    .line 1165
    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->ACTION_SECURE_FOLDER_SETUP_COMPLETE:Ljava/lang/String;

    const-string/jumbo v0, "userId"

    .line 1166
    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->USERID:Ljava/lang/String;

    const-string v0, "com.samsung.android.email.provider"

    .line 1168
    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->EMAIL_PROVIDER_NAME:Ljava/lang/String;

    const-string v0, "com.samsung.android.email.sync"

    .line 1169
    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->EMAIL_SYNC_NAME:Ljava/lang/String;

    const-string v0, "com.samsung.android.email.ui"

    .line 1170
    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->EMAIL_UI_NAME:Ljava/lang/String;

    const-string v0, "com.samsung.android.email.composer"

    .line 1171
    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->EMAIL_COMPOSER_NAME:Ljava/lang/String;

    const-string v0, "com.android.email"

    .line 1172
    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->EMAIL_NAME:Ljava/lang/String;

    const-string v0, "com.android.mms"

    .line 1173
    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->MMS_NAME:Ljava/lang/String;

    const-string v0, "com.samsung.android.messaging"

    .line 1174
    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->MESSAGING_NAME:Ljava/lang/String;

    const-string v0, "com.kddi.android.cmail"

    .line 1175
    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->CMAIL_NAME:Ljava/lang/String;

    const-string v0, "com.android.server.telecom"

    .line 1176
    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->SERVER_TELECOM_NAME:Ljava/lang/String;

    const-string v0, "com.samsung.android.app.telephonyui"

    .line 1177
    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->TELEPHONYUI_NAME:Ljava/lang/String;

    const-string v0, "com.samsung.android.SettingsReceiver"

    .line 1178
    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->SETTINGSRECEIVER_NAME:Ljava/lang/String;

    const-string v0, "com.android.systemui"

    .line 1179
    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->SYSTEMUI_NAME:Ljava/lang/String;

    const-string v0, "com.android.settings"

    .line 1180
    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->SETTINGS_NAME:Ljava/lang/String;

    const-string v0, "com.android.phone"

    .line 1181
    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->PHONE_NAME:Ljava/lang/String;

    const-string v0, "android"

    .line 1182
    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->ANDROID_NAME:Ljava/lang/String;

    const-string v0, "com.sec.knox.switcher"

    .line 1183
    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->KNOX_SWITCHER_NAME:Ljava/lang/String;

    const-string v0, "com.samsung.vvm"

    .line 1184
    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->VVM_NAME:Ljava/lang/String;

    const-string v0, "com.wssyncmldm"

    .line 1185
    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->EFOTA_NAME:Ljava/lang/String;

    const-string v0, "com.samsung.android.knox.containercore"

    .line 1186
    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->KNOXCORE_NAME:Ljava/lang/String;

    .line 1188
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mSanitizeDPMPolicyForUserCache:Landroid/util/SparseArray;

    .line 1189
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mSanitizeDataPolicyForUserCache:Landroid/util/SparseArray;

    .line 1190
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mImportDataPolicyForUserCache:Landroid/util/SparseArray;

    .line 1191
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mExportDataPolicyForUserCache:Landroid/util/SparseArray;

    .line 1192
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mContainerStateMap:Ljava/util/HashMap;

    .line 1194
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mSanitizeLockScreenDataPolicyForUserCache:Landroid/util/SparseArray;

    const/16 v0, 0x10

    .line 1195
    iput v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->KNOX_SANITIZING_LOCKSCREEN:I

    const/4 v0, 0x1

    .line 1198
    iput v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->KNOX_IMPORT_DATA:I

    const/4 v0, 0x2

    .line 1199
    iput v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->KNOX_EXPORT_DATA:I

    const/4 v0, 0x4

    .line 1200
    iput v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->KNOX_SANITIZING:I

    .line 1306
    new-instance v0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$1;-><init>(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)V

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1333
    new-instance v0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$2;-><init>(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)V

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mPersonaRemovalStartedReceiver:Landroid/content/BroadcastReceiver;

    .line 1349
    new-instance v0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$3;-><init>(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)V

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mPersonaLaunchReceiver:Landroid/content/BroadcastReceiver;

    .line 1371
    new-instance v0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$4;-><init>(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)V

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mRcpPolicyReceiver:Landroid/content/BroadcastReceiver;

    .line 1425
    new-instance v0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$5;-><init>(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)V

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mDPMPolicyReceiver:Landroid/content/BroadcastReceiver;

    .line 1806
    new-instance v0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$6;-><init>(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)V

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mStateReceiver:Landroid/os/ContainerStateReceiver;

    .line 1206
    invoke-static {p1}, Lcom/android/systemui/KnoxStateMonitor;->access$7500(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 1207
    invoke-static {p1}, Lcom/android/systemui/KnoxStateMonitor;->access$7500(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mUserManager:Landroid/os/UserManager;

    return-void
.end method

.method static synthetic access$4900(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)Z
    .locals 0

    .line 1155
    iget-boolean p0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mIsContainerKioskMode:Z

    return p0
.end method

.method static synthetic access$4902(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;Z)Z
    .locals 0

    .line 1155
    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mIsContainerKioskMode:Z

    return p1
.end method

.method static synthetic access$7600(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;I)Z
    .locals 0

    .line 1155
    invoke-direct {p0, p1}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->isPersona(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$7702(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1155
    iput-object p1, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mPersonas:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$7800(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)Landroid/os/UserManager;
    .locals 0

    .line 1155
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mUserManager:Landroid/os/UserManager;

    return-object p0
.end method

.method static synthetic access$7900(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)Z
    .locals 0

    .line 1155
    iget-boolean p0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->KNOX_DEBUG:Z

    return p0
.end method

.method static synthetic access$8000(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;I)V
    .locals 0

    .line 1155
    invoke-direct {p0, p1}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->setContainerKioskMode(I)V

    return-void
.end method

.method static synthetic access$8100(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)Landroid/util/SparseArray;
    .locals 0

    .line 1155
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mSanitizeDataPolicyForUserCache:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$8200(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)Landroid/util/SparseArray;
    .locals 0

    .line 1155
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mSanitizeLockScreenDataPolicyForUserCache:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$8300(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)Landroid/util/SparseArray;
    .locals 0

    .line 1155
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mExportDataPolicyForUserCache:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$8400(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)Landroid/util/SparseArray;
    .locals 0

    .line 1155
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mImportDataPolicyForUserCache:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$8500(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)Landroid/util/SparseArray;
    .locals 0

    .line 1155
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mSanitizeDPMPolicyForUserCache:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$8600(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;ILcom/samsung/android/knox/SemPersonaState;)V
    .locals 0

    .line 1155
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->notifyContainerStateChange(ILcom/samsung/android/knox/SemPersonaState;)V

    return-void
.end method

.method static synthetic access$8700(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)Z
    .locals 0

    .line 1155
    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->isContainerKioskMode()Z

    move-result p0

    return p0
.end method

.method static synthetic access$8800(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;I)Z
    .locals 0

    .line 1155
    invoke-direct {p0, p1}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->knoxContainerInSuperLockMode(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$9100(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;I)Ljava/lang/String;
    .locals 0

    .line 1155
    invoke-direct {p0, p1}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->getKnoxName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getKnoxName(I)Ljava/lang/String;
    .locals 1

    .line 1590
    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->setPersonalManager()V

    .line 1591
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {p0}, Lcom/android/systemui/KnoxStateMonitor;->access$7500(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/samsung/android/knox/SemPersonaManager;->getContainerName(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getPolicy(ILjava/lang/String;I)Z
    .locals 7

    .line 1690
    invoke-direct {p0, p1}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->isPersona(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    if-eq p3, v1, :cond_4

    const/4 v2, 0x2

    if-eq p3, v2, :cond_3

    const/4 v2, 0x4

    if-eq p3, v2, :cond_2

    const/16 v2, 0x10

    if-eq p3, v2, :cond_1

    return v0

    .line 1709
    :cond_1
    iget-object p3, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mSanitizeLockScreenDataPolicyForUserCache:Landroid/util/SparseArray;

    goto :goto_0

    .line 1699
    :cond_2
    iget-object p3, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mSanitizeDataPolicyForUserCache:Landroid/util/SparseArray;

    goto :goto_0

    .line 1705
    :cond_3
    iget-object p3, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mExportDataPolicyForUserCache:Landroid/util/SparseArray;

    goto :goto_0

    .line 1702
    :cond_4
    iget-object p3, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mImportDataPolicyForUserCache:Landroid/util/SparseArray;

    .line 1716
    :goto_0
    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "KnoxStateMonitor"

    const-string/jumbo v4, "true"

    if-nez v2, :cond_7

    .line 1719
    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->setPersonalManager()V

    .line 1720
    iget-object v5, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    const-string v6, "persona_policy"

    invoke-virtual {v5, v6}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PersonaPolicyManager;

    if-nez v5, :cond_5

    return v0

    :cond_5
    const-string v6, "Notifications"

    .line 1724
    invoke-virtual {v5, p1, v6, p2}, Landroid/os/PersonaPolicyManager;->getRCPDataPolicyForUser(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1728
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "false"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1729
    :cond_6
    invoke-virtual {p3, p1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1732
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPolicy: threw an exception: "

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v3, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1736
    :cond_7
    :goto_1
    iget-boolean p0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->KNOX_DEBUG:Z

    if-eqz p0, :cond_8

    .line 1737
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getPolicy: policyProperty:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " policy value returned = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1740
    :cond_8
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    return v1

    :cond_9
    return v0
.end method

.method private initInternal()V
    .locals 4

    const-string v0, "KnoxStateMonitor"

    const-string v1, "initialized"

    .line 1219
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->access$7500(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 1222
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 1223
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 1225
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    if-nez v2, :cond_1

    goto :goto_0

    .line 1226
    :cond_1
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1227
    iget v2, v1, Landroid/content/pm/UserInfo;->attributes:I

    and-int/lit8 v3, v2, 0x8

    if-lez v3, :cond_2

    .line 1228
    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mContainerStateMap:Ljava/util/HashMap;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/knox/SemPersonaState;->ADMIN_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    and-int/lit8 v3, v2, 0x10

    if-lez v3, :cond_3

    .line 1231
    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mContainerStateMap:Ljava/util/HashMap;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/knox/SemPersonaState;->LICENSE_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    and-int/lit8 v2, v2, 0x4

    if-lez v2, :cond_4

    .line 1234
    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mContainerStateMap:Ljava/util/HashMap;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/knox/SemPersonaState;->TIMA_COMPROMISED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1236
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mKeyguardManager:Landroid/app/KeyguardManager;

    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v3}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mKeyguardManager:Landroid/app/KeyguardManager;

    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v3}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1237
    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mContainerStateMap:Ljava/util/HashMap;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/knox/SemPersonaState;->ACTIVE:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1239
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mKeyguardManager:Landroid/app/KeyguardManager;

    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v3}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1240
    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mContainerStateMap:Ljava/util/HashMap;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/knox/SemPersonaState;->LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1245
    :cond_6
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_VOICECALL_CONFIG_INCALLUI_PACKAGE_NAME"

    .line 1246
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mInCallUIPackageName:Ljava/lang/String;

    .line 1249
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->access$7500(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mStateReceiver:Landroid/os/ContainerStateReceiver;

    invoke-static {v0, p0}, Landroid/os/ContainerStateReceiver;->register(Landroid/content/Context;Landroid/os/ContainerStateReceiver;)V

    return-void
.end method

.method private isContainerKioskMode()Z
    .locals 0

    .line 1507
    iget-boolean p0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mIsContainerKioskMode:Z

    return p0
.end method

.method private isNotificationSanitizedByDPM(I)Z
    .locals 5

    .line 1595
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mSanitizeDPMPolicyForUserCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "TRUE"

    if-nez v0, :cond_2

    .line 1598
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->access$7500(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v0

    const-string v4, "device_policy"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_1

    const/4 v4, 0x0

    .line 1600
    invoke-virtual {v0, v4, p1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v0

    and-int/lit8 v4, v0, 0x8

    if-nez v4, :cond_0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 1603
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mSanitizeDPMPolicyForUserCache:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return v1

    .line 1607
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mSanitizeDPMPolicyForUserCache:Landroid/util/SparseArray;

    const-string v0, "FALSE"

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return v2

    .line 1611
    :cond_2
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v1

    :cond_3
    return v2
.end method

.method private isPersona(I)Z
    .locals 1

    if-nez p1, :cond_1

    .line 1490
    iget-boolean p0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->KNOX_DEBUG:Z

    if-eqz p0, :cond_0

    .line 1491
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isPersona for user "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is false"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KnoxStateMonitor"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 1495
    :cond_1
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result p0

    return p0
.end method

.method private isPersonaInKioskMode(I)Z
    .locals 0

    .line 1499
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1500
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isKioskModeEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isSanitizedByPolicy(ZZZZ)Z
    .locals 0

    const/4 p0, 0x1

    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    return p0

    :cond_0
    if-eqz p4, :cond_1

    if-eqz p1, :cond_1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private isSanitizedSamsungEmail(Ljava/lang/String;ZZ)Z
    .locals 0

    const-string p0, "com.samsung.android.email.provider"

    .line 1675
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "com.samsung.android.email.sync"

    .line 1676
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "com.samsung.android.email.ui"

    .line 1677
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "com.samsung.android.email.composer"

    .line 1678
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "com.android.email"

    .line 1679
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    if-nez p3, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private knoxContainerInLockMode(I)Z
    .locals 4

    const-string v0, "KnoxStateMonitor"

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 1549
    iget-boolean p0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->KNOX_DEBUG:Z

    if-eqz p0, :cond_0

    .line 1550
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get KnoxInLockMode for user "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is false"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1

    .line 1556
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mContainerStateMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/SemPersonaState;

    if-eqz v2, :cond_2

    .line 1557
    sget-object v3, Lcom/samsung/android/knox/SemPersonaState;->LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    if-ne v2, v3, :cond_2

    const/4 v1, 0x1

    .line 1561
    :cond_2
    iget-boolean p0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->KNOX_DEBUG:Z

    if-eqz p0, :cond_3

    .line 1562
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get KnoxInLockMode for container "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v1
.end method

.method private knoxContainerInSuperLockMode(I)Z
    .locals 3

    .line 1533
    invoke-direct {p0, p1}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->isPersona(I)Z

    move-result v0

    const-string v1, "KnoxStateMonitor"

    if-nez v0, :cond_1

    .line 1534
    iget-boolean p0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->KNOX_DEBUG:Z

    if-eqz p0, :cond_0

    .line 1535
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "get knoxInSuperLockMode for user "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is false"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 1539
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1540
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isSuperLocked()Z

    move-result v0

    .line 1541
    iget-boolean p0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->KNOX_DEBUG:Z

    if-eqz p0, :cond_2

    .line 1542
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get knoxInSuperLockMode for container "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v0
.end method

.method private notifyContainerStateChange(ILcom/samsung/android/knox/SemPersonaState;)V
    .locals 6

    .line 1448
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mContainerStateMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaState;

    if-nez v0, :cond_0

    .line 1450
    sget-object v0, Lcom/samsung/android/knox/SemPersonaState;->INVALID:Lcom/samsung/android/knox/SemPersonaState;

    :cond_0
    if-ne p2, v0, :cond_1

    return-void

    .line 1455
    :cond_1
    sget-object v0, Lcom/android/systemui/KnoxStateMonitor$3;->$SwitchMap$com$samsung$android$knox$SemPersonaState:[I

    invoke-virtual {p2}, Lcom/samsung/android/knox/SemPersonaState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const-string v2, "notification state for container "

    const-string v3, "KnoxStateMonitor"

    const/16 v4, 0x138f

    if-eq v0, v1, :cond_7

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    const/4 v1, 0x3

    if-eq v0, v1, :cond_7

    const/4 v1, 0x4

    const-string v5, " is locked"

    if-eq v0, v1, :cond_5

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    .line 1478
    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->KNOX_DEBUG:Z

    if-eqz v0, :cond_2

    .line 1479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "default state for container "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->access$000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1472
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->KNOX_DEBUG:Z

    if-eqz v0, :cond_4

    .line 1473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is active"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->access$000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1466
    :cond_5
    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->KNOX_DEBUG:Z

    if-eqz v0, :cond_6

    .line 1467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->access$000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1460
    :cond_7
    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->KNOX_DEBUG:Z

    if-eqz v0, :cond_8

    .line 1461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is superlocked"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->access$000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1484
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mContainerStateMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private registerCallback()V
    .locals 0

    return-void
.end method

.method private registerReceivers()V
    .locals 11

    const-string v0, "KnoxStateMonitor"

    .line 1258
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.MANAGED_PROFILE_ADDED"

    .line 1259
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.samsung.knox.securefolder.SETUP_COMPLETE"

    .line 1260
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1261
    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v2}, Lcom/android/systemui/KnoxStateMonitor;->access$7500(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1263
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.sec.knox.container.action.launchinfo"

    .line 1264
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1265
    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v2}, Lcom/android/systemui/KnoxStateMonitor;->access$7500(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mPersonaLaunchReceiver:Landroid/content/BroadcastReceiver;

    const/4 v4, 0x0

    const-string v5, "com.samsung.container.LAUNCH_INFO"

    invoke-virtual {v2, v3, v1, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1269
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "samsung.knox.intent.action.RCP_POLICY_CHANGED"

    .line 1270
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1271
    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v2}, Lcom/android/systemui/KnoxStateMonitor;->access$7500(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mRcpPolicyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1273
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    .line 1274
    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1275
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v1}, Lcom/android/systemui/KnoxStateMonitor;->access$7500(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mDPMPolicyReceiver:Landroid/content/BroadcastReceiver;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1278
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mUserManager:Landroid/os/UserManager;

    if-eqz v1, :cond_0

    .line 1279
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mUserManager:Landroid/os/UserManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mPersonas:Ljava/util/List;

    .line 1282
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mPersonas:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 1283
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mPersonas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 1284
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1285
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v3}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->setContainerKioskMode(I)V

    .line 1286
    iget-boolean v3, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->KNOX_DEBUG:Z

    if-eqz v3, :cond_1

    .line 1287
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add container observer= for userId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " No. of users="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mPersonas:Ljava/util/List;

    .line 1289
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1287
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1295
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start: threw an exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1299
    :cond_2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sec.knox.container.action.containerremovalstarted"

    .line 1300
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1301
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v1}, Lcom/android/systemui/KnoxStateMonitor;->access$7500(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mPersonaRemovalStartedReceiver:Landroid/content/BroadcastReceiver;

    const-string v2, "com.samsung.container.OBSERVER"

    invoke-virtual {v1, p0, v0, v2, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private setContainerKioskMode(I)V
    .locals 1

    .line 1524
    invoke-direct {p0, p1}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->isPersonaInKioskMode(I)Z

    move-result p1

    .line 1525
    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mIsContainerKioskMode:Z

    if-eq v0, p1, :cond_0

    .line 1526
    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mIsContainerKioskMode:Z

    .line 1527
    iget-object p1, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {p1}, Lcom/android/systemui/KnoxStateMonitor;->access$000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x139d

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1528
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {p0}, Lcom/android/systemui/KnoxStateMonitor;->access$000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method private setPersonalManager()V
    .locals 2

    .line 1584
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    if-nez v0, :cond_0

    .line 1585
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->access$7500(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    :cond_0
    return-void
.end method


# virtual methods
.method public filterOutForKnoxContainer(ILjava/lang/String;Z)Z
    .locals 7

    .line 1762
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mInCallUIPackageName:Ljava/lang/String;

    .line 1766
    iget-boolean v1, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mIsContainerKioskMode:Z

    const-string v2, "com.kddi.android.cmail"

    const-string v3, "com.samsung.android.messaging"

    const-string v4, "com.android.mms"

    const/4 v5, 0x1

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    .line 1768
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.server.telecom"

    .line 1769
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.samsung.android.app.telephonyui"

    .line 1770
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.samsung.android.SettingsReceiver"

    .line 1771
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android"

    .line 1772
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.systemui"

    .line 1773
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1774
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.settings"

    .line 1775
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.phone"

    .line 1776
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.samsung.vvm"

    .line 1777
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.wssyncmldm"

    .line 1778
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.samsung.android.knox.containercore"

    .line 1779
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return v5

    .line 1782
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mIsContainerKioskMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 1784
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mPersonas:Ljava/util/List;

    const/4 v6, -0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1785
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mPersonas:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    goto :goto_0

    :cond_1
    move v0, v6

    :goto_0
    if-eq v0, v6, :cond_4

    if-nez p1, :cond_4

    .line 1789
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1790
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->knoxContainerInSuperLockMode(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1791
    iget-boolean p0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->KNOX_DEBUG:Z

    if-eqz p0, :cond_3

    const-string p0, "KnoxStateMonitor"

    const-string p1, "----- filterOutForKnoxContainer:  Skipping com.android.mms notif for COM + ADMIN_LOCKED case"

    .line 1792
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v5

    :cond_4
    if-eqz p3, :cond_5

    if-eqz p2, :cond_5

    const-string p0, "com.sec.knox.switcher"

    .line 1801
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    return v5

    :cond_5
    return v1
.end method

.method public init()V
    .locals 1

    .line 1211
    invoke-static {}, Lcom/android/systemui/Rune;->isTesting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1212
    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->initInternal()V

    .line 1213
    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->registerCallback()V

    .line 1214
    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->registerReceivers()V

    :cond_0
    return-void
.end method

.method public isKnoxNotificationSanitizeNeeded(IILjava/lang/String;ZZ)Z
    .locals 6

    const/4 p2, 0x0

    if-eqz p3, :cond_0

    const-string v0, "com.samsung.knox.knoxtrustagent"

    .line 1621
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p2

    :cond_0
    const/4 v0, 0x4

    const-string v1, "knox-sanitize-data"

    .line 1625
    invoke-direct {p0, p1, v1, v0}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->getPolicy(ILjava/lang/String;I)Z

    move-result v0

    const/16 v1, 0x10

    const-string v2, "knox-sanitize-data-lockscreen"

    .line 1626
    invoke-direct {p0, p1, v2, v1}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->getPolicy(ILjava/lang/String;I)Z

    move-result v1

    .line 1627
    invoke-direct {p0, p1}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->knoxContainerInLockMode(I)Z

    move-result v2

    .line 1630
    invoke-direct {p0, p1}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->isNotificationSanitizedByDPM(I)Z

    move-result p1

    const/4 v3, 0x1

    const-string v4, "KnoxStateMonitor"

    if-eqz p1, :cond_1

    const-string p1, "isKnoxNotificationSanitizeNeeded :: isNotificationSanitizedByDPM : true"

    .line 1631
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    move v1, v0

    .line 1636
    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->KNOX_DEBUG:Z

    if-eqz p1, :cond_2

    .line 1637
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isKnoxNotificationSanitizeNeeded :: policy "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " policy_lockscreen "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " isContainerLocked "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1640
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isKnoxNotificationSanitizeNeeded :: isRemoteViewProvided "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p4, " isLockscreenPublicMode "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1646
    :cond_2
    invoke-direct {p0, p5, v2, v0, v1}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->isSanitizedByPolicy(ZZZZ)Z

    move-result p1

    if-nez p1, :cond_4

    .line 1647
    invoke-direct {p0, p3, p5, v2}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->isSanitizedSamsungEmail(Ljava/lang/String;ZZ)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    return p2

    :cond_4
    :goto_0
    return v3
.end method

.method public isLockScreenDisabledbyKNOX()Z
    .locals 0

    .line 1576
    iget-boolean p0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mIsContainerKioskMode:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isSkipShowingNotificationForHeadsUp(Ljava/lang/String;)Z
    .locals 2

    .line 1748
    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mIsContainerKioskMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mPersonas:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1749
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mPersonas:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v0}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->knoxContainerInSuperLockMode(I)Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    const-string p0, "com.android.mms"

    .line 1751
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "com.samsung.android.messaging"

    .line 1752
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "com.kddi.android.cmail"

    .line 1753
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method
