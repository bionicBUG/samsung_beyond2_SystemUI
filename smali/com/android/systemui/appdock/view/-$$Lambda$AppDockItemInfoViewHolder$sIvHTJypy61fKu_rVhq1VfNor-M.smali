.class public final synthetic Lcom/android/systemui/appdock/view/-$$Lambda$AppDockItemInfoViewHolder$sIvHTJypy61fKu_rVhq1VfNor-M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/appdock/view/-$$Lambda$AppDockItemInfoViewHolder$sIvHTJypy61fKu_rVhq1VfNor-M;->f$0:Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/appdock/view/-$$Lambda$AppDockItemInfoViewHolder$sIvHTJypy61fKu_rVhq1VfNor-M;->f$0:Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->lambda$updateView$2$AppDockItemInfoViewHolder(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
