.class public Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;
.super Ljava/lang/Object;
.source "FaceWidgetCalendarManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$EventChangedListener;,
        Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$LoadEventListCompletedListener;
    }
.end annotation


# static fields
.field private static final SETTINGS_VALUE_LISTENER_LIST:[Landroid/net/Uri;

.field private static sInstance:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mBootUpDataReloadTryCnt:I

.field private mContext:Landroid/content/Context;

.field private mCurAsyncTask:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTask;

.field private final mCurAsyncTaskItem:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTaskItem;

.field private mCurrentUserId:I

.field private mDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;",
            ">;"
        }
    .end annotation
.end field

.field private mEventChangedListener:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$EventChangedListener;

.field private mEventChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$EventChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mFaceWidgetCalendarChangeReceiver:Landroid/content/BroadcastReceiver;

.field private final mFaceWidgetCalendarDataConnection:Landroid/content/ServiceConnection;

.field protected mFaceWidgetCalendarDataService:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataServiceWrapper;

.field private mFaceWidgetCalendarSettingChangeReceiver:Landroid/content/BroadcastReceiver;

.field private final mFinishListener:Ljava/util/function/LongConsumer;

.field private mFlags:I

.field private final mGcRunnable:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field private mIs24HourMode:Z

.field private mIsFaceWidgetCalendarDataServiceBound:Z

.field private mKeyguardUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mLoadTodayEventsCompletedListener:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$LoadEventListCompletedListener;

.field private final mLoadTodayEventsRunnable:Ljava/lang/Runnable;

.field private mNextEventEndedPendingIntent:Landroid/app/PendingIntent;

.field private final mObserver:Landroid/database/ContentObserver;

.field private mQueryCnt:I

.field private mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private final mTimeTickReceiver:Landroid/content/BroadcastReceiver;

.field private final mUpdateFaceWidgetCalendarRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/net/Uri;

    const-string/jumbo v1, "time_12_24"

    .line 71
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->SETTINGS_VALUE_LISTENER_LIST:[Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mEventChangedListeners:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 91
    iput v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mFlags:I

    .line 93
    iput-boolean v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mIs24HourMode:Z

    .line 94
    iput v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mCurrentUserId:I

    .line 96
    iput-boolean v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mIsFaceWidgetCalendarDataServiceBound:Z

    .line 98
    iput v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mBootUpDataReloadTryCnt:I

    .line 99
    iput v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mQueryCnt:I

    .line 100
    new-instance v1, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTaskItem;

    invoke-direct {v1}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTaskItem;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mCurAsyncTaskItem:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTaskItem;

    const/4 v1, 0x0

    .line 101
    iput-object v1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mCurAsyncTask:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTask;

    .line 103
    new-instance v1, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$1;-><init>(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;)V

    iput-object v1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mFaceWidgetCalendarDataConnection:Landroid/content/ServiceConnection;

    .line 118
    new-instance v1, Lcom/android/systemui/facewidget/pages/calendar/-$$Lambda$FaceWidgetCalendarManager$h_pOvdeYGJfiyIlxZ9jwOQGUdjc;

    invoke-direct {v1, p0}, Lcom/android/systemui/facewidget/pages/calendar/-$$Lambda$FaceWidgetCalendarManager$h_pOvdeYGJfiyIlxZ9jwOQGUdjc;-><init>(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;)V

    iput-object v1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mUpdateFaceWidgetCalendarRunnable:Ljava/lang/Runnable;

    .line 119
    sget-object v1, Lcom/android/systemui/facewidget/pages/calendar/-$$Lambda$FaceWidgetCalendarManager$5onfjEf4uQfGGHHHLgCWkJuP7Xc;->INSTANCE:Lcom/android/systemui/facewidget/pages/calendar/-$$Lambda$FaceWidgetCalendarManager$5onfjEf4uQfGGHHHLgCWkJuP7Xc;

    iput-object v1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mGcRunnable:Ljava/lang/Runnable;

    .line 124
    new-instance v1, Lcom/android/systemui/facewidget/pages/calendar/-$$Lambda$FaceWidgetCalendarManager$cRch3wHsrIgp9SEacy_CUhGkr3c;

    invoke-direct {v1, p0}, Lcom/android/systemui/facewidget/pages/calendar/-$$Lambda$FaceWidgetCalendarManager$cRch3wHsrIgp9SEacy_CUhGkr3c;-><init>(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;)V

    iput-object v1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mFinishListener:Ljava/util/function/LongConsumer;

    .line 138
    new-instance v1, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$2;-><init>(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;)V

    iput-object v1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mKeyguardUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 154
    new-instance v1, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$3;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$3;-><init>(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mHandler:Landroid/os/Handler;

    .line 165
    new-instance v1, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$4;-><init>(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;)V

    iput-object v1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mLoadTodayEventsRunnable:Ljava/lang/Runnable;

    .line 172
    new-instance v1, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$5;-><init>(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;)V

    iput-object v1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mLoadTodayEventsCompletedListener:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$LoadEventListCompletedListener;

    .line 192
    new-instance v1, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$6;-><init>(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;)V

    iput-object v1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mFaceWidgetCalendarChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 199
    new-instance v1, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$7;-><init>(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;)V

    iput-object v1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mFaceWidgetCalendarSettingChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 209
    new-instance v1, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$8;

    invoke-direct {v1, p0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$8;-><init>(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;)V

    iput-object v1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mTimeTickReceiver:Landroid/content/BroadcastReceiver;

    .line 221
    new-instance v1, Lcom/android/systemui/facewidget/pages/calendar/-$$Lambda$FaceWidgetCalendarManager$jyQ261ZbOtA4_M5SbLmlpqNgA10;

    invoke-direct {v1, p0}, Lcom/android/systemui/facewidget/pages/calendar/-$$Lambda$FaceWidgetCalendarManager$jyQ261ZbOtA4_M5SbLmlpqNgA10;-><init>(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;)V

    iput-object v1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    .line 228
    new-instance v1, Lcom/android/systemui/facewidget/pages/calendar/-$$Lambda$FaceWidgetCalendarManager$_Z8khvkJW4SDO9YLKAjIQmUPVm4;

    invoke-direct {v1, p0}, Lcom/android/systemui/facewidget/pages/calendar/-$$Lambda$FaceWidgetCalendarManager$_Z8khvkJW4SDO9YLKAjIQmUPVm4;-><init>(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;)V

    iput-object v1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mEventChangedListener:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$EventChangedListener;

    .line 230
    new-instance v1, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$9;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$9;-><init>(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mObserver:Landroid/database/ContentObserver;

    .line 238
    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mContext:Landroid/content/Context;

    .line 239
    const-class v1, Landroid/app/AlarmManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mAlarmManager:Landroid/app/AlarmManager;

    .line 240
    new-instance p1, Landroid/content/Intent;

    const-string v1, "com.android.keyguard.facewidget.pages.calendar.NEXT_EVENT_ENDED"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 241
    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mContext:Landroid/content/Context;

    const/high16 v2, 0x10000000

    invoke-static {v1, v0, p1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mNextEventEndedPendingIntent:Landroid/app/PendingIntent;

    .line 242
    const-class p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->is24HourModeEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mIs24HourMode:Z

    .line 243
    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->registerReceivers()V

    .line 244
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->controlFaceWidgetCalendarDataServiceConnection(I)V

    const/4 p1, 0x1

    .line 246
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mObserver:Landroid/database/ContentObserver;

    const/4 v3, -0x2

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 248
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 251
    :goto_0
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEnabledFaceWidgetTodaysPage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {p0, p1}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->addFlags(I)V

    goto :goto_1

    .line 253
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->getInstance(Landroid/content/Context;)Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->getAODClockType()I

    move-result p1

    const v0, 0xc35e

    if-ne p1, v0, :cond_1

    const/4 p1, 0x2

    .line 254
    invoke-virtual {p0, p1}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->addFlags(I)V

    :cond_1
    :goto_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->handleFaceWidgetCalendarUpdated()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;I)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->controlFaceWidgetCalendarDataServiceConnection(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;Ljava/util/List;)Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->getNextEndEvent(Ljava/util/List;)Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->registerAlarm(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->unregisterAlarm()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->notifyEventChanged()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mFlags:I

    return p0
.end method

.method static synthetic access$1500(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;Z)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->handleFaceWidgetCalendarUpdated(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;)Landroid/database/ContentObserver;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mObserver:Landroid/database/ContentObserver;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;)Landroid/content/Context;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;)Ljava/lang/Runnable;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mUpdateFaceWidgetCalendarRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;)Landroid/os/Handler;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;)Ljava/lang/Runnable;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mLoadTodayEventsRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;)Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$LoadEventListCompletedListener;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mLoadTodayEventsCompletedListener:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$LoadEventListCompletedListener;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;)Ljava/util/ArrayList;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mDataList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$802(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mDataList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;Ljava/util/List;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->removeEndedEvents(Ljava/util/List;)V

    return-void
.end method

.method private bindFaceWidgetCalendarDataService()V
    .locals 6

    .line 502
    iget-boolean v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mIsFaceWidgetCalendarDataServiceBound:Z

    const-string v1, "FaceWidgetCalendarManager"

    if-nez v0, :cond_2

    .line 503
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.facewidget.pages.calendar.FaceWidgetCalendarDataService"

    .line 504
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 505
    iget-object v2, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mFaceWidgetCalendarDataConnection:Landroid/content/ServiceConnection;

    .line 506
    iget v4, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mCurrentUserId:I

    if-nez v4, :cond_0

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    goto :goto_0

    :cond_0
    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, v4}, Landroid/os/UserHandle;-><init>(I)V

    move-object v4, v5

    :goto_0
    const/4 v5, 0x1

    .line 505
    invoke-virtual {v2, v0, v3, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 507
    iput-boolean v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mIsFaceWidgetCalendarDataServiceBound:Z

    const-string p0, "Cannot bind to com.android.systemui.facewidget.pages.calendar.FaceWidgetCalendarDataService"

    .line 508
    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 510
    :cond_1
    iput-boolean v5, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mIsFaceWidgetCalendarDataServiceBound:Z

    const-string p0, "FaceWidgetCalendar data service is started"

    .line 511
    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string p0, "FaceWidgetCalendar data service is already started"

    .line 514
    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private controlFaceWidgetCalendarDataServiceConnection(I)V
    .locals 0

    .line 494
    iput p1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mCurrentUserId:I

    .line 495
    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->unbindFaceWidgetCalendarDataService()V

    if-eqz p1, :cond_0

    .line 497
    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->bindFaceWidgetCalendarDataService()V

    :cond_0
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;
    .locals 2

    const-class v0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;

    monitor-enter v0

    .line 259
    :try_start_0
    sget-object v1, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->sInstance:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;

    if-nez v1, :cond_0

    .line 260
    new-instance v1, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->sInstance:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;

    .line 262
    :cond_0
    sget-object p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->sInstance:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getNextEndEvent(Ljava/util/List;)Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;",
            ">;)",
            "Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 412
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 414
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const-wide v3, 0x7fffffffffffffffL

    .line 418
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;

    .line 419
    invoke-direct {p0, v5}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->isValidEndTime(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-wide v6, v5, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->endTime:J

    cmp-long v8, v6, v3

    if-gez v8, :cond_1

    cmp-long v8, v6, v1

    if-lez v8, :cond_1

    move-object v0, v5

    move-wide v3, v6

    goto :goto_0

    .line 424
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Next end = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    const-string p1, "null"

    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FaceWidgetCalendarManager"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    return-object v0
.end method

.method private handleFaceWidgetCalendarUpdated()V
    .locals 1

    const/4 v0, 0x1

    .line 266
    invoke-direct {p0, v0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->handleFaceWidgetCalendarUpdated(Z)V

    return-void
.end method

.method private handleFaceWidgetCalendarUpdated(Z)V
    .locals 2

    .line 270
    iget v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mFlags:I

    if-nez v0, :cond_0

    const-string p0, "FaceWidgetCalendarManager"

    const-string p1, "handleFaceWidgetCalendarUpdated() mFlags is 0"

    .line 271
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 275
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 276
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mLoadTodayEventsRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 278
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 282
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 283
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-void
.end method

.method private isValidEndTime(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;)Z
    .locals 4

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 431
    :cond_0
    iget-boolean v0, p1, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->isAllDay:Z

    if-nez v0, :cond_1

    iget-wide v0, p1, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->endTime:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    iget-wide v2, p1, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->startTime:J

    cmp-long p1, v0, v2

    if-ltz p1, :cond_1

    const/4 p0, 0x1

    :cond_1
    return p0
.end method

.method public static synthetic lambda$h_pOvdeYGJfiyIlxZ9jwOQGUdjc(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->handleFaceWidgetCalendarUpdated()V

    return-void
.end method

.method static synthetic lambda$new$0()V
    .locals 0

    .line 120
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 121
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    return-void
.end method

.method private notifyEventChanged()V
    .locals 3

    .line 550
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mEventChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$EventChangedListener;

    if-nez v1, :cond_0

    goto :goto_0

    .line 552
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mDataList:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$EventChangedListener;->onChanged(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private registerAlarm(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;)V
    .locals 3

    .line 435
    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->unregisterAlarm()V

    if-nez p1, :cond_0

    return-void

    .line 438
    :cond_0
    iget-wide v0, p1, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->endTime:J

    .line 439
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v2, 0x1

    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mNextEventEndedPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v2, v0, v1, p0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method private registerReceivers()V
    .locals 12

    .line 370
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.PROVIDER_CHANGED"

    .line 371
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "content"

    .line 372
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v0, "com.android.calendar"

    const/4 v1, 0x0

    .line 373
    invoke-virtual {v3, v0, v1}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mFaceWidgetCalendarChangeReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 376
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.samsung.android.calendar.ACTION_UPDATE_WIDGET"

    .line 377
    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.android.keyguard.facewidget.pages.calendar.NEXT_EVENT_ENDED"

    .line 378
    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.TIME_SET"

    .line 379
    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    .line 380
    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 381
    iget-object v6, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mFaceWidgetCalendarChangeReceiver:Landroid/content/BroadcastReceiver;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 383
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.sec.android.intent.CHANGE_SHARE"

    .line 384
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mFaceWidgetCalendarSettingChangeReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 388
    new-instance v9, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.TIME_TICK"

    invoke-direct {v9, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 390
    iget-object v6, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mTimeTickReceiver:Landroid/content/BroadcastReceiver;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    sget-object v0, Lcom/android/systemui/Dependency;->TIME_TICK_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 391
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/os/Handler;

    .line 390
    invoke-virtual/range {v6 .. v11}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 393
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    sget-object v2, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->SETTINGS_VALUE_LISTENER_LIST:[Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 394
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mKeyguardUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 395
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mEventChangedListener:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$EventChangedListener;

    invoke-virtual {p0, v0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->addEventChangedListener(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$EventChangedListener;)V

    return-void
.end method

.method private removeEndedEvents(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 401
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 403
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_0
    if-ltz p0, :cond_2

    .line 404
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;

    iget-wide v2, v2, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->endTime:J

    .line 405
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;

    iget-boolean v4, v4, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->isAllDay:Z

    if-nez v4, :cond_1

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    cmp-long v2, v2, v0

    if-gez v2, :cond_1

    .line 406
    invoke-interface {p1, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static roundDownMillis(J)J
    .locals 2

    const-wide/16 v0, 0x3e8

    .line 366
    rem-long v0, p0, v0

    sub-long/2addr p0, v0

    return-wide p0
.end method

.method private sendDataToExternal()V
    .locals 2

    .line 468
    iget v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mFlags:I

    if-nez v0, :cond_0

    const-string p0, "FaceWidgetCalendarManager"

    const-string/jumbo v0, "useless request"

    .line 469
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/facewidget/pages/calendar/-$$Lambda$FaceWidgetCalendarManager$HaVoyNnuLkMcuU6_Jt1boRQ2p78;

    invoke-direct {v1, p0}, Lcom/android/systemui/facewidget/pages/calendar/-$$Lambda$FaceWidgetCalendarManager$HaVoyNnuLkMcuU6_Jt1boRQ2p78;-><init>(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private declared-synchronized unbindFaceWidgetCalendarDataService()V
    .locals 2

    monitor-enter p0

    .line 519
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mIsFaceWidgetCalendarDataServiceBound:Z

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mFaceWidgetCalendarDataConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 521
    iput-boolean v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mIsFaceWidgetCalendarDataServiceBound:Z

    const/4 v0, 0x0

    .line 522
    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mFaceWidgetCalendarDataService:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataServiceWrapper;

    const-string v0, "FaceWidgetCalendarManager"

    const-string v1, "FaceWidgetCalendar data service is unbound"

    .line 523
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "FaceWidgetCalendarManager"

    const-string v1, "FaceWidgetCalendar data service is already unbound"

    .line 525
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 527
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private unregisterAlarm()V
    .locals 1

    .line 443
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mNextEventEndedPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method


# virtual methods
.method addEventChangedListener(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$EventChangedListener;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 532
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mEventChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 533
    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mEventChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_1

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 535
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mEventChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 536
    invoke-virtual {p0, v0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->removeEventChangedListener(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$EventChangedListener;)V

    .line 537
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mDataList:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 538
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mDataList:Ljava/util/ArrayList;

    .line 539
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mLoadTodayEventsCompletedListener:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$LoadEventListCompletedListener;

    invoke-virtual {p0, p1}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->loadTodayEvents(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$LoadEventListCompletedListener;)V

    goto :goto_1

    .line 541
    :cond_3
    invoke-interface {p1, v0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$EventChangedListener;->onChanged(Ljava/util/ArrayList;)V

    :goto_1
    return-void
.end method

.method public addFlags(I)V
    .locals 1

    .line 447
    iget v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mFlags:I

    return-void
.end method

.method getCachedEvents()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;",
            ">;"
        }
    .end annotation

    .line 353
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mDataList:Ljava/util/ArrayList;

    return-object p0
.end method

.method getEventCnt()I
    .locals 0

    .line 357
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mDataList:Ljava/util/ArrayList;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 358
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method getFaceWidgetCalendarDataService()Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataServiceWrapper;
    .locals 0

    .line 335
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mFaceWidgetCalendarDataService:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataServiceWrapper;

    return-object p0
.end method

.method public hasFlag(I)Z
    .locals 0

    .line 455
    iget p0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mFlags:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$new$1$FaceWidgetCalendarManager(J)V
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mCurAsyncTaskItem:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTaskItem;

    iget-wide v0, v0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTaskItem;->seq:J

    cmp-long p1, v0, p1

    if-nez p1, :cond_0

    const-string p1, "FaceWidgetCalendarManager"

    const-string p2, "reset"

    .line 127
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mCurAsyncTaskItem:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTaskItem;

    invoke-virtual {p1}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTaskItem;->reset()V

    const/4 p1, 0x0

    .line 129
    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mCurAsyncTask:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTask;

    .line 131
    :cond_0
    iget p1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mQueryCnt:I

    add-int/lit8 p1, p1, 0x3

    iput p1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mQueryCnt:I

    .line 132
    iget p1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mQueryCnt:I

    const/16 p2, 0xc8

    if-le p1, p2, :cond_1

    const/4 p1, 0x0

    .line 133
    iput p1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mQueryCnt:I

    .line 134
    const-class p1, Lcom/android/systemui/UiOffloadThread;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/UiOffloadThread;

    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mGcRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_1
    return-void
.end method

.method public synthetic lambda$new$2$FaceWidgetCalendarManager(Landroid/net/Uri;)V
    .locals 2

    .line 222
    sget-object v0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->SETTINGS_VALUE_LISTENER_LIST:[Landroid/net/Uri;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 223
    const-class p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->is24HourModeEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mIs24HourMode:Z

    .line 224
    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->notifyEventChanged()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$new$3$FaceWidgetCalendarManager(Ljava/util/ArrayList;)V
    .locals 0

    .line 228
    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->sendDataToExternal()V

    return-void
.end method

.method public synthetic lambda$sendDataToExternal$4$FaceWidgetCalendarManager()V
    .locals 6

    .line 475
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mDataList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 476
    :cond_0
    invoke-static {}, Lcom/android/systemui/doze/PluginAODManager;->getInstance()Lcom/android/systemui/doze/PluginAODManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/doze/PluginAODManager;->isPlugged()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 478
    :cond_1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 479
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 480
    iget-object v2, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mDataList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 481
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;

    .line 482
    iget-object v5, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->getFormattedStartTime(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 483
    iget-object v5, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->getFormattedTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 485
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 488
    invoke-static {}, Lcom/android/systemui/doze/PluginAODManager;->getInstance()Lcom/android/systemui/doze/PluginAODManager;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/doze/PluginAODManager;->updateCalendarData(Ljava/util/List;Ljava/util/List;)V

    return-void

    :catchall_0
    move-exception p0

    .line 485
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method loadTodayEvents(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$LoadEventListCompletedListener;)V
    .locals 21

    move-object/from16 v1, p0

    .line 288
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v9, 0x1

    .line 289
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v10, 0x2

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v11, 0x5

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v2, 0xb

    .line 290
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/4 v8, 0x0

    move-object v2, v0

    .line 289
    invoke-virtual/range {v2 .. v8}, Ljava/util/Calendar;->set(IIIIII)V

    .line 291
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    .line 293
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 294
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v14

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v15, v4, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v12, v3

    invoke-virtual/range {v12 .. v18}, Ljava/util/Calendar;->set(IIIIII)V

    .line 296
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->roundDownMillis(J)J

    move-result-wide v4

    .line 297
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->roundDownMillis(J)J

    move-result-wide v13

    .line 298
    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    int-to-long v6, v0

    add-long/2addr v6, v4

    invoke-virtual {v2}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v0

    int-to-long v8, v0

    add-long/2addr v6, v8

    invoke-static {v6, v7}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->roundDownMillis(J)J

    move-result-wide v11

    .line 299
    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    int-to-long v2, v0

    add-long/2addr v2, v13

    invoke-static {v2, v3}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->roundDownMillis(J)J

    move-result-wide v2

    .line 301
    iget-object v6, v1, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mCurAsyncTaskItem:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTaskItem;

    move-wide v7, v4

    move-wide v9, v13

    move-wide v15, v11

    move-wide/from16 v19, v13

    move-wide v13, v2

    invoke-virtual/range {v6 .. v14}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTaskItem;->equals(JJJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FaceWidgetCalendarManager"

    const-string v1, "loadTodayEvents already loading"

    .line 302
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 306
    :cond_0
    iget-object v0, v1, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mCurAsyncTask:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTask;

    const/4 v6, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v7, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v7, :cond_2

    .line 307
    iget-object v0, v1, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mCurAsyncTask:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTask;

    invoke-virtual {v0, v6}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 309
    iget-object v0, v1, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mCurAsyncTaskItem:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTaskItem;

    iget-object v0, v0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTaskItem;->cancelSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 310
    iget-object v0, v1, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mCurAsyncTaskItem:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTaskItem;

    iget-object v0, v0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTaskItem;->cancelSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 313
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->handleFaceWidgetCalendarUpdated()V

    return-void

    .line 317
    :cond_2
    iget-object v0, v1, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mCurAsyncTaskItem:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTaskItem;

    new-instance v7, Landroid/os/CancellationSignal;

    invoke-direct {v7}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v7, v0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTaskItem;->cancelSignal:Landroid/os/CancellationSignal;

    .line 318
    iget-object v0, v1, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mCurAsyncTaskItem:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTaskItem;

    iput-wide v4, v0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTaskItem;->todayStartTime:J

    move-wide/from16 v4, v19

    .line 319
    iput-wide v4, v0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTaskItem;->todayEndTime:J

    move-wide v4, v15

    .line 320
    iput-wide v4, v0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTaskItem;->todayTimezoneStartTime:J

    .line 321
    iput-wide v2, v0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTaskItem;->todayTimezoneEndTime:J

    .line 322
    iget-wide v2, v0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTaskItem;->seq:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTaskItem;->seq:J

    .line 325
    :try_start_0
    new-instance v2, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTask;

    iget-object v3, v1, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTaskItem;

    invoke-direct {v4, v0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTaskItem;-><init>(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTaskItem;)V

    iget-object v0, v1, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mFinishListener:Ljava/util/function/LongConsumer;

    move-object/from16 v5, p1

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTask;-><init>(Landroid/content/Context;Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTaskItem;Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$LoadEventListCompletedListener;Ljava/util/function/LongConsumer;)V

    iput-object v2, v1, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mCurAsyncTask:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTask;

    .line 327
    iget-object v0, v1, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mCurAsyncTask:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTask;

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v2, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 329
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 330
    iget-object v0, v1, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mFinishListener:Ljava/util/function/LongConsumer;

    iget-object v1, v1, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mCurAsyncTaskItem:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTaskItem;

    iget-wide v1, v1, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTaskItem;->seq:J

    invoke-interface {v0, v1, v2}, Ljava/util/function/LongConsumer;->accept(J)V

    :goto_0
    return-void
.end method

.method public onConfigurationChanged()V
    .locals 0

    .line 459
    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->sendDataToExternal()V

    return-void
.end method

.method removeEventChangedListener(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$EventChangedListener;)V
    .locals 0

    .line 546
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mEventChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeFlags(I)V
    .locals 1

    .line 451
    iget v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mFlags:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mFlags:I

    return-void
.end method

.method public requestFaceWidgetCalendarData()V
    .locals 2

    const-string v0, "FaceWidgetCalendarManager"

    const-string v1, "requestFaceWidgetCalendarData()"

    .line 463
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->sendDataToExternal()V

    return-void
.end method

.method retry()V
    .locals 3

    .line 339
    iget v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mBootUpDataReloadTryCnt:I

    const-string v1, "FaceWidgetCalendarManager"

    const/16 v2, 0xa

    if-ge v0, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 341
    iput v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mBootUpDataReloadTryCnt:I

    const-string v0, "FaceWidgetCalendarProvider isn\'t ready yet. Try to reload after 10000ms."

    .line 342
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mUpdateFaceWidgetCalendarRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mUpdateFaceWidgetCalendarRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mUpdateFaceWidgetCalendarRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    const-string p0, "We tried to reload calendar data over 10 times but it was failed. Need to check in system side."

    .line 348
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
