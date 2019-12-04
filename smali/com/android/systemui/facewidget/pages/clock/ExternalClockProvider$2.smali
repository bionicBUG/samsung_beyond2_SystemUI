.class Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider$2;
.super Landroid/database/ContentObserver;
.source "ExternalClockProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;


# direct methods
.method constructor <init>(Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;Landroid/os/Handler;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider$2;->this$0:Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 197
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "changed uri: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ExternalClockProvider"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider$2;->this$0:Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;

    invoke-static {p0, p2}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->access$200(Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;Landroid/net/Uri;)V

    return-void
.end method
