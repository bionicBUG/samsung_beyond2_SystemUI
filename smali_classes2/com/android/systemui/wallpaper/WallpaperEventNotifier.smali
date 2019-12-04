.class public Lcom/android/systemui/wallpaper/WallpaperEventNotifier;
.super Ljava/lang/Object;
.source "WallpaperEventNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/wallpaper/WallpaperEventNotifier$DebugLog;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "WallpaperEventNotifier"

.field private static sInstance:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;


# instance fields
.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/systemui/widget/SystemUIWidgetCallback;",
            ">;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurStatusFlag:I

.field private mIsThemeApplying:Z

.field private mLogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/wallpaper/WallpaperEventNotifier$DebugLog;",
            ">;"
        }
    .end annotation
.end field

.field private mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->DEBUG:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCurStatusFlag:I

    .line 41
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCallbacks:Ljava/util/ArrayList;

    .line 43
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mIsThemeApplying:Z

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mLogs:Ljava/util/ArrayList;

    .line 48
    iput-object p1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mContext:Landroid/content/Context;

    .line 49
    iget-object p1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mContext:Landroid/content/Context;

    const-string v0, "wallpaper"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/WallpaperManager;

    iput-object p1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 51
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->initFlags()V

    return-void
.end method

.method private addLog(Ljava/lang/String;)V
    .locals 1

    .line 309
    new-instance v0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$DebugLog;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$DebugLog;-><init>(Lcom/android/systemui/wallpaper/WallpaperEventNotifier;Ljava/lang/String;)V

    .line 310
    iget-object p1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mLogs:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    iget-object p1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mLogs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 v0, 0xc8

    if-le p1, v0, :cond_0

    .line 313
    iget-object p0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mLogs:Ljava/util/ArrayList;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private getChangeFlagsString(I)Ljava/lang/String;
    .locals 5

    .line 262
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[ "

    .line 264
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    const-string v0, "THEME "

    .line 266
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v0, "| "

    .line 269
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    const-string v1, "ADAPTIVE "

    .line 272
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    move v2, v1

    .line 277
    :goto_0
    sget-object v3, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->UPDATE_FLAGS:[I

    array-length v4, v3

    if-ge v2, v4, :cond_3

    .line 278
    aget v3, v3, v2

    and-int/2addr v3, p1

    if-eqz v3, :cond_2

    .line 279
    sget-object v3, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->DEBUG_FLAG_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 283
    :cond_3
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    :goto_1
    sget-object v0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->UPDATE_SHADOW_FLAGS:[I

    array-length v2, v0

    if-ge v1, v2, :cond_5

    .line 286
    aget v0, v0, v1

    and-int/2addr v0, p1

    if-eqz v0, :cond_4

    const-string p1, "SHADOW "

    .line 287
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    const-string p1, "]"

    .line 292
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperEventNotifier;
    .locals 1

    .line 86
    sget-object v0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->sInstance:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->sInstance:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    .line 89
    :cond_0
    sget-object p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->sInstance:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    return-object p0
.end method

.method static synthetic lambda$dump$0(Ljava/io/PrintWriter;Ljava/text/DateFormat;Lcom/android/systemui/wallpaper/WallpaperEventNotifier$DebugLog;)V
    .locals 3

    .line 302
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p2, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$DebugLog;->time:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 303
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$DebugLog;->text:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private notifyUpdate(ILandroid/app/SemWallpaperColors;)V
    .locals 5

    .line 111
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->setCurStatusFlag(ILandroid/app/SemWallpaperColors;)V

    if-eqz p1, :cond_5

    .line 114
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isOpenThemeLook()Z

    move-result v0

    if-eqz v0, :cond_0

    or-int/lit8 p1, p1, 0x1

    .line 119
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getChangeFlagsString(I)Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", colors = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    .line 123
    invoke-virtual {p2}, Landroid/app/SemWallpaperColors;->toSimpleString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "null"

    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    :goto_0
    sget-object v1, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyUpdate() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyUpdate() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->addLog(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x0

    .line 133
    :goto_1
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 134
    iget-object v2, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 135
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/widget/SystemUIWidgetCallback;

    .line 136
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v3, :cond_3

    and-int v4, v2, p1

    if-eqz v4, :cond_2

    .line 139
    invoke-interface {v3, p1, p2}, Lcom/android/systemui/widget/SystemUIWidgetCallback;->updateStyle(ILandroid/app/SemWallpaperColors;)V

    goto :goto_2

    .line 141
    :cond_2
    invoke-direct {p0, v2, p1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->shouldNotifyShadowChanges(II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 142
    invoke-interface {v3, p1, p2}, Lcom/android/systemui/widget/SystemUIWidgetCallback;->updateStyle(ILandroid/app/SemWallpaperColors;)V

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 147
    :cond_4
    monitor-exit v0

    goto :goto_3

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_5
    :goto_3
    return-void
.end method

.method private sendUpdates(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V
    .locals 6

    .line 222
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mIsThemeApplying:Z

    if-eqz v0, :cond_0

    .line 223
    sget-object p1, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->TAG:Ljava/lang/String;

    const-string v0, "sendUpdates() Ignore update while theme is applying..."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->addLog(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 230
    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mWallpaperManager:Landroid/app/WallpaperManager;

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    .line 231
    invoke-virtual {v1, v0}, Landroid/app/WallpaperManager;->semGetWallpaperColors(I)Landroid/app/SemWallpaperColors;

    move-result-object v0

    .line 234
    :cond_1
    sget-boolean v1, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    iget v2, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCurStatusFlag:I

    invoke-direct {p0, v2}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getChangeFlagsString(I)Ljava/lang/String;

    move-result-object v2

    .line 238
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", colors = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2

    .line 240
    invoke-virtual {v0}, Landroid/app/SemWallpaperColors;->toSimpleString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string v2, "null"

    .line 242
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    :goto_0
    sget-object v2, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendUpdates() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->addLog(Ljava/lang/String;)V

    .line 250
    :cond_3
    iget p0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCurStatusFlag:I

    invoke-interface {p1, p0, v0}, Lcom/android/systemui/widget/SystemUIWidgetCallback;->updateStyle(ILandroid/app/SemWallpaperColors;)V

    return-void
.end method

.method private setCurStatusFlag(ILandroid/app/SemWallpaperColors;)V
    .locals 1

    const/4 v0, 0x0

    .line 65
    iput v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCurStatusFlag:I

    if-nez p2, :cond_0

    const-string p2, "setCurStatusFlag() colors is null. May cause unexptected behaviour!"

    .line 68
    invoke-direct {p0, p2}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->addLog(Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :cond_0
    invoke-static {}, Landroid/app/SemWallpaperColors;->getBlankWallpaperColors()Landroid/app/SemWallpaperColors;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->checkUpdates(Landroid/app/SemWallpaperColors;Landroid/app/SemWallpaperColors;)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCurStatusFlag:I

    .line 73
    :goto_0
    const-class p2, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p2}, Lcom/android/systemui/util/SettingsHelper;->isOpenThemeLook()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 74
    iget p2, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCurStatusFlag:I

    or-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCurStatusFlag:I

    :cond_1
    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    .line 79
    iget-object p1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isSupportAdaptiveColor(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 80
    iget p1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCurStatusFlag:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCurStatusFlag:I

    :cond_2
    return-void
.end method

.method private shouldNotify(I)Z
    .locals 0

    .line 254
    iget p0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCurStatusFlag:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private shouldNotifyShadowChanges(II)Z
    .locals 2

    const p0, 0x8000

    and-int/2addr p0, p1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    move p0, v0

    .line 156
    :goto_0
    sget v1, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->NUM_SEPERATED_AREA:I

    if-ge p0, v1, :cond_2

    .line 157
    sget-object v1, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->UPDATE_FLAGS:[I

    aget v1, v1, p0

    and-int/2addr v1, p1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->UPDATE_SHADOW_FLAGS:[I

    aget v1, v1, p0

    and-int/2addr v1, p2

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 297
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-class p3, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " :"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 299
    monitor-enter p0

    .line 300
    :try_start_0
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string p3, "MM-dd HH:mm:ss.SSS"

    invoke-direct {p1, p3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 301
    iget-object p3, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mLogs:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/wallpaper/-$$Lambda$WallpaperEventNotifier$_jZlKC2-Kwqicqa4mgk2AMFXwd4;

    invoke-direct {v0, p2, p1}, Lcom/android/systemui/wallpaper/-$$Lambda$WallpaperEventNotifier$_jZlKC2-Kwqicqa4mgk2AMFXwd4;-><init>(Ljava/io/PrintWriter;Ljava/text/DateFormat;)V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 305
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getCurStatusFlag()I
    .locals 0

    .line 97
    iget p0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCurStatusFlag:I

    return p0
.end method

.method public initFlags()V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mWallpaperManager:Landroid/app/WallpaperManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 58
    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->semGetWallpaperColors(I)Landroid/app/SemWallpaperColors;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0, v1, v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->setCurStatusFlag(ILandroid/app/SemWallpaperColors;)V

    return-void
.end method

.method public registerCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V
    .locals 1

    const/4 v0, -0x1

    .line 167
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->registerCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;I)V

    return-void
.end method

.method public registerCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;I)V
    .locals 4

    .line 176
    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x0

    .line 177
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 178
    iget-object v2, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 179
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 180
    sget-object p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Object tried to add another callback "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    monitor-exit v0

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 185
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCallbacks:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 188
    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->removeCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    .line 190
    invoke-direct {p0, p2}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->shouldNotify(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 191
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->sendUpdates(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    goto :goto_1

    .line 193
    :cond_2
    sget-boolean p1, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->DEBUG:Z

    if-eqz p1, :cond_3

    .line 195
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerCallback() Not in notification condition : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->addLog(Ljava/lang/String;)V

    .line 197
    invoke-direct {p0, p2}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getChangeFlagsString(I)Ljava/lang/String;

    move-result-object p2

    .line 198
    iget v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCurStatusFlag:I

    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getChangeFlagsString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "typesTobeNotified = "

    .line 199
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", mCurStatusFlag = "

    .line 201
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "registerCallback() "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->addLog(Ljava/lang/String;)V

    .line 204
    sget-object p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "registerCallback() "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void

    :catchall_0
    move-exception p0

    .line 186
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public removeCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V
    .locals 3

    .line 211
    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 212
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 213
    iget-object v2, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 214
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 215
    iget-object v2, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 218
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setIsThemeApplying(Z)V
    .locals 0

    .line 93
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mIsThemeApplying:Z

    return-void
.end method

.method public update(ILandroid/app/SemWallpaperColors;)V
    .locals 1

    .line 101
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mIsThemeApplying:Z

    if-eqz v0, :cond_0

    const-string p1, "update() Ignore update while theme is applying..."

    .line 102
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->addLog(Ljava/lang/String;)V

    .line 103
    sget-object p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 107
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->notifyUpdate(ILandroid/app/SemWallpaperColors;)V

    return-void
.end method
