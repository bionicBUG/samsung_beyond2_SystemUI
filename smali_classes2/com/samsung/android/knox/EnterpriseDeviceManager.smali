.class public Lcom/samsung/android/knox/EnterpriseDeviceManager;
.super Ljava/lang/Object;
.source "EnterpriseDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;,
        Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseKeyVersion;
    }
.end annotation


# static fields
.field public static final MANAGED_CONFIGURATION_PKG_LIST_ALLOWED:Ljava/util/Map;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mSync:Ljava/lang/Object;

.field private static sEnterpriseDeviceManager:Lcom/samsung/android/knox/EnterpriseDeviceManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private volatile mPasswordPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

.field private volatile mPhoneRestrictionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 182
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mSync:Ljava/lang/Object;

    .line 292
    new-instance v0, Lcom/samsung/android/knox/EnterpriseDeviceManager$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->MANAGED_CONFIGURATION_PKG_LIST_ALLOWED:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 317
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;-><init>(Landroid/content/Context;Landroid/os/Handler;ZLcom/samsung/android/knox/ContextInfo;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;ZLcom/samsung/android/knox/ContextInfo;)V
    .locals 0
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    iput-object p1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContext:Landroid/content/Context;

    .line 352
    iget-object p1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContext:Landroid/content/Context;

    const-string p2, "device_policy"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz p3, :cond_1

    .line 356
    iget p1, p4, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 357
    iget p2, p4, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const/16 p3, 0x3e8

    if-ne p1, p3, :cond_0

    .line 359
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    .line 362
    :cond_0
    new-instance p4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p4, p1, p2}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    .line 365
    :cond_1
    iput-object p4, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/os/Handler;)V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    const/4 v0, 0x0

    .line 323
    invoke-direct {p0, p1, p3, v0, p2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;-><init>(Landroid/content/Context;Landroid/os/Handler;ZLcom/samsung/android/knox/ContextInfo;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 373
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 374
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;->sEnterpriseDeviceManager:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v1, :cond_0

    .line 375
    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;->sEnterpriseDeviceManager:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 377
    :cond_0
    sget-object p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->sEnterpriseDeviceManager:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 378
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public getPasswordPolicy()Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;
    .locals 3
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 2215
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mPasswordPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    if-nez v0, :cond_1

    .line 2217
    monitor-enter p0

    .line 2218
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mPasswordPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    if-nez v0, :cond_0

    .line 2220
    new-instance v0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget-object v2, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mPasswordPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    .line 2222
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getPhoneRestrictionPolicy()Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    const/4 v0, 0x0

    .line 2444
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getPhoneRestrictionPolicy(Ljava/lang/String;)Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;

    move-result-object p0

    return-object p0
.end method

.method public getPhoneRestrictionPolicy(Ljava/lang/String;)Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    if-nez p1, :cond_0

    const-string p1, ""

    .line 2458
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mPhoneRestrictionMap:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 2459
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mPhoneRestrictionMap:Ljava/util/Map;

    .line 2462
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mPhoneRestrictionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2463
    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mPhoneRestrictionMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;

    goto :goto_0

    .line 2465
    :cond_2
    new-instance v0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 2466
    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mPhoneRestrictionMap:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;
    .locals 3
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 2135
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    if-nez v0, :cond_1

    .line 2137
    monitor-enter p0

    .line 2138
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    if-nez v0, :cond_0

    .line 2140
    new-instance v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget-object v2, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    .line 2142
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method
