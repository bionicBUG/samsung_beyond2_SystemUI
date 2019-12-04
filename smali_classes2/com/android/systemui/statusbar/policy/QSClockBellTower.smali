.class public Lcom/android/systemui/statusbar/policy/QSClockBellTower;
.super Ljava/lang/Object;
.source "QSClockBellTower.java"

# interfaces
.implements Lcom/android/systemui/DemoMode;
.implements Lcom/android/systemui/statusbar/phone/StatusBarSetupModule;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;,
        Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeAudience;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private mAudienceList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeAudience;",
            ">;"
        }
    .end annotation
.end field

.field private mCalendar:Ljava/util/Calendar;

.field private mClockFormat:Ljava/text/SimpleDateFormat;

.field private mClockFormatString:Ljava/lang/String;

.field private mContentDescriptionFormat:Ljava/text/SimpleDateFormat;

.field private mContext:Landroid/content/Context;

.field private final mCurrentDate:Ljava/util/Date;

.field private final mCurrentShortenDate:Ljava/util/Date;

.field private mDateStringFormat:Ljava/lang/String;

.field private mDateStringPattern:Ljava/lang/String;

.field public mDemoMode:Z

.field private mHandler:Landroid/os/Handler;

.field private mLocale:Ljava/util/Locale;

.field private final mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

.field private mShortenDateStringFormat:Ljava/lang/String;

.field private mShortenDateStringPattern:Ljava/lang/String;

.field protected mTimeBroadcastReceiver:Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;

.field private mUpdateNotifyNewClockTime:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mAudienceList:Ljava/util/HashMap;

    .line 83
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mCurrentDate:Ljava/util/Date;

    .line 86
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mCurrentShortenDate:Ljava/util/Date;

    .line 91
    new-instance v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower$1;-><init>(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    .line 143
    new-instance v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower$2;-><init>(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mUpdateNotifyNewClockTime:Ljava/lang/Runnable;

    .line 153
    new-instance v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;-><init>(Lcom/android/systemui/statusbar/policy/QSClockBellTower;Lcom/android/systemui/statusbar/policy/QSClockBellTower$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mTimeBroadcastReceiver:Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)Landroid/os/Handler;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)Ljava/lang/Runnable;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mUpdateNotifyNewClockTime:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/android/systemui/statusbar/policy/QSClockBellTower;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mClockFormatString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)Ljava/util/Calendar;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mCalendar:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/policy/QSClockBellTower;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)Landroid/content/Context;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)Ljava/text/SimpleDateFormat;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mClockFormat:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)Ljava/text/SimpleDateFormat;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mContentDescriptionFormat:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method static synthetic access$702(Lcom/android/systemui/statusbar/policy/QSClockBellTower;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mDateStringFormat:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Lcom/android/systemui/statusbar/policy/QSClockBellTower;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mShortenDateStringFormat:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)Ljava/util/Locale;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mLocale:Ljava/util/Locale;

    return-object p0
.end method

.method static synthetic access$902(Lcom/android/systemui/statusbar/policy/QSClockBellTower;Ljava/util/Locale;)Ljava/util/Locale;
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mLocale:Ljava/util/Locale;

    return-object p1
.end method

.method private ringBellOfTower(Z)V
    .locals 11

    .line 220
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mAudienceList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 223
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->getSmallTime()Ljava/lang/String;

    move-result-object v7

    .line 224
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->getDateViewText()Ljava/lang/String;

    move-result-object v8

    .line 225
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->getShortenDateViewText()Ljava/lang/String;

    move-result-object v9

    .line 226
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->getContentDescription()Ljava/lang/String;

    move-result-object v10

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "He is ready to ring the bell. (((timeText:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", skipUpdateForDemo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", dateText:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", shortenDateText = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")))"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QSClockBellTower"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 230
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 231
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 232
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mAudienceList:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeAudience;

    move-object v2, v7

    move-object v3, v10

    move v4, p1

    move-object v5, v8

    move-object v6, v9

    .line 233
    invoke-interface/range {v1 .. v6}, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeAudience;->notifyTimeChanged(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    .line 326
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mDemoMode:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string v0, "enter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mDemoMode:Z

    goto/16 :goto_3

    .line 328
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mDemoMode:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const-string v0, "exit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 329
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mDemoMode:Z

    .line 330
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 331
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_6

    new-instance p2, Lcom/android/systemui/statusbar/policy/-$$Lambda$QSClockBellTower$7BYoCD_ZD62TbAnrfEFRjqzp19E;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/policy/-$$Lambda$QSClockBellTower$7BYoCD_ZD62TbAnrfEFRjqzp19E;-><init>(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3

    .line 332
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mDemoMode:Z

    if-eqz v0, :cond_6

    const-string v0, "clock"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "millis"

    .line 333
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "hhmm"

    .line 334
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_2

    .line 336
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mCalendar:Ljava/util/Calendar;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_2

    :cond_2
    if-eqz p2, :cond_5

    .line 337
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    const/4 p1, 0x2

    .line 338
    invoke-virtual {p2, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 339
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 340
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_3

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-static {p2, v3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_0
    if-eqz v1, :cond_4

    .line 342
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {p2, v1, v0}, Ljava/util/Calendar;->set(II)V

    goto :goto_1

    .line 344
    :cond_4
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xa

    invoke-virtual {p2, v1, v0}, Ljava/util/Calendar;->set(II)V

    .line 346
    :goto_1
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mCalendar:Ljava/util/Calendar;

    const/16 v0, 0xc

    invoke-virtual {p2, v0, p1}, Ljava/util/Calendar;->set(II)V

    .line 348
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_6

    new-instance p2, Lcom/android/systemui/statusbar/policy/-$$Lambda$QSClockBellTower$oKzHctszh30j50_txp0egvHVz84;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/policy/-$$Lambda$QSClockBellTower$oKzHctszh30j50_txp0egvHVz84;-><init>(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_6
    :goto_3
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 357
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mAudienceList:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string v0, "   QSClockBellTower mAudienceList: "

    .line 359
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 360
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 361
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 362
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 363
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p0, "\n"

    .line 366
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getContentDescription()Ljava/lang/String;
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mContentDescriptionFormat:Ljava/text/SimpleDateFormat;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method protected getDateViewText()Ljava/lang/String;
    .locals 3

    .line 284
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mDateStringFormat:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->system_ui_quick_panel_date_pattern:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mDateStringPattern:Ljava/lang/String;

    .line 287
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mDateStringPattern:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mDateStringFormat:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 289
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mDateStringFormat:Ljava/lang/String;

    const-string p0, ""

    return-object p0

    .line 293
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mCurrentDate:Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mDateStringFormat:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mCurrentDate:Ljava/util/Date;

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 296
    sget-boolean v1, Lcom/android/systemui/Rune;->STATBAR_QS_PERSIAN_CALENDAR:Z

    if-eqz v1, :cond_1

    .line 297
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/QSClockUtils;->getPersianCalendar(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 299
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getShortenDateViewText()Ljava/lang/String;
    .locals 3

    .line 307
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mShortenDateStringFormat:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->quick_panel_shorten_date_pattern:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mShortenDateStringPattern:Ljava/lang/String;

    .line 310
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mShortenDateStringPattern:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mShortenDateStringFormat:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 312
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mShortenDateStringFormat:Ljava/lang/String;

    const-string p0, ""

    return-object p0

    .line 316
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mCurrentShortenDate:Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    .line 317
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mShortenDateStringFormat:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mCurrentShortenDate:Ljava/util/Date;

    invoke-static {v0, p0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSmallTime()Ljava/lang/String;
    .locals 6

    .line 244
    invoke-static {}, Lcom/android/systemui/Rune;->isTesting()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "12:34"

    return-object p0

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-static {v0, v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 246
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mLocale:Ljava/util/Locale;

    invoke-static {v2}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v2

    if-eqz v0, :cond_2

    .line 248
    iget-object v3, v2, Llibcore/icu/LocaleData;->timeFormat_Hm:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v3, v2, Llibcore/icu/LocaleData;->timeFormat_hm:Ljava/lang/String;

    .line 249
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mClockFormatString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 250
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSmallTime recalulate time format (mClockFormatString:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mClockFormatString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", format:+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "QSClockBellTower"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    new-instance v4, Ljava/text/SimpleDateFormat;

    invoke-direct {v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mContentDescriptionFormat:Ljava/text/SimpleDateFormat;

    .line 252
    new-instance v4, Ljava/text/SimpleDateFormat;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/QSClockUtils;->getBasicClockFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mClockFormat:Ljava/text/SimpleDateFormat;

    if-eqz v0, :cond_3

    .line 255
    iget-object v0, v2, Llibcore/icu/LocaleData;->timeFormat_Hm:Ljava/lang/String;

    goto :goto_2

    :cond_3
    iget-object v0, v2, Llibcore/icu/LocaleData;->timeFormat_hm:Ljava/lang/String;

    :goto_2
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mClockFormatString:Ljava/lang/String;

    goto :goto_3

    .line 258
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mClockFormat:Ljava/text/SimpleDateFormat;

    .line 260
    :goto_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    const v0, 0xef00

    .line 261
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const v2, 0xef01

    .line 262
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v0, :cond_7

    if-le v2, v0, :cond_7

    .line 264
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    add-int/lit8 v2, v2, 0x1

    .line 265
    invoke-virtual {v3, v0, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 266
    invoke-virtual {v3, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result p0

    if-eqz p0, :cond_6

    move p0, v1

    .line 269
    :goto_4
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-le v0, p0, :cond_5

    invoke-virtual {v3, p0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_5

    add-int/lit8 p0, p0, 0x1

    goto :goto_4

    .line 272
    :cond_5
    invoke-virtual {v3, v1, p0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 274
    :cond_6
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_7
    return-object p0
.end method

.method public init(Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;)V
    .locals 1

    .line 112
    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getStatusBarContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mContext:Landroid/content/Context;

    .line 113
    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getMainHanlder()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mHandler:Landroid/os/Handler;

    .line 116
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mTimeBroadcastReceiver:Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;->register()V

    .line 119
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mCalendar:Ljava/util/Calendar;

    .line 120
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mLocale:Ljava/util/Locale;

    .line 123
    :cond_0
    const-class p1, Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    invoke-virtual {p1, v0}, Lcom/android/systemui/keyguard/Lifecycle;->addObserver(Ljava/lang/Object;)V

    .line 126
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "QSClockBellTower.init()   (((timeText:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->getSmallTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", demo:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mDemoMode:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", dateText:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->getDateViewText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")))"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QSClockBellTower"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public synthetic lambda$dispatchDemoCommand$0$QSClockBellTower()V
    .locals 0

    .line 331
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->ringBellOfTower()V

    return-void
.end method

.method public synthetic lambda$dispatchDemoCommand$1$QSClockBellTower()V
    .locals 1

    const/4 v0, 0x0

    .line 348
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->ringBellOfTower(Z)V

    return-void
.end method

.method public registerAudience(Ljava/lang/String;Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeAudience;)V
    .locals 2

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerAudience() ticket:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QSClockBellTower"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mAudienceList:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public ringBellOfTower()V
    .locals 1

    .line 215
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mDemoMode:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->ringBellOfTower(Z)V

    return-void
.end method

.method public unregisterAudience(Ljava/lang/String;)V
    .locals 2

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterAudience() ticket:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QSClockBellTower"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mAudienceList:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
