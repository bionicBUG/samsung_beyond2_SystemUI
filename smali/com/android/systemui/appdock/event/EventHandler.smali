.class Lcom/android/systemui/appdock/event/EventHandler;
.super Ljava/lang/Object;
.source "EventBus.java"


# instance fields
.field method:Lcom/android/systemui/appdock/event/EventHandlerMethod;

.field priority:I

.field subscriber:Lcom/android/systemui/appdock/event/Subscriber;


# direct methods
.method constructor <init>(Lcom/android/systemui/appdock/event/Subscriber;Lcom/android/systemui/appdock/event/EventHandlerMethod;I)V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/android/systemui/appdock/event/EventHandler;->subscriber:Lcom/android/systemui/appdock/event/Subscriber;

    .line 77
    iput-object p2, p0, Lcom/android/systemui/appdock/event/EventHandler;->method:Lcom/android/systemui/appdock/event/EventHandlerMethod;

    .line 78
    iput p3, p0, Lcom/android/systemui/appdock/event/EventHandler;->priority:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/appdock/event/EventHandler;->subscriber:Lcom/android/systemui/appdock/event/Subscriber;

    iget v2, p0, Lcom/android/systemui/appdock/event/EventHandler;->priority:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/appdock/event/Subscriber;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/appdock/event/EventHandler;->method:Lcom/android/systemui/appdock/event/EventHandlerMethod;

    invoke-virtual {p0}, Lcom/android/systemui/appdock/event/EventHandlerMethod;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
