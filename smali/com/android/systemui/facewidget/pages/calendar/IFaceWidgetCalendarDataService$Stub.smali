.class public abstract Lcom/android/systemui/facewidget/pages/calendar/IFaceWidgetCalendarDataService$Stub;
.super Landroid/os/Binder;
.source "IFaceWidgetCalendarDataService.java"

# interfaces
.implements Lcom/android/systemui/facewidget/pages/calendar/IFaceWidgetCalendarDataService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/facewidget/pages/calendar/IFaceWidgetCalendarDataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/facewidget/pages/calendar/IFaceWidgetCalendarDataService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.systemui.facewidget.pages.calendar.IFaceWidgetCalendarDataService"

    .line 26
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/systemui/facewidget/pages/calendar/IFaceWidgetCalendarDataService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.android.systemui.facewidget.pages.calendar.IFaceWidgetCalendarDataService"

    .line 37
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 38
    instance-of v1, v0, Lcom/android/systemui/facewidget/pages/calendar/IFaceWidgetCalendarDataService;

    if-eqz v1, :cond_1

    .line 39
    check-cast v0, Lcom/android/systemui/facewidget/pages/calendar/IFaceWidgetCalendarDataService;

    return-object v0

    .line 41
    :cond_1
    new-instance v0, Lcom/android/systemui/facewidget/pages/calendar/IFaceWidgetCalendarDataService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/systemui/facewidget/pages/calendar/IFaceWidgetCalendarDataService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/android/systemui/facewidget/pages/calendar/IFaceWidgetCalendarDataService;
    .locals 1

    .line 146
    sget-object v0, Lcom/android/systemui/facewidget/pages/calendar/IFaceWidgetCalendarDataService$Stub$Proxy;->sDefaultImpl:Lcom/android/systemui/facewidget/pages/calendar/IFaceWidgetCalendarDataService;

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "com.android.systemui.facewidget.pages.calendar.IFaceWidgetCalendarDataService"

    if-eq p1, v0, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 84
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 54
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 59
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 64
    sget-object p1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    move-object v3, p1

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v6

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    .line 77
    invoke-interface/range {v1 .. v7}, Lcom/android/systemui/facewidget/pages/calendar/IFaceWidgetCalendarDataService;->getFaceWidgetCalendarData(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v0
.end method
