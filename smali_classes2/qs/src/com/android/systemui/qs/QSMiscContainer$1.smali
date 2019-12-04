.class Lqs/src/com/android/systemui/qs/QSMiscContainer$1;
.super Ljava/lang/Object;
.source "QSMiscContainer.java"

# interfaces
.implements Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqs/src/com/android/systemui/qs/QSMiscContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lqs/src/com/android/systemui/qs/QSMiscContainer;


# direct methods
.method constructor <init>(Lqs/src/com/android/systemui/qs/QSMiscContainer;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer$1;->this$0:Lqs/src/com/android/systemui/qs/QSMiscContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenTurnedOff()V
    .locals 2

    .line 141
    iget-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer$1;->this$0:Lqs/src/com/android/systemui/qs/QSMiscContainer;

    invoke-static {v0}, Lqs/src/com/android/systemui/qs/QSMiscContainer;->access$000(Lqs/src/com/android/systemui/qs/QSMiscContainer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer$1;->this$0:Lqs/src/com/android/systemui/qs/QSMiscContainer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lqs/src/com/android/systemui/qs/QSMiscContainer;->access$002(Lqs/src/com/android/systemui/qs/QSMiscContainer;Z)Z

    .line 143
    iget-object p0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer$1;->this$0:Lqs/src/com/android/systemui/qs/QSMiscContainer;

    invoke-static {p0}, Lqs/src/com/android/systemui/qs/QSMiscContainer;->access$100(Lqs/src/com/android/systemui/qs/QSMiscContainer;)V

    :cond_0
    return-void
.end method
