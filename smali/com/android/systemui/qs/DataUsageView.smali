.class public Lcom/android/systemui/qs/DataUsageView;
.super Landroid/widget/TextView;
.source "DataUsageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/DataUsageView$Formatter;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final mIsSupportCHNDataUsageConcept:Z


# instance fields
.field private mController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field private mCurrentDataSubId:I

.field private mDataController:Lcom/android/settingslib/net/DataUsageController;

.field private mDataLimitObserver:Landroid/database/ContentObserver;

.field private mDataUsage:Ljava/lang/String;

.field private mEnd:J

.field private mHandler:Landroid/os/Handler;

.field private mLimitLevel:J

.field private mRegistered:Z

.field private mStart:J

.field private mThread:Ljava/lang/Thread;

.field mUpdateRunnable:Ljava/lang/Runnable;

.field private mUsageLevel:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x3

    const-string v1, "DataUsageView"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/android/systemui/qs/DataUsageView;->DEBUG:Z

    const-string/jumbo v0, "trafficmanager"

    .line 38
    invoke-static {v0}, Lcom/android/systemui/qs/DataUsageView;->isSupportCHNEnhancedFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/qs/DataUsageView;->mIsSupportCHNDataUsageConcept:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 64
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x0

    .line 53
    iput-wide v0, p0, Lcom/android/systemui/qs/DataUsageView;->mStart:J

    .line 54
    iput-wide v0, p0, Lcom/android/systemui/qs/DataUsageView;->mEnd:J

    const/4 p1, -0x1

    .line 55
    iput p1, p0, Lcom/android/systemui/qs/DataUsageView;->mCurrentDataSubId:I

    const/4 p1, 0x0

    .line 56
    iput-object p1, p0, Lcom/android/systemui/qs/DataUsageView;->mHandler:Landroid/os/Handler;

    .line 57
    iput-object p1, p0, Lcom/android/systemui/qs/DataUsageView;->mDataUsage:Ljava/lang/String;

    .line 58
    iput-object p1, p0, Lcom/android/systemui/qs/DataUsageView;->mThread:Ljava/lang/Thread;

    .line 59
    iput-wide v0, p0, Lcom/android/systemui/qs/DataUsageView;->mUsageLevel:J

    .line 60
    iput-wide v0, p0, Lcom/android/systemui/qs/DataUsageView;->mLimitLevel:J

    const/4 p1, 0x0

    .line 61
    iput-boolean p1, p0, Lcom/android/systemui/qs/DataUsageView;->mRegistered:Z

    .line 92
    new-instance p1, Lcom/android/systemui/qs/DataUsageView$1;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/qs/DataUsageView$1;-><init>(Lcom/android/systemui/qs/DataUsageView;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/systemui/qs/DataUsageView;->mDataLimitObserver:Landroid/database/ContentObserver;

    .line 161
    new-instance p1, Lcom/android/systemui/qs/DataUsageView$3;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/DataUsageView$3;-><init>(Lcom/android/systemui/qs/DataUsageView;)V

    iput-object p1, p0, Lcom/android/systemui/qs/DataUsageView;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 65
    invoke-direct {p0}, Lcom/android/systemui/qs/DataUsageView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 79
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 p1, 0x0

    .line 53
    iput-wide p1, p0, Lcom/android/systemui/qs/DataUsageView;->mStart:J

    .line 54
    iput-wide p1, p0, Lcom/android/systemui/qs/DataUsageView;->mEnd:J

    const/4 v0, -0x1

    .line 55
    iput v0, p0, Lcom/android/systemui/qs/DataUsageView;->mCurrentDataSubId:I

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/android/systemui/qs/DataUsageView;->mHandler:Landroid/os/Handler;

    .line 57
    iput-object v0, p0, Lcom/android/systemui/qs/DataUsageView;->mDataUsage:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/android/systemui/qs/DataUsageView;->mThread:Ljava/lang/Thread;

    .line 59
    iput-wide p1, p0, Lcom/android/systemui/qs/DataUsageView;->mUsageLevel:J

    .line 60
    iput-wide p1, p0, Lcom/android/systemui/qs/DataUsageView;->mLimitLevel:J

    const/4 p1, 0x0

    .line 61
    iput-boolean p1, p0, Lcom/android/systemui/qs/DataUsageView;->mRegistered:Z

    .line 92
    new-instance p1, Lcom/android/systemui/qs/DataUsageView$1;

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/qs/DataUsageView$1;-><init>(Lcom/android/systemui/qs/DataUsageView;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/systemui/qs/DataUsageView;->mDataLimitObserver:Landroid/database/ContentObserver;

    .line 161
    new-instance p1, Lcom/android/systemui/qs/DataUsageView$3;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/DataUsageView$3;-><init>(Lcom/android/systemui/qs/DataUsageView;)V

    iput-object p1, p0, Lcom/android/systemui/qs/DataUsageView;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 80
    invoke-direct {p0}, Lcom/android/systemui/qs/DataUsageView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 p1, 0x0

    .line 53
    iput-wide p1, p0, Lcom/android/systemui/qs/DataUsageView;->mStart:J

    .line 54
    iput-wide p1, p0, Lcom/android/systemui/qs/DataUsageView;->mEnd:J

    const/4 p3, -0x1

    .line 55
    iput p3, p0, Lcom/android/systemui/qs/DataUsageView;->mCurrentDataSubId:I

    const/4 p3, 0x0

    .line 56
    iput-object p3, p0, Lcom/android/systemui/qs/DataUsageView;->mHandler:Landroid/os/Handler;

    .line 57
    iput-object p3, p0, Lcom/android/systemui/qs/DataUsageView;->mDataUsage:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Lcom/android/systemui/qs/DataUsageView;->mThread:Ljava/lang/Thread;

    .line 59
    iput-wide p1, p0, Lcom/android/systemui/qs/DataUsageView;->mUsageLevel:J

    .line 60
    iput-wide p1, p0, Lcom/android/systemui/qs/DataUsageView;->mLimitLevel:J

    const/4 p1, 0x0

    .line 61
    iput-boolean p1, p0, Lcom/android/systemui/qs/DataUsageView;->mRegistered:Z

    .line 92
    new-instance p1, Lcom/android/systemui/qs/DataUsageView$1;

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/qs/DataUsageView$1;-><init>(Lcom/android/systemui/qs/DataUsageView;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/systemui/qs/DataUsageView;->mDataLimitObserver:Landroid/database/ContentObserver;

    .line 161
    new-instance p1, Lcom/android/systemui/qs/DataUsageView$3;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/DataUsageView$3;-><init>(Lcom/android/systemui/qs/DataUsageView;)V

    iput-object p1, p0, Lcom/android/systemui/qs/DataUsageView;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 75
    invoke-direct {p0}, Lcom/android/systemui/qs/DataUsageView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-wide/16 p1, 0x0

    .line 53
    iput-wide p1, p0, Lcom/android/systemui/qs/DataUsageView;->mStart:J

    .line 54
    iput-wide p1, p0, Lcom/android/systemui/qs/DataUsageView;->mEnd:J

    const/4 p3, -0x1

    .line 55
    iput p3, p0, Lcom/android/systemui/qs/DataUsageView;->mCurrentDataSubId:I

    const/4 p3, 0x0

    .line 56
    iput-object p3, p0, Lcom/android/systemui/qs/DataUsageView;->mHandler:Landroid/os/Handler;

    .line 57
    iput-object p3, p0, Lcom/android/systemui/qs/DataUsageView;->mDataUsage:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Lcom/android/systemui/qs/DataUsageView;->mThread:Ljava/lang/Thread;

    .line 59
    iput-wide p1, p0, Lcom/android/systemui/qs/DataUsageView;->mUsageLevel:J

    .line 60
    iput-wide p1, p0, Lcom/android/systemui/qs/DataUsageView;->mLimitLevel:J

    const/4 p1, 0x0

    .line 61
    iput-boolean p1, p0, Lcom/android/systemui/qs/DataUsageView;->mRegistered:Z

    .line 92
    new-instance p1, Lcom/android/systemui/qs/DataUsageView$1;

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/qs/DataUsageView$1;-><init>(Lcom/android/systemui/qs/DataUsageView;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/systemui/qs/DataUsageView;->mDataLimitObserver:Landroid/database/ContentObserver;

    .line 161
    new-instance p1, Lcom/android/systemui/qs/DataUsageView$3;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/DataUsageView$3;-><init>(Lcom/android/systemui/qs/DataUsageView;)V

    iput-object p1, p0, Lcom/android/systemui/qs/DataUsageView;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 70
    invoke-direct {p0}, Lcom/android/systemui/qs/DataUsageView;->initView()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/DataUsageView;)J
    .locals 2

    .line 34
    iget-wide v0, p0, Lcom/android/systemui/qs/DataUsageView;->mLimitLevel:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/android/systemui/qs/DataUsageView;J)J
    .locals 0

    .line 34
    iput-wide p1, p0, Lcom/android/systemui/qs/DataUsageView;->mLimitLevel:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/DataUsageView;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/android/systemui/qs/DataUsageView;->updateDataText()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/DataUsageView;)Lcom/android/settingslib/net/DataUsageController;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/systemui/qs/DataUsageView;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/DataUsageView;)J
    .locals 2

    .line 34
    iget-wide v0, p0, Lcom/android/systemui/qs/DataUsageView;->mUsageLevel:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/android/systemui/qs/DataUsageView;J)J
    .locals 0

    .line 34
    iput-wide p1, p0, Lcom/android/systemui/qs/DataUsageView;->mUsageLevel:J

    return-wide p1
.end method

.method static synthetic access$400()Z
    .locals 1

    .line 34
    sget-boolean v0, Lcom/android/systemui/qs/DataUsageView;->mIsSupportCHNDataUsageConcept:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/DataUsageView;Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;)J
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/DataUsageView;->getTotalUsedData(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/DataUsageView;)Landroid/os/Handler;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/systemui/qs/DataUsageView;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$702(Lcom/android/systemui/qs/DataUsageView;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/android/systemui/qs/DataUsageView;->mThread:Ljava/lang/Thread;

    return-object p1
.end method

.method private getBounds(I)V
    .locals 12

    .line 229
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    .line 230
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 231
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    const/4 v10, 0x1

    .line 232
    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v11, 0x2

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v9

    move v5, p1

    invoke-virtual/range {v2 .. v8}, Ljava/util/Calendar;->set(IIIIII)V

    if-lt v1, p1, :cond_0

    .line 234
    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/systemui/qs/DataUsageView;->mStart:J

    .line 235
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 236
    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v5, v0, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v1

    move v6, p1

    invoke-virtual/range {v3 .. v9}, Ljava/util/Calendar;->set(IIIIII)V

    .line 237
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/qs/DataUsageView;->mEnd:J

    goto :goto_0

    .line 239
    :cond_0
    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v9

    move v5, p1

    invoke-virtual/range {v2 .. v8}, Ljava/util/Calendar;->set(IIIIII)V

    .line 240
    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/systemui/qs/DataUsageView;->mEnd:J

    .line 241
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 242
    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v5, v0, -0x1

    const/4 v9, 0x0

    move-object v3, v1

    move v6, p1

    invoke-virtual/range {v3 .. v9}, Ljava/util/Calendar;->set(IIIIII)V

    .line 243
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/qs/DataUsageView;->mStart:J

    :goto_0
    return-void
.end method

.method private getConfirmTime()J
    .locals 5

    const-string v0, "check_time"

    const-wide/16 v1, 0x0

    .line 264
    :try_start_0
    iget-object v3, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/qs/DataUsageView;->mCurrentDataSubId:I

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v3
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DataUsageView"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v3, v1

    :goto_0
    cmp-long p0, v3, v1

    if-gez p0, :cond_0

    goto :goto_1

    :cond_0
    move-wide v1, v3

    :goto_1
    return-wide v1
.end method

.method private getConfirmTraffic()J
    .locals 6

    .line 277
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data_used_by_check_time"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/qs/DataUsageView;->mCurrentDataSubId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-wide/16 v0, 0x0

    const-string v3, "DataUsageView"

    if-eqz p0, :cond_1

    const-string v4, ""

    .line 279
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, " "

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 285
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide v4, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v0, v4

    double-to-long v0, v0

    .line 292
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getConfirmTraffic "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from setting, confirm bytes = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0

    :catch_0
    move-exception p0

    .line 287
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0

    .line 280
    :cond_1
    :goto_0
    sget-boolean v2, Lcom/android/systemui/qs/DataUsageView;->DEBUG:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getConfirmTraffic :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-wide v0
.end method

.method private getStartDay()I
    .locals 4

    const-string/jumbo v0, "set_package_start_date_value"

    const/4 v1, 0x1

    .line 217
    :try_start_0
    iget-object v2, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/qs/DataUsageView;->mCurrentDataSubId:I

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DataUsageView"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move p0, v1

    :goto_0
    if-lt p0, v1, :cond_0

    const/16 v0, 0x1f

    if-le p0, v0, :cond_1

    :cond_0
    move p0, v1

    :cond_1
    return p0
.end method

.method private getTotalUsedData(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;)J
    .locals 10

    .line 298
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const-string v2, "middle_real_value"

    .line 304
    iget-wide v3, p1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    .line 306
    invoke-direct {p0}, Lcom/android/systemui/qs/DataUsageView;->getStartDay()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/DataUsageView;->getBounds(I)V

    .line 307
    invoke-direct {p0}, Lcom/android/systemui/qs/DataUsageView;->getConfirmTime()J

    move-result-wide v5

    .line 309
    iget-wide v7, p0, Lcom/android/systemui/qs/DataUsageView;->mStart:J

    cmp-long p1, v5, v7

    const-string v7, "DataUsageView"

    const-wide/16 v8, 0x0

    if-ltz p1, :cond_0

    cmp-long p1, v5, v0

    if-gtz p1, :cond_0

    cmp-long p1, v5, v8

    if-eqz p1, :cond_0

    .line 310
    invoke-direct {p0}, Lcom/android/systemui/qs/DataUsageView;->getConfirmTraffic()J

    move-result-wide v0

    .line 312
    :try_start_0
    iget-object p1, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/qs/DataUsageView;->mCurrentDataSubId:I

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v8
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 314
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move-wide v0, v8

    :goto_0
    sub-long p0, v3, v8

    add-long/2addr p0, v0

    .line 319
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "totalTraffic:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " totalUsedBytes:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " realTraffic:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " startTraffic:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide p0
.end method

.method private initView()V
    .locals 3

    .line 85
    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    iput-object v0, p0, Lcom/android/systemui/qs/DataUsageView;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 86
    iget-object v0, p0, Lcom/android/systemui/qs/DataUsageView;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getMobileDataController()Lcom/android/settingslib/net/DataUsageController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/DataUsageView;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->quick_panel_data_usage:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": 0 B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/DataUsageView;->mHandler:Landroid/os/Handler;

    .line 89
    invoke-virtual {p0}, Lcom/android/systemui/qs/DataUsageView;->updateCurrentDataSubId()V

    return-void
.end method

.method public static isSupportCHNEnhancedFeature(Ljava/lang/String;)Z
    .locals 2

    .line 324
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_SmartManager_ConfigSubFeatures"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 325
    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private registerContentObserver()V
    .locals 4

    .line 100
    sget-boolean v0, Lcom/android/systemui/qs/DataUsageView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DataUsageView"

    const-string v1, "registerContentObserver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/DataUsageView;->mRegistered:Z

    if-nez v0, :cond_1

    .line 102
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "switch_traffic_settings"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/qs/DataUsageView;->mCurrentDataSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/DataUsageView;->mDataLimitObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 103
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set_data_limit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/qs/DataUsageView;->mCurrentDataSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/DataUsageView;->mDataLimitObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const/4 v0, 0x1

    .line 104
    iput-boolean v0, p0, Lcom/android/systemui/qs/DataUsageView;->mRegistered:Z

    :cond_1
    return-void
.end method

.method private unregisterContentObserver()V
    .locals 2

    .line 109
    sget-boolean v0, Lcom/android/systemui/qs/DataUsageView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DataUsageView"

    const-string/jumbo v1, "unregisterContentObserver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/DataUsageView;->mRegistered:Z

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/DataUsageView;->mDataLimitObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 112
    iput-boolean v0, p0, Lcom/android/systemui/qs/DataUsageView;->mRegistered:Z

    :cond_1
    return-void
.end method

.method private updateDataText()V
    .locals 6

    .line 145
    iget-wide v0, p0, Lcom/android/systemui/qs/DataUsageView;->mUsageLevel:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 146
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    iget-wide v4, p0, Lcom/android/systemui/qs/DataUsageView;->mUsageLevel:J

    invoke-static {v0, v4, v5}, Lcom/android/systemui/qs/DataUsageView$Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 147
    iget-wide v4, p0, Lcom/android/systemui/qs/DataUsageView;->mLimitLevel:J

    cmp-long v1, v4, v2

    if-lez v1, :cond_0

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/android/systemui/qs/DataUsageView;->mLimitLevel:J

    invoke-static {v0, v2, v3}, Lcom/android/systemui/qs/DataUsageView$Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    :cond_0
    iget-object v1, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->quick_panel_data_usage:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/DataUsageView;->mDataUsage:Ljava/lang/String;

    goto :goto_0

    .line 153
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->quick_panel_data_usage:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": 0 B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/DataUsageView;->mDataUsage:Ljava/lang/String;

    .line 155
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Data Usage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/qs/DataUsageView;->mDataUsage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DataUsageView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, Lcom/android/systemui/qs/DataUsageView;->mDataUsage:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 157
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public getLimitBytes()J
    .locals 7

    .line 193
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set_data_limit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/qs/DataUsageView;->mCurrentDataSubId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 194
    invoke-virtual {p0}, Lcom/android/systemui/qs/DataUsageView;->isLimitSet()Z

    move-result p0

    const-wide/16 v3, 0x0

    const-string v1, "DataUsageView"

    if-nez p0, :cond_1

    .line 195
    sget-boolean p0, Lcom/android/systemui/qs/DataUsageView;->DEBUG:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLimitBytes : "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-wide v3

    .line 200
    :cond_1
    :try_start_0
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide v5, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v3, v5

    double-to-long v3, v3

    .line 207
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getLimitBytes "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " from setting, limit bytes = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v3

    :catch_0
    move-exception p0

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v3
.end method

.method public isLimitSet()Z
    .locals 4

    const-string/jumbo v0, "switch_traffic_settings"

    const/4 v1, 0x0

    .line 174
    :try_start_0
    iget-object v2, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/qs/DataUsageView;->mCurrentDataSubId:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_0

    return v1

    .line 182
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "set_data_limit"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/qs/DataUsageView;->mCurrentDataSubId:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string v0, ""

    .line 183
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "max"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 186
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Limit enabled :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DataUsageView"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_1
    return v1
.end method

.method public updateCurrentDataSubId()V
    .locals 2

    .line 248
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 249
    iget v1, p0, Lcom/android/systemui/qs/DataUsageView;->mCurrentDataSubId:I

    if-eq v0, v1, :cond_0

    .line 250
    iput v0, p0, Lcom/android/systemui/qs/DataUsageView;->mCurrentDataSubId:I

    .line 251
    sget-boolean v0, Lcom/android/systemui/qs/DataUsageView;->mIsSupportCHNDataUsageConcept:Z

    if-eqz v0, :cond_0

    .line 252
    invoke-direct {p0}, Lcom/android/systemui/qs/DataUsageView;->unregisterContentObserver()V

    .line 253
    invoke-direct {p0}, Lcom/android/systemui/qs/DataUsageView;->registerContentObserver()V

    .line 256
    :cond_0
    sget-boolean v0, Lcom/android/systemui/qs/DataUsageView;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current Data SubId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/qs/DataUsageView;->mCurrentDataSubId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DataUsageView"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public updateUsageInfo()V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/android/systemui/qs/DataUsageView;->mThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Lcom/android/systemui/qs/DataUsageView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/DataUsageView$2;-><init>(Lcom/android/systemui/qs/DataUsageView;)V

    iput-object v0, p0, Lcom/android/systemui/qs/DataUsageView;->mThread:Ljava/lang/Thread;

    .line 138
    iget-object p0, p0, Lcom/android/systemui/qs/DataUsageView;->mThread:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_0
    const-string p0, "DataUsageView"

    const-string v0, "Last Thread still running"

    .line 140
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
