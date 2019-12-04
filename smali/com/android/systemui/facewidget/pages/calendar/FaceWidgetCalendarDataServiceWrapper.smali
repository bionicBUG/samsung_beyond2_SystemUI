.class public Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataServiceWrapper;
.super Ljava/lang/Object;
.source "FaceWidgetCalendarDataServiceWrapper.java"

# interfaces
.implements Lcom/android/systemui/facewidget/pages/calendar/IFaceWidgetCalendarDataService;


# instance fields
.field private mService:Lcom/android/systemui/facewidget/pages/calendar/IFaceWidgetCalendarDataService;


# direct methods
.method public constructor <init>(Lcom/android/systemui/facewidget/pages/calendar/IFaceWidgetCalendarDataService;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataServiceWrapper;->mService:Lcom/android/systemui/facewidget/pages/calendar/IFaceWidgetCalendarDataService;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataServiceWrapper;->mService:Lcom/android/systemui/facewidget/pages/calendar/IFaceWidgetCalendarDataService;

    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public getFaceWidgetCalendarData(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/net/Uri;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataServiceWrapper;->mService:Lcom/android/systemui/facewidget/pages/calendar/IFaceWidgetCalendarDataService;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/systemui/facewidget/pages/calendar/IFaceWidgetCalendarDataService;->getFaceWidgetCalendarData(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
