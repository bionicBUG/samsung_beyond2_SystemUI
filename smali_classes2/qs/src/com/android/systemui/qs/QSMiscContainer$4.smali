.class Lqs/src/com/android/systemui/qs/QSMiscContainer$4;
.super Ljava/lang/Object;
.source "QSMiscContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqs/src/com/android/systemui/qs/QSMiscContainer;->onClick(Landroid/view/View;)V
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

    .line 460
    iput-object p1, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer$4;->this$0:Lqs/src/com/android/systemui/qs/QSMiscContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 463
    iget-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer$4;->this$0:Lqs/src/com/android/systemui/qs/QSMiscContainer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lqs/src/com/android/systemui/qs/QSMiscContainer;->access$600(Lqs/src/com/android/systemui/qs/QSMiscContainer;Z)V

    .line 464
    iget-object p0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer$4;->this$0:Lqs/src/com/android/systemui/qs/QSMiscContainer;

    invoke-static {p0}, Lqs/src/com/android/systemui/qs/QSMiscContainer;->access$700(Lqs/src/com/android/systemui/qs/QSMiscContainer;)V

    return-void
.end method
