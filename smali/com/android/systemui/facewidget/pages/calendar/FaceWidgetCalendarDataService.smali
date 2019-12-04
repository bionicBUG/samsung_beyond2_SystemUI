.class public Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataService;
.super Landroid/app/Service;
.source "FaceWidgetCalendarDataService.java"


# instance fields
.field private final mBinder:Lcom/android/systemui/facewidget/pages/calendar/IFaceWidgetCalendarDataService$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 48
    new-instance v0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataService$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataService$1;-><init>(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataService;)V

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataService;->mBinder:Lcom/android/systemui/facewidget/pages/calendar/IFaceWidgetCalendarDataService$Stub;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataService;->mBinder:Lcom/android/systemui/facewidget/pages/calendar/IFaceWidgetCalendarDataService$Stub;

    return-object p0
.end method

.method public onCreate()V
    .locals 1

    .line 38
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string p0, "FaceWidgetCalendarDataService"

    const-string v0, "FaceWidgetCalendarDataService created"

    .line 40
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
