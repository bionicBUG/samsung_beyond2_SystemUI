.class public Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEvent;
.super Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;
.source "FaceWidgetCalendarEvent.java"


# static fields
.field public static final TABLE_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "event_id"

    const-string/jumbo v1, "title"

    const-string v2, "begin"

    const-string v3, "end"

    const-string v4, "allDay"

    .line 31
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEvent;->TABLE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;-><init>(Landroid/database/Cursor;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;-><init>(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic copyFrom(Landroid/database/Cursor;)Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEvent;->copyFrom(Landroid/database/Cursor;)Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEvent;

    move-result-object p0

    return-object p0
.end method

.method public copyFrom(Landroid/database/Cursor;)Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEvent;
    .locals 5

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 75
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->id:J

    const/4 v0, 0x1

    .line 76
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->title:Ljava/lang/String;

    const/4 v1, 0x2

    .line 77
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->startTime:J

    const/4 v1, 0x3

    .line 78
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->endTime:J

    const/4 v1, 0x4

    .line 79
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long p1, v1, v3

    if-nez p1, :cond_1

    iput-boolean v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->isAllDay:Z

    :cond_1
    return-object p0
.end method

.method protected getFaceWidgetCalendarActivityLaunchOptions()Landroid/os/Bundle;
    .locals 4

    .line 120
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 121
    iget-wide v1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->startTime:J

    const-string v3, "beginTime"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 122
    iget-wide v1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->endTime:J

    const-string p0, "endTime"

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p0, "DetailMode"

    const/4 v1, 0x1

    .line 123
    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "launch_from_widget"

    const/4 v1, 0x0

    .line 124
    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public getFormattedStartEndTime(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 104
    iget-boolean v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->isAllDay:Z

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$string;->facewidget_event_time_all_day:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 108
    :cond_0
    invoke-static {p1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p1

    .line 109
    iget-wide v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->startTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->endTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 111
    :cond_1
    iget-wide v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->endTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->startTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " -"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 114
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->startTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->endTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFormattedStartTime(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 90
    iget-boolean v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->isAllDay:Z

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$string;->facewidget_event_time_all_day:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 94
    :cond_0
    invoke-static {p1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p1

    .line 95
    iget-wide v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->startTime:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->endTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 98
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public resetTimeForDay(JJ)V
    .locals 2

    .line 130
    iget-boolean v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->isAllDay:Z

    if-eqz v0, :cond_0

    return-void

    .line 132
    :cond_0
    iget-wide v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->startTime:J

    cmp-long v0, v0, p1

    if-gtz v0, :cond_1

    iget-wide v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->endTime:J

    cmp-long v0, p3, v0

    if-gtz v0, :cond_1

    const/4 p1, 0x1

    .line 133
    iput-boolean p1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->isAllDay:Z

    goto :goto_0

    .line 134
    :cond_1
    iget-wide v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->startTime:J

    cmp-long p1, v0, p1

    const-wide/16 v0, -0x1

    if-gez p1, :cond_2

    .line 135
    iput-wide v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->startTime:J

    goto :goto_0

    .line 136
    :cond_2
    iget-wide p1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->endTime:J

    cmp-long p1, p3, p1

    if-gtz p1, :cond_3

    .line 137
    iput-wide v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->endTime:J

    :cond_3
    :goto_0
    return-void
.end method
