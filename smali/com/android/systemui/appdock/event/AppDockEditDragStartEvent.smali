.class public Lcom/android/systemui/appdock/event/AppDockEditDragStartEvent;
.super Lcom/android/systemui/appdock/event/EventBus$Event;
.source "AppDockEditDragStartEvent.java"


# instance fields
.field public final info:Lcom/android/systemui/appdock/model/AppDockItemInfo;

.field public final x:I

.field public final y:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/appdock/model/AppDockItemInfo;II)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/android/systemui/appdock/event/EventBus$Event;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/android/systemui/appdock/event/AppDockEditDragStartEvent;->info:Lcom/android/systemui/appdock/model/AppDockItemInfo;

    .line 11
    iput p2, p0, Lcom/android/systemui/appdock/event/AppDockEditDragStartEvent;->x:I

    .line 12
    iput p3, p0, Lcom/android/systemui/appdock/event/AppDockEditDragStartEvent;->y:I

    return-void
.end method
