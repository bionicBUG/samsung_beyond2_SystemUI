.class public Lcom/android/systemui/util/tasklockutil/TaskLockPreference;
.super Ljava/lang/Object;
.source "TaskLockPreference.java"


# static fields
.field private static INSTANCE:Lcom/android/systemui/util/tasklockutil/TaskLockPreference;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTaskLockDbHelper:Lcom/android/systemui/util/tasklockutil/TaskLockDbHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/systemui/util/tasklockutil/TaskLockPreference;->mContext:Landroid/content/Context;

    :try_start_0
    const-string v0, "com.android.systemui"

    const/4 v1, 0x1

    .line 36
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    .line 37
    invoke-static {p1}, Lcom/android/systemui/util/tasklockutil/TaskLockDbHelper;->getInstance(Landroid/content/Context;)Lcom/android/systemui/util/tasklockutil/TaskLockDbHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/util/tasklockutil/TaskLockPreference;->mTaskLockDbHelper:Lcom/android/systemui/util/tasklockutil/TaskLockDbHelper;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "TaskLockPreference"

    const-string p1, "com.android.systemui not found"

    .line 40
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/util/tasklockutil/TaskLockPreference;
    .locals 1

    .line 26
    sget-object v0, Lcom/android/systemui/util/tasklockutil/TaskLockPreference;->INSTANCE:Lcom/android/systemui/util/tasklockutil/TaskLockPreference;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/android/systemui/util/tasklockutil/TaskLockPreference;

    invoke-direct {v0, p0}, Lcom/android/systemui/util/tasklockutil/TaskLockPreference;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/util/tasklockutil/TaskLockPreference;->INSTANCE:Lcom/android/systemui/util/tasklockutil/TaskLockPreference;

    .line 29
    :cond_0
    sget-object p0, Lcom/android/systemui/util/tasklockutil/TaskLockPreference;->INSTANCE:Lcom/android/systemui/util/tasklockutil/TaskLockPreference;

    return-object p0
.end method


# virtual methods
.method public saveDefaultLockedPackage(Ljava/lang/String;)V
    .locals 1

    .line 110
    iget-object p0, p0, Lcom/android/systemui/util/tasklockutil/TaskLockPreference;->mTaskLockDbHelper:Lcom/android/systemui/util/tasklockutil/TaskLockDbHelper;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/util/tasklockutil/TaskLockDbHelper;->createOrUpdateDefaultPkgLock(Ljava/lang/String;Z)J

    return-void
.end method

.method public saveLockedTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/systemui/util/tasklockutil/TaskLockPreference;->mTaskLockDbHelper:Lcom/android/systemui/util/tasklockutil/TaskLockDbHelper;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/util/tasklockutil/TaskLockDbHelper;->createOrUpdateTaskLock(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    return-void
.end method
