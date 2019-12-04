.class public Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;
.super Ljava/lang/Object;
.source "FaceWidgetCalendarData.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable<",
        "Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public endTime:J

.field public id:J

.field public isAllDay:Z

.field public startTime:J

.field public title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 179
    new-instance v0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData$1;

    invoke-direct {v0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData$1;-><init>()V

    sput-object v0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 48
    iput-wide v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->id:J

    const-string v2, ""

    .line 49
    iput-object v2, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->title:Ljava/lang/String;

    .line 50
    iput-wide v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->startTime:J

    .line 51
    iput-wide v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->endTime:J

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->isAllDay:Z

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 3

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 48
    iput-wide v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->id:J

    const-string v2, ""

    .line 49
    iput-object v2, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->title:Ljava/lang/String;

    .line 50
    iput-wide v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->startTime:J

    .line 51
    iput-wide v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->endTime:J

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->isAllDay:Z

    .line 58
    invoke-virtual {p0, p1}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->copyFrom(Landroid/database/Cursor;)Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 3

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 48
    iput-wide v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->id:J

    const-string v2, ""

    .line 49
    iput-object v2, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->title:Ljava/lang/String;

    .line 50
    iput-wide v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->startTime:J

    .line 51
    iput-wide v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->endTime:J

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->isAllDay:Z

    .line 70
    invoke-virtual {p0, p1}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->copyFrom(Landroid/os/Bundle;)Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 48
    iput-wide v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->id:J

    const-string v2, ""

    .line 49
    iput-object v2, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->title:Ljava/lang/String;

    .line 50
    iput-wide v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->startTime:J

    .line 51
    iput-wide v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->endTime:J

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->isAllDay:Z

    .line 66
    invoke-virtual {p0, p1}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private compareString(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    const/4 p0, -0x1

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return p0

    :cond_0
    if-nez p2, :cond_1

    return p0

    :cond_1
    if-nez p1, :cond_2

    const/4 p0, 0x1

    return p0

    .line 222
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public compareTo(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;)I
    .locals 7

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 197
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->isAllDay:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p1, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->isAllDay:Z

    if-nez v1, :cond_1

    return v0

    .line 199
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->isAllDay:Z

    const/4 v2, 0x1

    if-nez v1, :cond_2

    iget-boolean v1, p1, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->isAllDay:Z

    if-eqz v1, :cond_2

    return v2

    .line 201
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->isAllDay:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p1, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->isAllDay:Z

    if-eqz v1, :cond_3

    .line 202
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->title:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->title:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->compareString(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    .line 205
    :cond_3
    iget-wide v3, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->startTime:J

    iget-wide v5, p1, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->startTime:J

    cmp-long v1, v3, v5

    if-gez v1, :cond_4

    return v0

    :cond_4
    cmp-long v0, v3, v5

    if-lez v0, :cond_5

    return v2

    .line 211
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->title:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->title:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->compareString(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 35
    check-cast p1, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;

    invoke-virtual {p0, p1}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->compareTo(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;)I

    move-result p0

    return p0
.end method

.method public copyFrom(Landroid/database/Cursor;)Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;
    .locals 0

    return-object p0
.end method

.method public copyFrom(Landroid/os/Bundle;)Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;
    .locals 4

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    const-wide/16 v0, -0x1

    const-string v2, "id"

    .line 92
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->id:J

    const/4 v2, 0x0

    const-string/jumbo v3, "title"

    .line 93
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->title:Ljava/lang/String;

    const-string/jumbo v2, "start_time"

    .line 94
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->startTime:J

    const-string v2, "end_time"

    .line 95
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->endTime:J

    const/4 v0, 0x0

    const-string v1, "is_all_day"

    .line 96
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->isAllDay:Z

    return-object p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getFaceWidgetCalendarActivityIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 128
    sget-object p1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->id:J

    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 129
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    .line 130
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->getFaceWidgetCalendarActivityLaunchOptions()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    return-object p1
.end method

.method protected getFaceWidgetCalendarActivityLaunchOptions()Landroid/os/Bundle;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getFormattedStartEndTime(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$string;->facewidget_event_time_all_day:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFormattedStartTime(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$string;->facewidget_event_time_all_day:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFormattedTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$string;->facewidget_event_my_event:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 124
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->title:Ljava/lang/String;

    return-object p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->id:J

    .line 173
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->title:Ljava/lang/String;

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->startTime:J

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->endTime:J

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->isAllDay:Z

    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 4

    .line 102
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 103
    iget-wide v1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->id:J

    const-string v3, "id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 104
    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->title:Ljava/lang/String;

    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-wide v1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->startTime:J

    const-string/jumbo v3, "start_time"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 106
    iget-wide v1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->endTime:J

    const-string v3, "end_time"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 107
    iget-boolean p0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->isAllDay:Z

    const-string v1, "is_all_day"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 140
    invoke-virtual {p0, v0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->toString(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString(Z)Ljava/lang/String;
    .locals 5

    .line 144
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy MMMM d (EEEE) HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[id = "

    .line 147
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "[start time = "

    .line 148
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->startTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "[end time = "

    .line 149
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->endTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "[is all day = "

    .line 150
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->isAllDay:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string p1, "[title = "

    .line 152
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->title:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 164
    iget-wide v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 165
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->title:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 166
    iget-wide v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->startTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 167
    iget-wide v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->endTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 168
    iget-boolean p0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->isAllDay:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
