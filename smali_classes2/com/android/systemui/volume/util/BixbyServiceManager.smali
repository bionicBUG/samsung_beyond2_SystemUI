.class public Lcom/android/systemui/volume/util/BixbyServiceManager;
.super Ljava/lang/Object;
.source "BixbyServiceManager.java"


# static fields
.field private static final VOICE_ENABLE_URI:Landroid/net/Uri;


# instance fields
.field private final mActivityManagerWrapper:Lcom/android/systemui/volume/util/ActivityManagerWrapper;

.field private final mContext:Landroid/content/Context;

.field private final mLogWrapper:Lcom/android/systemui/volume/util/LogWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.samsung.android.bixby.agent.settings/bixby_voice_isenable"

    .line 14
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/util/BixbyServiceManager;->VOICE_ENABLE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/volume/util/LogWrapper;Lcom/android/systemui/volume/util/ActivityManagerWrapper;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/systemui/volume/util/BixbyServiceManager;->mContext:Landroid/content/Context;

    .line 22
    iput-object p2, p0, Lcom/android/systemui/volume/util/BixbyServiceManager;->mLogWrapper:Lcom/android/systemui/volume/util/LogWrapper;

    .line 23
    iput-object p3, p0, Lcom/android/systemui/volume/util/BixbyServiceManager;->mActivityManagerWrapper:Lcom/android/systemui/volume/util/ActivityManagerWrapper;

    return-void
.end method

.method private isBixbyVoiceEnabled()Z
    .locals 6

    .line 36
    iget-object p0, p0, Lcom/android/systemui/volume/util/BixbyServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/volume/util/BixbyServiceManager;->VOICE_ENABLE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 38
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v1, "bixby_voice_isenable"

    .line 39
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 40
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 41
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    const/4 p0, 0x1

    if-ne v1, p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    return p0

    :cond_1
    return v0
.end method


# virtual methods
.method public isBixbyServiceForeground()Z
    .locals 1

    .line 48
    iget-object p0, p0, Lcom/android/systemui/volume/util/BixbyServiceManager;->mActivityManagerWrapper:Lcom/android/systemui/volume/util/ActivityManagerWrapper;

    const-string v0, "com.samsung.android.bixby.agent"

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/util/ActivityManagerWrapper;->isForegroundApp(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isBixbyServiceOn()Z
    .locals 3

    .line 28
    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui/volume/util/BixbyServiceManager;->isBixbyVoiceEnabled()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    .line 30
    iget-object p0, p0, Lcom/android/systemui/volume/util/BixbyServiceManager;->mLogWrapper:Lcom/android/systemui/volume/util/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isBixbyServiceOn() : exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BixbyServiceManager"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/volume/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
