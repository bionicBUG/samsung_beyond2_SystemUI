.class Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataService$1;
.super Lcom/android/systemui/facewidget/pages/calendar/IFaceWidgetCalendarDataService$Stub;
.source "FaceWidgetCalendarDataService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataService;


# direct methods
.method constructor <init>(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataService;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataService$1;->this$0:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataService;

    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/calendar/IFaceWidgetCalendarDataService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getFaceWidgetCalendarData(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 6
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

    .line 51
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataService$1;->this$0:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataService;

    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 p0, 0x0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 54
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    if-nez p2, :cond_1

    return-object p0

    .line 58
    :cond_1
    :try_start_0
    new-instance p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataContainer;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataContainer;-><init>(ILandroid/database/Cursor;)V

    .line 59
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataContainer;->toBundleList()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    throw p0
.end method
