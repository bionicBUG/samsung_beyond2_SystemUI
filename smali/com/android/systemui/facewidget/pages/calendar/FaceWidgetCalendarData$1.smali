.class Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData$1;
.super Ljava/lang/Object;
.source "FaceWidgetCalendarData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;
    .locals 0

    .line 181
    new-instance p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;

    invoke-direct {p0, p1}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 179
    invoke-virtual {p0, p1}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;
    .locals 0

    .line 185
    new-array p0, p1, [Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 179
    invoke-virtual {p0, p1}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData$1;->newArray(I)[Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;

    move-result-object p0

    return-object p0
.end method
