.class public Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarTask;
.super Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;
.source "FaceWidgetCalendarTask.java"


# static fields
.field public static final TABLE_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "_id"

    const-string/jumbo v1, "subject"

    .line 37
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarTask;->TABLE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;-><init>(Landroid/database/Cursor;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;-><init>(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic copyFrom(Landroid/database/Cursor;)Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarTask;->copyFrom(Landroid/database/Cursor;)Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarTask;

    move-result-object p0

    return-object p0
.end method

.method public copyFrom(Landroid/database/Cursor;)Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarTask;
    .locals 2

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 87
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->id:J

    const/4 v0, 0x1

    .line 88
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->title:Ljava/lang/String;

    .line 89
    iput-boolean v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->isAllDay:Z

    return-object p0
.end method

.method protected getFaceWidgetCalendarActivityLaunchOptions()Landroid/os/Bundle;
    .locals 4

    .line 70
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x1

    const-string/jumbo v2, "task"

    .line 71
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 72
    iget-wide v2, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->id:J

    const-string p0, "selected"

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 p0, 0x0

    const-string v2, "action_view_focus"

    .line 73
    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "launch_from_inside"

    .line 74
    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "DetailMode"

    .line 75
    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public getFormattedStartEndTime(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$string;->facewidget_event_task:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFormattedStartTime(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$string;->facewidget_event_task:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
