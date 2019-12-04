.class Lcom/android/systemui/appdock/event/EventBus$4;
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

.field final synthetic val$eventHandler:Lcom/android/systemui/appdock/event/EventHandler;


# direct methods
.method constructor <init>(Lcom/android/systemui/appdock/event/EventBus;Lcom/android/systemui/appdock/event/EventHandler;Lcom/android/systemui/appdock/event/EventBus$Event;)V
    .locals 0

    .line 764
    iput-object p1, p0, Lcom/android/systemui/appdock/event/EventBus$4;->this$0:Lcom/android/systemui/appdock/event/EventBus;

    iput-object p2, p0, Lcom/android/systemui/appdock/event/EventBus$4;->val$eventHandler:Lcom/android/systemui/appdock/event/EventHandler;

    iput-object p3, p0, Lcom/android/systemui/appdock/event/EventBus$4;->val$event:Lcom/android/systemui/appdock/event/EventBus$Event;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 767
    iget-object v0, p0, Lcom/android/systemui/appdock/event/EventBus$4;->this$0:Lcom/android/systemui/appdock/event/EventBus;

    iget-object v1, p0, Lcom/android/systemui/appdock/event/EventBus$4;->val$eventHandler:Lcom/android/systemui/appdock/event/EventHandler;

    iget-object p0, p0, Lcom/android/systemui/appdock/event/EventBus$4;->val$event:Lcom/android/systemui/appdock/event/EventBus$Event;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/appdock/event/EventBus;->access$000(Lcom/android/systemui/appdock/event/EventBus;Lcom/android/systemui/appdock/event/EventHandler;Lcom/android/systemui/appdock/event/EventBus$Event;)V

    return-void
.end method
