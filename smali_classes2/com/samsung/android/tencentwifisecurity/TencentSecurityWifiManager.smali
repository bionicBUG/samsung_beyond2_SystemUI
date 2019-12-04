.class public Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;
.super Ljava/lang/Object;
.source "TencentSecurityWifiManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$WifiSecurityObserver;,
        Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$SecurityApInfo;
    }
.end annotation


# static fields
.field private static final CONTENT_URI:Landroid/net/Uri;

.field private static final DBG:Z

.field private static connApBssid:Ljava/lang/String;

.field private static connApSecurity:I

.field private static connApSsid:Ljava/lang/String;

.field private static mInManagerNetwork:Z

.field private static mSecurityAps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$SecurityApInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final projection:[Ljava/lang/String;

.field private static twsEnable:Z


# instance fields
.field private conn:Landroid/content/ServiceConnection;

.field private friendContext:Landroid/content/Context;

.field private mEvalutionCallback:Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionCallback;

.field private observer:Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$WifiSecurityObserver;

.field private resolver:Landroid/content/ContentResolver;

.field private showTwsDialog:Z

.field private wifiEvalutionService:Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionService;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 47
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->DBG:Z

    const-string v0, "content://com.samsung.tencentwifi.security.provider/item/1"

    .line 60
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "_id"

    const-string v2, "_dialog"

    const-string v3, "_enabletws"

    const-string v4, "_ssid"

    const-string v5, "_bssid"

    const-string v6, "_security"

    .line 62
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->projection:[Ljava/lang/String;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->mSecurityAps:Ljava/util/HashMap;

    const-string v0, "-"

    .line 85
    sput-object v0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->connApSsid:Ljava/lang/String;

    .line 86
    sput-object v0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->connApBssid:Ljava/lang/String;

    const/4 v0, -0x1

    .line 87
    sput v0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->connApSecurity:I

    const/4 v0, 0x0

    .line 88
    sput-boolean v0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->twsEnable:Z

    .line 89
    sput-boolean v0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->mInManagerNetwork:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->friendContext:Landroid/content/Context;

    .line 80
    iput-object v0, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->resolver:Landroid/content/ContentResolver;

    .line 81
    iput-object v0, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->observer:Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$WifiSecurityObserver;

    const/4 v1, 0x0

    .line 82
    iput-boolean v1, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->showTwsDialog:Z

    .line 91
    new-instance v1, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$1;-><init>(Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;)V

    iput-object v1, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->mEvalutionCallback:Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionCallback;

    .line 98
    iput-object v0, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->wifiEvalutionService:Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionService;

    .line 99
    new-instance v0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$2;-><init>(Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;)V

    iput-object v0, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->conn:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->setAccessPointSecurity(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;)Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionService;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->wifiEvalutionService:Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionService;

    return-object p0
.end method

.method static synthetic access$1000()I
    .locals 1

    .line 46
    sget v0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->connApSecurity:I

    return v0
.end method

.method static synthetic access$102(Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionService;)Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionService;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->wifiEvalutionService:Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;)Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionCallback;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->mEvalutionCallback:Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionCallback;

    return-object p0
.end method

.method static synthetic access$400(Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->updateWifiSecurity()V

    return-void
.end method

.method static synthetic access$500()Z
    .locals 1

    .line 46
    sget-boolean v0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->DBG:Z

    return v0
.end method

.method static synthetic access$600()Z
    .locals 1

    .line 46
    sget-boolean v0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->twsEnable:Z

    return v0
.end method

.method static synthetic access$700(Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->showTwsDialog:Z

    return p0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .line 46
    sget-object v0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->connApSsid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    .line 46
    sget-object v0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->connApBssid:Ljava/lang/String;

    return-object v0
.end method

.method private isWifiSecurityPackageExist(Landroid/content/Context;)Z
    .locals 1

    const/4 p0, 0x0

    .line 240
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "com.samsung.android.tencentwifisecurity"

    invoke-virtual {p1, v0, p0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 244
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 247
    :cond_0
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "is WifiSecurity Package Exist = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TencentSecurityWifiManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private registerObserver(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    :try_start_0
    const-string v0, "com.samsung.android.tencentwifisecurity"

    const/4 v1, 0x2

    .line 121
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->friendContext:Landroid/content/Context;

    .line 122
    iget-object p1, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->friendContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    .line 123
    iget-object p1, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->friendContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->resolver:Landroid/content/ContentResolver;

    .line 124
    new-instance p1, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$WifiSecurityObserver;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$WifiSecurityObserver;-><init>(Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;Landroid/os/Handler;Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$1;)V

    iput-object p1, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->observer:Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$WifiSecurityObserver;

    .line 126
    iget-object p1, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->resolver:Landroid/content/ContentResolver;

    if-eqz p1, :cond_0

    .line 127
    iget-object p1, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->resolver:Landroid/content/ContentResolver;

    sget-object p2, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    iget-object p0, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->observer:Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$WifiSecurityObserver;

    invoke-virtual {p1, p2, v0, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    .line 132
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return-void
.end method

.method private setAccessPointSecurity(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 297
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "TencentSecurityWifiManager"

    if-ne v0, v1, :cond_3

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 302
    :cond_0
    sget-object v0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->mSecurityAps:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 303
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 304
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 305
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 306
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 308
    new-instance v5, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$SecurityApInfo;

    invoke-direct {v5, p0, v0, v1, v4}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$SecurityApInfo;-><init>(Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    sget-object v0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->mSecurityAps:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    sget-boolean v0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->DBG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$SecurityApInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 314
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "set AP Security, mSecurityAps size: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->mSecurityAps:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    const-string p0, "set AP Security, size is different"

    .line 298
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private unregisterObserver()V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->resolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->observer:Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$WifiSecurityObserver;

    if-eqz p0, :cond_0

    .line 139
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method private updateWifiSecurity()V
    .locals 9

    const-string v0, "enable"

    .line 252
    iget-object v1, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->resolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 259
    :cond_0
    :try_start_0
    sget-object v4, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->projection:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "_id asc"

    move-object v3, v1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_1

    .line 261
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->close()V

    .line 262
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    return-void

    .line 266
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_2

    .line 267
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 268
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->close()V

    .line 269
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    return-void

    :cond_2
    const/4 v3, 0x1

    .line 273
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->showTwsDialog:Z

    const/4 p0, 0x2

    .line 274
    invoke-interface {v2, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    sput-boolean p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->twsEnable:Z

    const/4 p0, 0x3

    .line 275
    invoke-interface {v2, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->connApSsid:Ljava/lang/String;

    const/4 p0, 0x4

    .line 276
    invoke-interface {v2, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->connApBssid:Ljava/lang/String;

    const/4 p0, 0x5

    .line 278
    invoke-interface {v2, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "safe"

    .line 279
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p0, 0x0

    .line 280
    sput p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->connApSecurity:I

    goto :goto_0

    :cond_3
    const-string v0, "risk"

    .line 281
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 282
    sput v3, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->connApSecurity:I

    goto :goto_0

    :cond_4
    const/4 p0, -0x1

    .line 284
    sput p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->connApSecurity:I

    .line 286
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 288
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 291
    :goto_1
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->close()V

    .line 292
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    return-void
.end method


# virtual methods
.method public isRiskAp(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 198
    sget-boolean p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->twsEnable:Z

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 202
    sget-object p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->mSecurityAps:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$SecurityApInfo;

    if-eqz p0, :cond_3

    .line 203
    iget-object v1, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$SecurityApInfo;->ssid:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 206
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$SecurityApInfo;->apSecurity:Ljava/lang/String;

    const-string v2, "Risk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RiskAp, ssid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    sget-boolean p1, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->DBG:Z

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string p1, ""

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", AP Security: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$SecurityApInfo;->apSecurity:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TencentSecurityWifiManager"

    .line 207
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    return v0
.end method

.method public isWifiSecurityEnabled()Z
    .locals 0

    .line 194
    sget-boolean p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->twsEnable:Z

    return p0
.end method

.method public startWifiSecurityEvalution(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 144
    invoke-direct {p0, p1}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->isWifiSecurityPackageExist(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 147
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->registerObserver(Landroid/content/Context;Landroid/os/Handler;)V

    .line 149
    sget-object p2, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->mSecurityAps:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    .line 150
    invoke-direct {p0}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->updateWifiSecurity()V

    .line 151
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "start Evalution, twsEnable:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->twsEnable:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " showTwsDialog:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->showTwsDialog:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "TencentSecurityWifiManager"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.samsung.android.tencentwifisecurity"

    const-string v1, "com.samsung.android.tencentwifisecurity.WifiEvalutionService"

    .line 154
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    iget-object p0, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->conn:Landroid/content/ServiceConnection;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p0, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public stopWifiSecurityEvalution(Landroid/content/Context;)V
    .locals 2

    .line 159
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 160
    invoke-direct {p0, p1}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->isWifiSecurityPackageExist(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 163
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->unregisterObserver()V

    .line 165
    sget-object v0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->mSecurityAps:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 166
    iget-object v0, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->wifiEvalutionService:Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionService;

    if-eqz v0, :cond_1

    .line 168
    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionService;->stopSecurityEvalution()V

    .line 169
    iget-object v0, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->wifiEvalutionService:Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionService;

    iget-object v1, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->mEvalutionCallback:Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionCallback;

    invoke-interface {v0, v1}, Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionService;->unregisterEvalutionCallback(Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 171
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    .line 173
    iput-object v0, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->wifiEvalutionService:Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionService;

    .line 174
    iget-object p0, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->conn:Landroid/content/ServiceConnection;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_1
    :goto_1
    return-void
.end method
