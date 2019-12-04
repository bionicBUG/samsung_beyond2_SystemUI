.class Lcom/android/systemui/appdock/event/EventBus$5;
.super Ljava/lang/Object;
.source "EventBus.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/appdock/event/EventBus;->queueEvent(Lcom/android/systemui/appdock/event/EventBus$Event;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/appdock/event/EventBus;

.field final synthetic val$event:Lcom/android/systemui/appdock/event/EventBus$Event;


# direct methods
.method constructor <init>(Lcom/android/systemui/appdock/event/EventBus;Lcom/android/systemui/appdock/event/EventBus$Event;)V
    .locals 0

    .line 779
    iput-object p1, p0, Lcom/android/systemui/appdock/event/EventBus$5;->this$0:Lcom/android/systemui/appdock/event/EventBus;

    iput-object p2, p0, Lcom/android/systemui/appdock/event/EventBus$5;->val$event:Lcom/android/systemui/appdock/event/EventBus$Event;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 782
    iget-object p0, p0, Lcom/android/systemui/appdock/event/EventBus$5;->val$event:Lcom/android/systemui/appdock/event/EventBus$Event;

    invoke-virtual {p0}, Lcom/android/systemui/appdock/event/EventBus$Event;->onPostDispatch()V

    return-void
.end method
