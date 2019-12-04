.class public final synthetic Lcom/samsung/android/systemui/minimizecontainer/-$$Lambda$BubbleContainerView$GnmnTc4up-PEM9JDEaijeG0xoC8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final synthetic f$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/-$$Lambda$BubbleContainerView$GnmnTc4up-PEM9JDEaijeG0xoC8;->f$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/-$$Lambda$BubbleContainerView$GnmnTc4up-PEM9JDEaijeG0xoC8;->f$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->lambda$initListeners$4$BubbleContainerView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
