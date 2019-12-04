.class Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTask;
.super Landroid/os/AsyncTask;
.source "FaceWidgetCalendarAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFinishListener:Ljava/util/function/LongConsumer;

.field private mListener:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$LoadEventListCompletedListener;

.field private mTaskItem:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTaskItem;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 134
    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTaskItem;Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$LoadEventListCompletedListener;Ljava/util/function/LongConsumer;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTask;->mContext:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTask;->mTaskItem:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTaskItem;

    .line 33
    iput-object p3, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTask;->mListener:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$LoadEventListCompletedListener;

    .line 34
    iput-object p4, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTask;->mFinishListener:Ljava/util/function/LongConsumer;

    return-void
.end method

.method private finished()V
    .locals 4

    .line 82
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTask;->mFinishListener:Ljava/util/function/LongConsumer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 83
    iget-object v2, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTask;->mTaskItem:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTaskItem;

    iget-wide v2, v2, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTaskItem;->seq:J

    invoke-interface {v0, v2, v3}, Ljava/util/function/LongConsumer;->accept(J)V

    .line 84
    iput-object v1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTask;->mFinishListener:Ljava/util/function/LongConsumer;

    .line 87
    :cond_0
    iput-object v1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTask;->mTaskItem:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTaskItem;

    .line 88
    iput-object v1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTask;->mContext:Landroid/content/Context;

    .line 89
    iput-object v1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTask;->mListener:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$LoadEventListCompletedListener;

    return-void
.end method

.method private getEventsFromCalendar()Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataContainer;
    .locals 12

    .line 97
    sget-object v0, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 98
    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTask;->mTaskItem:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTaskItem;

    iget-wide v1, v1, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTaskItem;->todayStartTime:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 99
    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTask;->mTaskItem:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTaskItem;

    iget-wide v1, v1, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTaskItem;->todayEndTime:J

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 102
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    sget-object v8, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEvent;->TABLE_PROJECTION:[Ljava/lang/String;

    const-string v0, "0"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v10

    const-string v0, "(allDay= ?) AND (deleted= 0) AND (visible= 1)"

    const/4 v6, 0x1

    const/4 v11, 0x0

    move-object v5, p0

    move-object v9, v0

    .line 101
    invoke-direct/range {v5 .. v11}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTask;->query(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataContainer;

    move-result-object v1

    .line 104
    sget-object v2, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 105
    iget-object v5, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTask;->mTaskItem:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTaskItem;

    iget-wide v5, v5, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTaskItem;->todayTimezoneStartTime:J

    add-long/2addr v5, v3

    invoke-static {v2, v5, v6}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 106
    iget-object v5, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTask;->mTaskItem:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTaskItem;

    iget-wide v5, v5, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTaskItem;->todayTimezoneEndTime:J

    sub-long/2addr v5, v3

    invoke-static {v2, v5, v6}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 108
    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTask;->getHideContactsEvents()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 109
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AND (contact_id is null)"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    move-object v7, v0

    const/4 v4, 0x1

    .line 113
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    sget-object v6, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEvent;->TABLE_PROJECTION:[Ljava/lang/String;

    const-string v0, "1"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object v3, p0

    .line 112
    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTask;->query(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataContainer;

    move-result-object v0

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 119
    :cond_1
    new-instance v2, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataContainer;

    invoke-direct {v2}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataContainer;-><init>()V

    .line 120
    invoke-virtual {v2, v1}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataContainer;->addAll(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataContainer;)V

    .line 121
    invoke-virtual {v2, v0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataContainer;->addAll(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataContainer;)V

    .line 122
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTask;->mTaskItem:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTaskItem;

    iget-wide v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTaskItem;->todayStartTime:J

    iget-wide v3, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTaskItem;->todayEndTime:J

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataContainer;->resetTimeForDay(JJ)Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataContainer;->sort()V

    return-object v2
.end method

.method private getHideContactsEvents()Z
    .locals 6

    .line 129
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTask;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string p0, "content://com.sec.android.calendar.preference/PreferenceBoolean"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "preferences_hide_contacts_events"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 131
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 132
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 129
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p0, :cond_0

    .line 134
    invoke-static {v0, p0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTask;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_0
    throw v1

    :cond_1
    :goto_0
    if-eqz p0, :cond_2

    const/4 v1, 0x0

    invoke-static {v1, p0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTask;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_2
    return v0
.end method

.method private query(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataContainer;
    .locals 9

    .line 140
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->getFaceWidgetCalendarDataService()Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataServiceWrapper;

    move-result-object v1

    const/4 v0, 0x0

    if-nez v1, :cond_2

    const-string v1, "FaceWidgetCalendarManager"

    const-string v2, "No service bound. Query to current context."

    .line 142
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTask;->mTaskItem:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTaskItem;

    iget-object v8, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTaskItem;->cancelSignal:Landroid/os/CancellationSignal;

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v2 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    .line 146
    :try_start_0
    new-instance p2, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataContainer;

    invoke-direct {p2, p1, p0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataContainer;-><init>(ILandroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 147
    invoke-static {v0, p0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTask;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_0
    return-object p2

    :catchall_0
    move-exception p1

    .line 144
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p0, :cond_1

    .line 147
    invoke-static {p1, p0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTask;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_1
    throw p2

    :cond_2
    if-eqz v1, :cond_3

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 151
    :try_start_2
    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataServiceWrapper;->getFaceWidgetCalendarData(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_3
    move-object p0, v0

    :goto_0
    if-nez p0, :cond_4

    return-object v0

    .line 156
    :cond_4
    new-instance p1, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataContainer;

    invoke-direct {p1, p0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataContainer;-><init>(Ljava/util/List;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    .line 158
    :goto_1
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 19
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    const-string v1, "CalendarAsyncTask"

    const-string v2, "begin"

    .line 39
    invoke-static {v1, v2, v0}, Lcom/android/systemui/util/LogUtil;->dm(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 42
    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTask;->getEventsFromCalendar()Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataContainer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 43
    iget-object v3, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTask;->mTaskItem:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTaskItem;

    iget-object v3, v3, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTaskItem;->cancelSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v3}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p0

    if-nez p0, :cond_0

    .line 44
    new-instance p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataContainer;

    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataContainer;-><init>()V

    .line 45
    invoke-virtual {p0, v2}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataContainer;->addAll(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataContainer;)V

    .line 46
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataContainer;->getDataList()Ljava/util/ArrayList;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 53
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_0
    const-string p0, "cancelled"

    .line 50
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_0
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "end: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    :cond_1
    const-string v2, "null"

    :goto_1
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {v1, p0, p1}, Lcom/android/systemui/util/LogUtil;->dm(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .line 19
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTask;->onCancelled(Ljava/util/List;)V

    return-void
.end method

.method protected onCancelled(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;",
            ">;)V"
        }
    .end annotation

    .line 63
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "CalendarAsyncTask"

    const-string v1, "onCancelled"

    .line 64
    invoke-static {v0, v1, p1}, Lcom/android/systemui/util/LogUtil;->dm(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTask;->finished()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 19
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 71
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTask;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->retry()V

    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTask;->mListener:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$LoadEventListCompletedListener;

    if-eqz v0, :cond_1

    .line 76
    invoke-interface {v0, p1}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$LoadEventListCompletedListener;->onCompleted(Ljava/util/List;)V

    .line 78
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTask;->finished()V

    return-void
.end method
