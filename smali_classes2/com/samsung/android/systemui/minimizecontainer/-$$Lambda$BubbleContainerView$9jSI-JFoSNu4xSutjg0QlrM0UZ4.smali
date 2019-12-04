.class public final synthetic Lcom/samsung/android/systemui/minimizecontainer/-$$Lambda$BubbleContainerView$9jSI-JFoSNu4xSutjg0QlrM0UZ4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private final synthetic f$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/-$$Lambda$BubbleContainerView$9jSI-JFoSNu4xSutjg0QlrM0UZ4;->f$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/-$$Lambda$BubbleContainerView$9jSI-JFoSNu4xSutjg0QlrM0UZ4;->f$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;

    invoke-virtual {p0, p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->lambda$initListeners$5$BubbleContainerView(Landroid/view/View;)Z

    move-result p0

    return p0
.end method
