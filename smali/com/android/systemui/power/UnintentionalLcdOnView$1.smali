.class Lcom/android/systemui/power/UnintentionalLcdOnView$1;
.super Ljava/lang/Object;
.source "UnintentionalLcdOnView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/power/UnintentionalLcdOnView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/UnintentionalLcdOnView;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/UnintentionalLcdOnView;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView$1;->this$0:Lcom/android/systemui/power/UnintentionalLcdOnView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 p1, 0x1

    .line 119
    :try_start_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_2

    if-eq v0, p1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 p2, 0x6

    if-eq v0, p2, :cond_1

    goto :goto_0

    .line 124
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView$1;->this$0:Lcom/android/systemui/power/UnintentionalLcdOnView;

    invoke-static {p0, p2}, Lcom/android/systemui/power/UnintentionalLcdOnView;->access$100(Lcom/android/systemui/power/UnintentionalLcdOnView;Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 128
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView$1;->this$0:Lcom/android/systemui/power/UnintentionalLcdOnView;

    invoke-static {p0}, Lcom/android/systemui/power/UnintentionalLcdOnView;->access$200(Lcom/android/systemui/power/UnintentionalLcdOnView;)V

    goto :goto_0

    .line 121
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView$1;->this$0:Lcom/android/systemui/power/UnintentionalLcdOnView;

    invoke-static {p0, p2}, Lcom/android/systemui/power/UnintentionalLcdOnView;->access$000(Lcom/android/systemui/power/UnintentionalLcdOnView;Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p2, "PowerUI.UnintentionalLcdOnView"

    const-string v0, "Caught Exception In Touch Event"

    .line 132
    invoke-static {p2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return p1
.end method
