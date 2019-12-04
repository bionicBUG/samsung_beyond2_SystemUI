.class Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$1;
.super Ljava/lang/Object;
.source "FaceWidgetCalendarManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$1;->this$0:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "FaceWidgetCalendarManager"

    const-string v0, "FaceWidgetCalendar data service connected."

    .line 106
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$1;->this$0:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;

    new-instance v0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataServiceWrapper;

    invoke-static {p2}, Lcom/android/systemui/facewidget/pages/calendar/IFaceWidgetCalendarDataService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/systemui/facewidget/pages/calendar/IFaceWidgetCalendarDataService;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataServiceWrapper;-><init>(Lcom/android/systemui/facewidget/pages/calendar/IFaceWidgetCalendarDataService;)V

    iput-object v0, p1, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mFaceWidgetCalendarDataService:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataServiceWrapper;

    .line 108
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$1;->this$0:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;

    invoke-static {p0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->access$000(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "FaceWidgetCalendarManager"

    const-string v0, "FaceWidgetCalendar data service disconnected."

    .line 113
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$1;->this$0:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->mFaceWidgetCalendarDataService:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataServiceWrapper;

    return-void
.end method
