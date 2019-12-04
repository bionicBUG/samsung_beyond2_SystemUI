.class Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider$1;
.super Landroid/app/UserSwitchObserver;
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
.method constructor <init>(Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider$1;->this$0:Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;

    invoke-direct {p0}, Landroid/app/UserSwitchObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserSwitchComplete(I)V
    .locals 2

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUserSwitchComplete "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExternalClockProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider$1;->this$0:Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;

    invoke-static {v0, p1}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->access$100(Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;I)Landroid/content/Context;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->access$002(Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;Landroid/content/Context;)Landroid/content/Context;

    .line 174
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider$1;->this$0:Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;

    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->invalidCachedClockType()V

    return-void
.end method
