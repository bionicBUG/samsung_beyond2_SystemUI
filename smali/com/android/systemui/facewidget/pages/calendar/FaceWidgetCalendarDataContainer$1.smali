.class Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataContainer$1;
.super Ljava/lang/Object;
.source "FaceWidgetCalendarDataContainer.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataContainer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataContainer;
    .locals 0

    .line 165
    new-instance p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataContainer;

    invoke-direct {p0, p1}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataContainer;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 163
    invoke-virtual {p0, p1}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataContainer$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataContainer;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataContainer;
    .locals 0

    .line 169
    new-array p0, p1, [Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataContainer;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 163
    invoke-virtual {p0, p1}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataContainer$1;->newArray(I)[Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataContainer;

    move-result-object p0

    return-object p0
.end method
