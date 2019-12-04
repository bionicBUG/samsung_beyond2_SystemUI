.class Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTaskItem;
.super Ljava/lang/Object;
.source "FaceWidgetCalendarAsyncTaskItem.java"


# instance fields
.field cancelSignal:Landroid/os/CancellationSignal;

.field seq:J

.field todayEndTime:J

.field todayStartTime:J

.field todayTimezoneEndTime:J

.field todayTimezoneStartTime:J


# direct methods
.method constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTaskItem;->reset()V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTaskItem;)V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iget-wide v0, p1, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTaskItem;->todayStartTime:J

    iput-wide v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTaskItem;->todayStartTime:J

    .line 19
    iget-wide v0, p1, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTaskItem;->todayEndTime:J

    iput-wide v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTaskItem;->todayEndTime:J

    .line 20
    iget-wide v0, p1, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTaskItem;->todayTimezoneStartTime:J

    iput-wide v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTaskItem;->todayTimezoneStartTime:J

    .line 21
    iget-wide v0, p1, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTaskItem;->todayTimezoneEndTime:J

    iput-wide v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTaskItem;->todayTimezoneEndTime:J

    .line 22
    iget-object v0, p1, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTaskItem;->cancelSignal:Landroid/os/CancellationSignal;

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTaskItem;->cancelSignal:Landroid/os/CancellationSignal;

    .line 23
    iget-wide v0, p1, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTaskItem;->seq:J

    iput-wide v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTaskItem;->seq:J

    return-void
.end method


# virtual methods
.method equals(JJJJ)Z
    .locals 2

    .line 28
    iget-wide v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTaskItem;->todayStartTime:J

    cmp-long p1, v0, p1

    if-nez p1, :cond_0

    iget-wide p1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTaskItem;->todayEndTime:J

    cmp-long p1, p1, p3

    if-nez p1, :cond_0

    iget-wide p1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTaskItem;->todayTimezoneStartTime:J

    cmp-long p1, p1, p5

    if-nez p1, :cond_0

    iget-wide p0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTaskItem;->todayTimezoneEndTime:J

    cmp-long p0, p0, p7

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method reset()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 33
    iput-wide v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTaskItem;->todayEndTime:J

    iput-wide v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTaskItem;->todayTimezoneStartTime:J

    iput-wide v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTaskItem;->todayEndTime:J

    iput-wide v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTaskItem;->todayStartTime:J

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarAsyncTaskItem;->cancelSignal:Landroid/os/CancellationSignal;

    return-void
.end method
